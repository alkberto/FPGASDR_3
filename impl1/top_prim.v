// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Sat Dec 15 21:13:44 2018
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, MixerOutSin, 
            XIn, XOut, RFIn, DiffIn, DiffOut, PWMOut, sinGen, 
            sin_out, CIC_out_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(2[8:11])
    input i_Rx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    output o_Tx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    output o_Rx_DV;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    output [7:0]MYLED;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    output [7:0]MixerOutSin;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    input XIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[8:11])
    output XOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[9:13])
    input RFIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:13])
    input DiffIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[8:14])
    output DiffOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[9:16])
    output PWMOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:15])
    output sinGen;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[9:15])
    output sin_out;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(18[9:16])
    output CIC_out_clk;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[9:20])
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    
    wire GND_net, VCC_net, sin_out_c, MYLED_c_5, MixerOutSin_c_7, 
        MixerOutSin_c_6, MixerOutSin_c_5, MixerOutSin_c_4, MixerOutSin_c_3, 
        MixerOutSin_c_2, MixerOutSin_c_1, MixerOutSin_c_0, RFIn_c, DiffOut_c, 
        PWMOut_c, CIC_out_clk_c;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(31[13:24])
    wire [7:0]LOSine;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(32[12:18])
    
    wire cos_out_N_66, n274, n275, MYLED_c_4, MYLED_c_3, MYLED_c_2;
    wire [7:0]DataInNoSign_7__N_2364;
    
    VHI i2 (.Z(VCC_net));
    nco_sig nco (.GND_net(GND_net), .osc_clk(osc_clk), .\phase_accum[63] (phase_accum[63]), 
            .sin_out_c(sin_out_c), .\phase_accum[62] (phase_accum[62]), 
            .cos_out_N_66(cos_out_N_66), .\phase_accum[61] (phase_accum[61]), 
            .\phase_accum[60] (phase_accum[60]), .\phase_accum[59] (phase_accum[59]), 
            .\phase_accum[58] (phase_accum[58]), .\phase_accum[57] (phase_accum[57]), 
            .\phase_accum[56] (phase_accum[56])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(74[10] 80[2])
    Mixer Mixer1 (.MixerOutSin_c_0(MixerOutSin_c_0), .osc_clk(osc_clk), 
          .LOSine({LOSine}), .DiffOut_c(DiffOut_c), .RFIn_c(RFIn_c), .MixerOutSin_c_1(MixerOutSin_c_1), 
          .MixerOutSin_c_2(MixerOutSin_c_2), .MixerOutSin_c_3(MixerOutSin_c_3), 
          .MixerOutSin_c_4(MixerOutSin_c_4), .MixerOutSin_c_5(MixerOutSin_c_5), 
          .MixerOutSin_c_6(MixerOutSin_c_6), .MixerOutSin_c_7(MixerOutSin_c_7), 
          .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(102[7] 110[2])
    PWM PWM1 (.MYLED_c_5(MYLED_c_5), .osc_clk(osc_clk), .\DataInNoSign_7__N_2364[0] (DataInNoSign_7__N_2364[0]), 
        .PWMOut_c(PWMOut_c), .GND_net(GND_net), .\DataInNoSign_7__N_2364[1] (DataInNoSign_7__N_2364[1]), 
        .MYLED_c_2(MYLED_c_2), .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), 
        .n275(n275), .n274(n274)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(122[5] 126[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB o_Rx_DV_pad (.I(GND_net), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    OB o_Tx_Serial_pad (.I(GND_net), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB o_Rx_Byte_pad_7 (.I(GND_net), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_6 (.I(GND_net), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_5 (.I(GND_net), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_4 (.I(GND_net), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_3 (.I(GND_net), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_2 (.I(GND_net), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_1 (.I(GND_net), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_0 (.I(GND_net), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB MYLED_pad_7 (.I(sin_out_c), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_6 (.I(cos_out_N_66), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_5 (.I(MYLED_c_5), .O(MYLED[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_4 (.I(n274), .O(MYLED[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_3 (.I(n275), .O(MYLED[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_2 (.I(MYLED_c_4), .O(MYLED[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_1 (.I(MYLED_c_3), .O(MYLED[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_0 (.I(MYLED_c_2), .O(MYLED[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MixerOutSin_pad_7 (.I(MixerOutSin_c_7), .O(MixerOutSin[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_6 (.I(MixerOutSin_c_6), .O(MixerOutSin[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_5 (.I(MixerOutSin_c_5), .O(MixerOutSin[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_4 (.I(MixerOutSin_c_4), .O(MixerOutSin[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_3 (.I(MixerOutSin_c_3), .O(MixerOutSin[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_2 (.I(MixerOutSin_c_2), .O(MixerOutSin[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_1 (.I(MixerOutSin_c_1), .O(MixerOutSin[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_0 (.I(MixerOutSin_c_0), .O(MixerOutSin[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB XOut_pad (.I(GND_net), .O(XOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[9:13])
    OB DiffOut_pad (.I(DiffOut_c), .O(DiffOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[9:16])
    OB PWMOut_pad (.I(PWMOut_c), .O(PWMOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:15])
    OB sinGen_pad (.I(GND_net), .O(sinGen));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[9:15])
    OB sin_out_pad (.I(sin_out_c), .O(sin_out));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(18[9:16])
    OB CIC_out_clk_pad (.I(CIC_out_clk_c), .O(CIC_out_clk));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[9:20])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[8:11])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:13])
    \CIC(width=68)  CIC1 (.osc_clk(osc_clk), .CIC_out_clk_c(CIC_out_clk_c), 
            .\DataInNoSign_7__N_2364[0] (DataInNoSign_7__N_2364[0]), .MixerOutSin_c_0(MixerOutSin_c_0), 
            .GND_net(GND_net), .\DataInNoSign_7__N_2364[1] (DataInNoSign_7__N_2364[1]), 
            .MYLED_c_2(MYLED_c_2), .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), 
            .n275(n275), .n274(n274), .MYLED_c_5(MYLED_c_5), .MixerOutSin_c_7(MixerOutSin_c_7), 
            .MixerOutSin_c_6(MixerOutSin_c_6), .MixerOutSin_c_4(MixerOutSin_c_4), 
            .MixerOutSin_c_5(MixerOutSin_c_5), .MixerOutSin_c_2(MixerOutSin_c_2), 
            .MixerOutSin_c_3(MixerOutSin_c_3), .MixerOutSin_c_1(MixerOutSin_c_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(112[20] 119[2])
    SinCos SinCos1 (.osc_clk(osc_clk), .VCC_net(VCC_net), .GND_net(GND_net), 
           .LOSine({LOSine}), .\phase_accum[63] (phase_accum[63]), .\phase_accum[62] (phase_accum[62]), 
           .\phase_accum[61] (phase_accum[61]), .\phase_accum[60] (phase_accum[60]), 
           .\phase_accum[59] (phase_accum[59]), .\phase_accum[58] (phase_accum[58]), 
           .\phase_accum[57] (phase_accum[57]), .\phase_accum[56] (phase_accum[56])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    GSR GSR_INST (.GSR(VCC_net));
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(128[5] 130[2])
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (GND_net, osc_clk, \phase_accum[63] , sin_out_c, \phase_accum[62] , 
            cos_out_N_66, \phase_accum[61] , \phase_accum[60] , \phase_accum[59] , 
            \phase_accum[58] , \phase_accum[57] , \phase_accum[56] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input osc_clk;
    output \phase_accum[63] ;
    output sin_out_c;
    output \phase_accum[62] ;
    output cos_out_N_66;
    output \phase_accum[61] ;
    output \phase_accum[60] ;
    output \phase_accum[59] ;
    output \phase_accum[58] ;
    output \phase_accum[57] ;
    output \phase_accum[56] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    
    wire n381;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(33[19:30])
    wire [63:0]phase_accum_63__N_1;
    
    wire n382, n380, n379, n378, n377, n376, n375, n374, n373, 
        n372, n371, n370, n369, n368, n367, n366, n365, n364, 
        n363, n362, n361, n360, n359, n358, n388, n387, n386, 
        n385, n384, n383, n357;
    
    CCU2D phase_accum_63__I_0_12_51 (.A0(phase_accum[49]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[50]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n381), .COUT(n382), .S0(phase_accum_63__N_1[49]), 
          .S1(phase_accum_63__N_1[50]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_51.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_51.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_51.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_51.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_49 (.A0(phase_accum[47]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[48]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n380), .COUT(n381), .S0(phase_accum_63__N_1[47]), 
          .S1(phase_accum_63__N_1[48]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_49.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_49.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_49.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_49.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_47 (.A0(phase_accum[45]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[46]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n379), .COUT(n380), .S0(phase_accum_63__N_1[45]), 
          .S1(phase_accum_63__N_1[46]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_47.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_47.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_47.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_47.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_45 (.A0(phase_accum[43]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[44]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n378), .COUT(n379), .S0(phase_accum_63__N_1[43]), 
          .S1(phase_accum_63__N_1[44]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_45.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_45.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_45.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[41]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[42]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n377), .COUT(n378), .S0(phase_accum_63__N_1[41]), 
          .S1(phase_accum_63__N_1[42]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[39]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[40]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n376), .COUT(n377), .S0(phase_accum_63__N_1[39]), 
          .S1(phase_accum_63__N_1[40]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[37]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[38]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n375), .COUT(n376), .S0(phase_accum_63__N_1[37]), 
          .S1(phase_accum_63__N_1[38]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[35]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[36]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n374), .COUT(n375), .S0(phase_accum_63__N_1[35]), 
          .S1(phase_accum_63__N_1[36]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[33]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[34]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n373), .COUT(n374), .S0(phase_accum_63__N_1[33]), 
          .S1(phase_accum_63__N_1[34]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[32]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n372), .COUT(n373), .S0(phase_accum_63__N_1[31]), 
          .S1(phase_accum_63__N_1[32]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i2 (.D(phase_accum_63__N_1[2]), .CK(osc_clk), .Q(phase_accum[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i2.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n371), .COUT(n372), .S0(phase_accum_63__N_1[29]), 
          .S1(phase_accum_63__N_1[30]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n370), .COUT(n371), .S0(phase_accum_63__N_1[27]), 
          .S1(phase_accum_63__N_1[28]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n369), .COUT(n370), .S0(phase_accum_63__N_1[25]), 
          .S1(phase_accum_63__N_1[26]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n368), .COUT(n369), .S0(phase_accum_63__N_1[23]), 
          .S1(phase_accum_63__N_1[24]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n367), .COUT(n368), .S0(phase_accum_63__N_1[21]), 
          .S1(phase_accum_63__N_1[22]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n366), .COUT(n367), .S0(phase_accum_63__N_1[19]), 
          .S1(phase_accum_63__N_1[20]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n365), .COUT(n366), .S0(phase_accum_63__N_1[17]), 
          .S1(phase_accum_63__N_1[18]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n364), .COUT(n365), .S0(phase_accum_63__N_1[15]), 
          .S1(phase_accum_63__N_1[16]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n363), .COUT(n364), .S0(phase_accum_63__N_1[13]), 
          .S1(phase_accum_63__N_1[14]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n362), .COUT(n363), .S0(phase_accum_63__N_1[11]), 
          .S1(phase_accum_63__N_1[12]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n361), .COUT(n362), .S0(phase_accum_63__N_1[9]), 
          .S1(phase_accum_63__N_1[10]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n360), .COUT(n361), .S0(phase_accum_63__N_1[7]), 
          .S1(phase_accum_63__N_1[8]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n359), .COUT(n360), .S0(phase_accum_63__N_1[5]), 
          .S1(phase_accum_63__N_1[6]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n358), .COUT(n359), .S0(phase_accum_63__N_1[3]), 
          .S1(phase_accum_63__N_1[4]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    LUT4 phase_accum_63__I_0_13_1_lut (.A(\phase_accum[63] ), .Z(sin_out_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    LUT4 phase_accum_63__I_0_2_lut (.A(\phase_accum[63] ), .B(\phase_accum[62] ), 
         .Z(cos_out_N_66)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(37[19:54])
    defparam phase_accum_63__I_0_2_lut.init = 16'h9999;
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(\phase_accum[63] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(\phase_accum[62] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(\phase_accum[61] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(\phase_accum[60] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(\phase_accum[59] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(\phase_accum[58] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(\phase_accum[57] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(\phase_accum[56] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i21 (.D(phase_accum_63__N_1[21]), .CK(osc_clk), 
            .Q(phase_accum[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i21.GSR = "ENABLED";
    FD1S3AX phase_accum_i20 (.D(phase_accum_63__N_1[20]), .CK(osc_clk), 
            .Q(phase_accum[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i20.GSR = "ENABLED";
    FD1S3AX phase_accum_i19 (.D(phase_accum_63__N_1[19]), .CK(osc_clk), 
            .Q(phase_accum[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i19.GSR = "ENABLED";
    FD1S3AX phase_accum_i18 (.D(phase_accum_63__N_1[18]), .CK(osc_clk), 
            .Q(phase_accum[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i18.GSR = "ENABLED";
    FD1S3AX phase_accum_i17 (.D(phase_accum_63__N_1[17]), .CK(osc_clk), 
            .Q(phase_accum[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i17.GSR = "ENABLED";
    FD1S3AX phase_accum_i16 (.D(phase_accum_63__N_1[16]), .CK(osc_clk), 
            .Q(phase_accum[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i16.GSR = "ENABLED";
    FD1S3AX phase_accum_i15 (.D(phase_accum_63__N_1[15]), .CK(osc_clk), 
            .Q(phase_accum[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i15.GSR = "ENABLED";
    FD1S3AX phase_accum_i14 (.D(phase_accum_63__N_1[14]), .CK(osc_clk), 
            .Q(phase_accum[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i14.GSR = "ENABLED";
    FD1S3AX phase_accum_i13 (.D(phase_accum_63__N_1[13]), .CK(osc_clk), 
            .Q(phase_accum[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i13.GSR = "ENABLED";
    FD1S3AX phase_accum_i12 (.D(phase_accum_63__N_1[12]), .CK(osc_clk), 
            .Q(phase_accum[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i12.GSR = "ENABLED";
    FD1S3AX phase_accum_i11 (.D(phase_accum_63__N_1[11]), .CK(osc_clk), 
            .Q(phase_accum[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i11.GSR = "ENABLED";
    FD1S3AX phase_accum_i10 (.D(phase_accum_63__N_1[10]), .CK(osc_clk), 
            .Q(phase_accum[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i10.GSR = "ENABLED";
    FD1S3AX phase_accum_i9 (.D(phase_accum_63__N_1[9]), .CK(osc_clk), .Q(phase_accum[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i9.GSR = "ENABLED";
    FD1S3AX phase_accum_i8 (.D(phase_accum_63__N_1[8]), .CK(osc_clk), .Q(phase_accum[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i8.GSR = "ENABLED";
    FD1S3AX phase_accum_i7 (.D(phase_accum_63__N_1[7]), .CK(osc_clk), .Q(phase_accum[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i7.GSR = "ENABLED";
    FD1S3AX phase_accum_i6 (.D(phase_accum_63__N_1[6]), .CK(osc_clk), .Q(phase_accum[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i6.GSR = "ENABLED";
    FD1S3AX phase_accum_i5 (.D(phase_accum_63__N_1[5]), .CK(osc_clk), .Q(phase_accum[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i5.GSR = "ENABLED";
    FD1S3AX phase_accum_i4 (.D(phase_accum_63__N_1[4]), .CK(osc_clk), .Q(phase_accum[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i4.GSR = "ENABLED";
    FD1S3AX phase_accum_i3 (.D(phase_accum_63__N_1[3]), .CK(osc_clk), .Q(phase_accum[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i3.GSR = "ENABLED";
    FD1S3AX phase_accum_i1 (.D(phase_accum_63__N_1[1]), .CK(osc_clk), .Q(phase_accum[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i1.GSR = "ENABLED";
    FD1S3AX phase_accum_i0 (.D(phase_accum_63__N_1[0]), .CK(osc_clk), .Q(phase_accum[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=74, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i0.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_65 (.A0(\phase_accum[63] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n388), .S0(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_65.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_65.INIT1 = 16'h0000;
    defparam phase_accum_63__I_0_12_65.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_65.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_63 (.A0(\phase_accum[61] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[62] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n387), .COUT(n388), .S0(phase_accum_63__N_1[61]), 
          .S1(phase_accum_63__N_1[62]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_63.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_63.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_63.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_63.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_61 (.A0(\phase_accum[59] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[60] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n386), .COUT(n387), .S0(phase_accum_63__N_1[59]), 
          .S1(phase_accum_63__N_1[60]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_61.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_61.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_61.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_61.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_59 (.A0(\phase_accum[57] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[58] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n385), .COUT(n386), .S0(phase_accum_63__N_1[57]), 
          .S1(phase_accum_63__N_1[58]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_59.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_59.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_59.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_59.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_57 (.A0(phase_accum[55]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[56] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n384), .COUT(n385), .S0(phase_accum_63__N_1[55]), 
          .S1(phase_accum_63__N_1[56]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_57.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_57.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_57.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_57.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_55 (.A0(phase_accum[53]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[54]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n383), .COUT(n384), .S0(phase_accum_63__N_1[53]), 
          .S1(phase_accum_63__N_1[54]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_55.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_55.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_55.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_55.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_53 (.A0(phase_accum[51]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[52]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n382), .COUT(n383), .S0(phase_accum_63__N_1[51]), 
          .S1(phase_accum_63__N_1[52]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_53.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_53.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_53.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_53.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n357), .S1(phase_accum_63__N_1[0]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n357), .COUT(n358), .S0(phase_accum_63__N_1[1]), 
          .S1(phase_accum_63__N_1[2]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (MixerOutSin_c_0, osc_clk, LOSine, DiffOut_c, RFIn_c, 
            MixerOutSin_c_1, MixerOutSin_c_2, MixerOutSin_c_3, MixerOutSin_c_4, 
            MixerOutSin_c_5, MixerOutSin_c_6, MixerOutSin_c_7, GND_net) /* synthesis syn_module_defined=1 */ ;
    output MixerOutSin_c_0;
    input osc_clk;
    input [7:0]LOSine;
    output DiffOut_c;
    input RFIn_c;
    output MixerOutSin_c_1;
    output MixerOutSin_c_2;
    output MixerOutSin_c_3;
    output MixerOutSin_c_4;
    output MixerOutSin_c_5;
    output MixerOutSin_c_6;
    output MixerOutSin_c_7;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    wire [7:0]MixerOutSin_7__N_67;
    wire [7:0]MixerOutSin_7__N_83;
    
    wire RFInR1, n737, n736, n735, n734;
    
    FD1S3AX MixerOutSin_i1 (.D(MixerOutSin_7__N_67[0]), .CK(osc_clk), .Q(MixerOutSin_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i1.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i8_3_lut (.A(LOSine[7]), .B(MixerOutSin_7__N_83[7]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i8_3_lut.init = 16'hcaca;
    FD1S3AY RFInR_14 (.D(RFInR1), .CK(osc_clk), .Q(DiffOut_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR_14.GSR = "ENABLED";
    FD1S3AY RFInR1_13 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR1_13.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i2_3_lut (.A(LOSine[1]), .B(MixerOutSin_7__N_83[1]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i3_3_lut (.A(LOSine[2]), .B(MixerOutSin_7__N_83[2]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i4_3_lut (.A(LOSine[3]), .B(MixerOutSin_7__N_83[3]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i5_3_lut (.A(LOSine[4]), .B(MixerOutSin_7__N_83[4]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i6_3_lut (.A(LOSine[5]), .B(MixerOutSin_7__N_83[5]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i1_3_lut (.A(LOSine[0]), .B(MixerOutSin_7__N_83[0]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i7_3_lut (.A(LOSine[6]), .B(MixerOutSin_7__N_83[6]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i7_3_lut.init = 16'hcaca;
    FD1S3AX MixerOutSin_i2 (.D(MixerOutSin_7__N_67[1]), .CK(osc_clk), .Q(MixerOutSin_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i2.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i3 (.D(MixerOutSin_7__N_67[2]), .CK(osc_clk), .Q(MixerOutSin_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i3.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i4 (.D(MixerOutSin_7__N_67[3]), .CK(osc_clk), .Q(MixerOutSin_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i4.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i5 (.D(MixerOutSin_7__N_67[4]), .CK(osc_clk), .Q(MixerOutSin_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i5.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i6 (.D(MixerOutSin_7__N_67[5]), .CK(osc_clk), .Q(MixerOutSin_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i6.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[6]), .CK(osc_clk), .Q(MixerOutSin_c_6)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i8 (.D(MixerOutSin_7__N_67[7]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i8.GSR = "ENABLED";
    CCU2D unary_minus_6_add_3_9 (.A0(LOSine[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n737), .S0(MixerOutSin_7__N_83[7]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_9.INIT1 = 16'h0000;
    defparam unary_minus_6_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_9.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_7 (.A0(LOSine[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n736), .COUT(n737), .S0(MixerOutSin_7__N_83[5]), 
          .S1(MixerOutSin_7__N_83[6]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_7.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_5 (.A0(LOSine[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n735), .COUT(n736), .S0(MixerOutSin_7__N_83[3]), 
          .S1(MixerOutSin_7__N_83[4]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_5.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_3 (.A0(LOSine[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n734), .COUT(n735), .S0(MixerOutSin_7__N_83[1]), 
          .S1(MixerOutSin_7__N_83[2]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_3.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n734), .S1(MixerOutSin_7__N_83[0]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_6_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_6_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (MYLED_c_5, osc_clk, \DataInNoSign_7__N_2364[0] , PWMOut_c, 
            GND_net, \DataInNoSign_7__N_2364[1] , MYLED_c_2, MYLED_c_3, 
            MYLED_c_4, n275, n274) /* synthesis syn_module_defined=1 */ ;
    input MYLED_c_5;
    input osc_clk;
    input \DataInNoSign_7__N_2364[0] ;
    output PWMOut_c;
    input GND_net;
    input \DataInNoSign_7__N_2364[1] ;
    input MYLED_c_2;
    input MYLED_c_3;
    input MYLED_c_4;
    input n275;
    input n274;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    wire [7:0]counter;   // c:/users/user/lattice/fpgasdr/pwm.v(7[11:18])
    
    wire n14, n10, osc_clk_enable_643;
    wire [7:0]n156;
    
    wire n869, n868, n866, n801, n832;
    wire [7:0]DataInNoSign;   // c:/users/user/lattice/fpgasdr/pwm.v(9[11:23])
    
    wire PWMOut_N_2373;
    wire [7:0]n37;
    
    wire n10_adj_2376, n12, n4, n867, n815, n812, n827, n741, 
        n740, n739, n738, n6, n826;
    
    LUT4 i299_4_lut (.A(counter[0]), .B(n14), .C(n10), .D(counter[6]), 
         .Z(osc_clk_enable_643)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i299_4_lut.init = 16'h0001;
    LUT4 i122_1_lut (.A(MYLED_c_5), .Z(n156[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(27[4:33])
    defparam i122_1_lut.init = 16'h5555;
    LUT4 i6_4_lut (.A(counter[3]), .B(counter[1]), .C(counter[5]), .D(counter[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i295_4_lut (.A(n869), .B(n868), .C(n866), .D(n801), .Z(n832)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i295_4_lut.init = 16'hefee;
    FD1P3AX DataInNoSign_i0_i0 (.D(\DataInNoSign_7__N_2364[0] ), .SP(osc_clk_enable_643), 
            .CK(osc_clk), .Q(DataInNoSign[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i0.GSR = "ENABLED";
    FD1S3AX PWMOut_15 (.D(PWMOut_N_2373), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    FD1S3AX counter_55__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i0.GSR = "ENABLED";
    LUT4 DataInNoSign_7__I_0_i12_3_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), 
         .C(n10_adj_2376), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2_2_lut (.A(counter[2]), .B(counter[4]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 DataInNoSign_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInNoSign[1]), 
         .D(DataInNoSign[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 DataInNoSign_7__I_0_i15_2_lut_rep_4 (.A(DataInNoSign[7]), .B(counter[7]), 
         .Z(n867)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i15_2_lut_rep_4.init = 16'h6666;
    LUT4 i296_2_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), .C(n832), 
         .Z(n815)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i296_2_lut_3_lut.init = 16'hf6f6;
    LUT4 DataInNoSign_7__I_0_i11_2_lut_rep_5 (.A(DataInNoSign[5]), .B(counter[5]), 
         .Z(n868)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i11_2_lut_rep_5.init = 16'h6666;
    LUT4 i265_3_lut_4_lut (.A(DataInNoSign[3]), .B(counter[3]), .C(counter[2]), 
         .D(DataInNoSign[2]), .Z(n801)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i265_3_lut_4_lut.init = 16'h9009;
    LUT4 i290_1_lut_4_lut_4_lut (.A(n867), .B(n812), .C(n12), .D(n4), 
         .Z(n827)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i290_1_lut_4_lut_4_lut.init = 16'h0b4f;
    LUT4 DataInNoSign_7__I_0_i13_2_lut_rep_6 (.A(DataInNoSign[6]), .B(counter[6]), 
         .Z(n869)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i13_2_lut_rep_6.init = 16'h6666;
    CCU2D counter_55_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n741), .S0(n37[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_9.INIT1 = 16'h0000;
    defparam counter_55_add_4_9.INJECT1_0 = "NO";
    defparam counter_55_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n740), .COUT(n741), .S0(n37[5]), .S1(n37[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_55_add_4_7.INJECT1_0 = "NO";
    defparam counter_55_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n739), .COUT(n740), .S0(n37[3]), .S1(n37[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_55_add_4_5.INJECT1_0 = "NO";
    defparam counter_55_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n738), .COUT(n739), .S0(n37[1]), .S1(n37[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_55_add_4_3.INJECT1_0 = "NO";
    defparam counter_55_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n738), .S1(n37[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_1.INIT0 = 16'hF000;
    defparam counter_55_add_4_1.INIT1 = 16'h0555;
    defparam counter_55_add_4_1.INJECT1_0 = "NO";
    defparam counter_55_add_4_1.INJECT1_1 = "NO";
    LUT4 i276_2_lut_3_lut_4_lut (.A(DataInNoSign[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInNoSign[5]), .Z(n812)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i276_2_lut_3_lut_4_lut.init = 16'h9009;
    FD1P3AX DataInNoSign_i0_i1 (.D(\DataInNoSign_7__N_2364[1] ), .SP(osc_clk_enable_643), 
            .CK(osc_clk), .Q(DataInNoSign[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i1.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i2 (.D(MYLED_c_2), .SP(osc_clk_enable_643), 
            .CK(osc_clk), .Q(DataInNoSign[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i2.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i3 (.D(MYLED_c_3), .SP(osc_clk_enable_643), 
            .CK(osc_clk), .Q(DataInNoSign[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i3.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i4 (.D(MYLED_c_4), .SP(osc_clk_enable_643), 
            .CK(osc_clk), .Q(DataInNoSign[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i4.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i5 (.D(n275), .SP(osc_clk_enable_643), .CK(osc_clk), 
            .Q(DataInNoSign[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i5.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i6 (.D(n274), .SP(osc_clk_enable_643), .CK(osc_clk), 
            .Q(DataInNoSign[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i6.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i7 (.D(n156[7]), .SP(osc_clk_enable_643), .CK(osc_clk), 
            .Q(DataInNoSign[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i7.GSR = "ENABLED";
    FD1S3AX counter_55__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i1.GSR = "ENABLED";
    LUT4 DataInNoSign_7__I_0_i10_3_lut_3_lut (.A(DataInNoSign[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10_adj_2376)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 DataInNoSign_7__I_0_i6_3_lut_3_lut (.A(DataInNoSign[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 DataInNoSign_7__I_0_i9_2_lut_rep_3 (.A(DataInNoSign[4]), .B(counter[4]), 
         .Z(n866)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i9_2_lut_rep_3.init = 16'h6666;
    PFUMX DataInNoSign_7__I_0_i16 (.BLUT(n826), .ALUT(n827), .C0(n815), 
          .Z(PWMOut_N_2373)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=126 */ ;
    FD1S3AX counter_55__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i2.GSR = "ENABLED";
    FD1S3AX counter_55__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i3.GSR = "ENABLED";
    FD1S3AX counter_55__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i4.GSR = "ENABLED";
    FD1S3AX counter_55__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i5.GSR = "ENABLED";
    FD1S3AX counter_55__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i6.GSR = "ENABLED";
    FD1S3AX counter_55__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i7.GSR = "ENABLED";
    LUT4 i289_1_lut_3_lut_3_lut (.A(DataInNoSign[4]), .B(counter[4]), .C(n6), 
         .Z(n826)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i289_1_lut_3_lut_3_lut.init = 16'h2b2b;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \CIC(width=68) 
//

module \CIC(width=68)  (osc_clk, CIC_out_clk_c, \DataInNoSign_7__N_2364[0] , 
            MixerOutSin_c_0, GND_net, \DataInNoSign_7__N_2364[1] , MYLED_c_2, 
            MYLED_c_3, MYLED_c_4, n275, n274, MYLED_c_5, MixerOutSin_c_7, 
            MixerOutSin_c_6, MixerOutSin_c_4, MixerOutSin_c_5, MixerOutSin_c_2, 
            MixerOutSin_c_3, MixerOutSin_c_1) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output CIC_out_clk_c;
    output \DataInNoSign_7__N_2364[0] ;
    input MixerOutSin_c_0;
    input GND_net;
    output \DataInNoSign_7__N_2364[1] ;
    output MYLED_c_2;
    output MYLED_c_3;
    output MYLED_c_4;
    output n275;
    output n274;
    output MYLED_c_5;
    input MixerOutSin_c_7;
    input MixerOutSin_c_6;
    input MixerOutSin_c_4;
    input MixerOutSin_c_5;
    input MixerOutSin_c_2;
    input MixerOutSin_c_3;
    input MixerOutSin_c_1;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    wire [15:0]count;   // c:/users/user/lattice/fpgasdr/cic.v(35[12:17])
    
    wire n22, n18, osc_clk_enable_114;
    wire [67:0]d6;   // c:/users/user/lattice/fpgasdr/cic.v(28[24:26])
    
    wire osc_clk_enable_52;
    wire [67:0]n1379;
    wire [67:0]d2;   // c:/users/user/lattice/fpgasdr/cic.v(21[24:26])
    wire [67:0]d2_67__N_1281;
    wire [67:0]d3;   // c:/users/user/lattice/fpgasdr/cic.v(22[24:26])
    wire [67:0]d3_67__N_1349;
    wire [67:0]d4;   // c:/users/user/lattice/fpgasdr/cic.v(23[24:26])
    wire [67:0]d4_67__N_1417;
    wire [67:0]d5;   // c:/users/user/lattice/fpgasdr/cic.v(24[24:26])
    wire [67:0]d5_67__N_1485;
    wire [67:0]d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(15[24:29])
    wire [67:0]d7;   // c:/users/user/lattice/fpgasdr/cic.v(29[24:26])
    wire [67:0]n1448;
    
    wire d_clk_tmp, n312, v_comb;
    wire [67:0]d8;   // c:/users/user/lattice/fpgasdr/cic.v(30[24:26])
    wire [67:0]n1517;
    wire [67:0]d9;   // c:/users/user/lattice/fpgasdr/cic.v(31[24:26])
    wire [67:0]n1586;
    
    wire n20, n14;
    wire [67:0]d_d6;   // c:/users/user/lattice/fpgasdr/cic.v(28[28:32])
    wire [67:0]d_d7;   // c:/users/user/lattice/fpgasdr/cic.v(29[28:32])
    wire [67:0]d_d8;   // c:/users/user/lattice/fpgasdr/cic.v(30[28:32])
    wire [67:0]d_d9;   // c:/users/user/lattice/fpgasdr/cic.v(31[28:32])
    wire [67:0]d10;   // c:/users/user/lattice/fpgasdr/cic.v(32[24:27])
    wire [67:0]d_d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(15[31:38])
    wire [67:0]n1655;
    wire [67:0]d1;   // c:/users/user/lattice/fpgasdr/cic.v(20[24:26])
    wire [67:0]d1_67__N_1213;
    wire [11:0]n53;
    
    wire osc_clk_enable_636, osc_clk_enable_586, osc_clk_enable_536, osc_clk_enable_486, 
        osc_clk_enable_436, osc_clk_enable_286, osc_clk_enable_236, osc_clk_enable_186, 
        osc_clk_enable_136, osc_clk_enable_336, n21, n19, n20_adj_2375, 
        n747, n746, n745, n744, n743, n742, n733, n732, n731, 
        n730, n729, n728, n727, n726, n725, n724, n723, n722, 
        n721, n720, n719, n718, n717, n716, n715, n714, n713, 
        n712, n711, n710, n709, n708, n707, n706, n705, n704, 
        n703, n702, n701, n700, n699, n698, n697, n696, n695, 
        n694, n693, n692, n691, n690, n689, n688, n687, n686, 
        n685, n684, n683, n682, n681, n680, n679, n678, n677, 
        n676, n675, n674, n673, n672, n671, n670, n669, n668, 
        n667, n666, n665, n664, n663, n662, n661, n660, n659, 
        n658, n657, n656, n655, n654, n653, n652, n651, n650, 
        n649, n648, n647, n646, n645, n644, n643, n642, n641, 
        n640, n639, n638, n637, n636, n635, n634, n633, n632, 
        n631, n630, n629, n628, n627, n626, n625, n624, n623, 
        n622, n621, n620, n619, n618, n617, n616, n615, n614, 
        n613, n612, n611, n610, n609, n608, n607, n606, n605, 
        n604, n603, n602, n601, n600, n599, n598, n597, n596, 
        n595, n594, n593, n592, n591, n590, n589, n588, n587, 
        n586, n585, n584, n583, n582, n581, n580, n579, n578, 
        n577, n576, n575, n574, n573, n572, n571, n570, n569, 
        n568, n567, n566, n565, n564, n562, n561, n560, n559, 
        n558, n557, n556, n555, n554, n553, n552, n551, n550, 
        n549, n548, n547, n546, n545, n544, n543, n542, n541, 
        n540, n539, n538, n537, n536, n535, n534, n533, n532, 
        n531, n530, n527, n526, n525, n524, n523, n522, n521, 
        n520, n519, n518, n517, n516, n515, n514, n513, n512, 
        n511, n510, n509, n508, n507, n506, n505, n504, n503, 
        n502, n501, n500, n499, n498, n497, n496, n495, n492, 
        n491, n490, n489, n488, n487, n486, n485, n484, n483, 
        n482, n481, n480, n479, n478, n477, n476, n475, n474, 
        n473, n472, n471, n470, n469, n468, n467, n466, d_clk_tmp_N_2345, 
        osc_clk_enable_386, n465, n464, n463, n462, n461, n460, 
        n457, n456, n455, n454, n453, n452, n451, n450, n449, 
        n448, n447, n446, n445, n444, n443, n442, n441, n440, 
        n439, n438, n437, n436, n435, n434, n433, n432, n431, 
        n430, n429, n428, n427, n426, n425, n422, n421, n420, 
        n419, n418, n417, n416, n415, n414, n413, n412, n411, 
        n410, n409, n408, n407, n406, n405, n404, n403, n402, 
        n401, n400, n399, n398, n397, n396, n395, n394, n393, 
        n392, n391, n390;
    
    LUT4 i11_4_lut_rep_21 (.A(count[9]), .B(n22), .C(n18), .D(count[1]), 
         .Z(osc_clk_enable_114)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut_rep_21.init = 16'h8000;
    FD1P3AX d6_i0_i0 (.D(n1379[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    FD1S3AX d2_i0 (.D(d2_67__N_1281[0]), .CK(osc_clk), .Q(d2[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i0.GSR = "ENABLED";
    FD1S3AX d3_i0 (.D(d3_67__N_1349[0]), .CK(osc_clk), .Q(d3[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i0.GSR = "ENABLED";
    FD1S3AX d4_i0 (.D(d4_67__N_1417[0]), .CK(osc_clk), .Q(d4[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i0.GSR = "ENABLED";
    FD1S3AX d5_i0 (.D(d5_67__N_1485[0]), .CK(osc_clk), .Q(d5[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(n1448[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    FD1S3JX d_clk_tmp_86 (.D(n312), .CK(osc_clk), .PD(osc_clk_enable_114), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_clk_tmp_86.GSR = "ENABLED";
    FD1S3AX v_comb_87 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87.GSR = "ENABLED";
    FD1S3AX d_clk_88 (.D(d_clk_tmp), .CK(osc_clk), .Q(CIC_out_clk_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_clk_88.GSR = "ENABLED";
    FD1P3AX d8_i0_i0 (.D(n1517[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d9_i0_i0 (.D(n1586[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(count[11]), .B(n20), .C(n14), .D(count[4]), .Z(n22)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[60]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(\DataInNoSign_7__N_2364[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d10__0__i1 (.D(n1655[60]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d10[60]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i1.GSR = "ENABLED";
    FD1S3AX d1_i0 (.D(d1_67__N_1213[0]), .CK(osc_clk), .Q(d1[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i0.GSR = "ENABLED";
    FD1S3IX count_53_54__i1 (.D(n53[0]), .CK(osc_clk), .CD(osc_clk_enable_114), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i1.GSR = "ENABLED";
    LUT4 i6_2_lut (.A(count[6]), .B(count[7]), .Z(n18)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut.init = 16'h8888;
    LUT4 i211_2_lut (.A(MixerOutSin_c_0), .B(d1[0]), .Z(d1_67__N_1213[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i211_2_lut.init = 16'h6666;
    FD1S3AX v_comb_87_rep_19 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_636)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_19.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_18 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_586)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_18.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_17 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_536)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_17.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_16 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_486)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_16.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_15 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_436)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_15.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_12 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_286)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_12.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_11 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_236)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_11.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_10 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_186)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_10.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_9 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_136)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_9.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_8 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_52)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_8.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(count[2]), .B(count[0]), .C(count[3]), .D(count[8]), 
         .Z(n20)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i212_2_lut (.A(d1[0]), .B(d2[0]), .Z(d2_67__N_1281[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i212_2_lut.init = 16'h6666;
    LUT4 i213_2_lut (.A(d2[0]), .B(d3[0]), .Z(d3_67__N_1349[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i213_2_lut.init = 16'h6666;
    FD1S3AX v_comb_87_rep_13 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_336)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_13.GSR = "ENABLED";
    FD1P3AX d6_i0_i1 (.D(n1379[1]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    LUT4 i214_2_lut (.A(d3[0]), .B(d4[0]), .Z(d4_67__N_1417[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i214_2_lut.init = 16'h6666;
    LUT4 i215_2_lut (.A(d4[0]), .B(d5[0]), .Z(d5_67__N_1485[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i215_2_lut.init = 16'h6666;
    LUT4 i2_2_lut (.A(count[5]), .B(count[10]), .Z(n14)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i171_4_lut (.A(n21), .B(d_clk_tmp), .C(n19), .D(n20_adj_2375), 
         .Z(n312)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam i171_4_lut.init = 16'hccc8;
    CCU2D count_53_54_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n747), .S0(n53[11]));   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54_add_4_13.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_13.INIT1 = 16'h0000;
    defparam count_53_54_add_4_13.INJECT1_0 = "NO";
    defparam count_53_54_add_4_13.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n746), .COUT(n747), .S0(n53[9]), .S1(n53[10]));   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54_add_4_11.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_11.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_11.INJECT1_0 = "NO";
    defparam count_53_54_add_4_11.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n745), .COUT(n746), .S0(n53[7]), .S1(n53[8]));   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54_add_4_9.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_9.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_9.INJECT1_0 = "NO";
    defparam count_53_54_add_4_9.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n744), .COUT(n745), .S0(n53[5]), .S1(n53[6]));   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54_add_4_7.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_7.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_7.INJECT1_0 = "NO";
    defparam count_53_54_add_4_7.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n743), .COUT(n744), .S0(n53[3]), .S1(n53[4]));   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54_add_4_5.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_5.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_5.INJECT1_0 = "NO";
    defparam count_53_54_add_4_5.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n742), .COUT(n743), .S0(n53[1]), .S1(n53[2]));   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54_add_4_3.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_3.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_3.INJECT1_0 = "NO";
    defparam count_53_54_add_4_3.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n742), .S1(n53[0]));   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54_add_4_1.INIT0 = 16'hF000;
    defparam count_53_54_add_4_1.INIT1 = 16'h0555;
    defparam count_53_54_add_4_1.INJECT1_0 = "NO";
    defparam count_53_54_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_69 (.A0(d6[67]), .B0(d_d6[67]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n733), 
          .S0(n1448[67]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_69.INIT0 = 16'h5999;
    defparam sub_37_add_2_69.INIT1 = 16'h0000;
    defparam sub_37_add_2_69.INJECT1_0 = "NO";
    defparam sub_37_add_2_69.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_67 (.A0(d6[65]), .B0(d_d6[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[66]), .B1(d_d6[66]), .C1(GND_net), .D1(GND_net), .CIN(n732), 
          .COUT(n733), .S0(n1448[65]), .S1(n1448[66]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_67.INIT0 = 16'h5999;
    defparam sub_37_add_2_67.INIT1 = 16'h5999;
    defparam sub_37_add_2_67.INJECT1_0 = "NO";
    defparam sub_37_add_2_67.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_65 (.A0(d6[63]), .B0(d_d6[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[64]), .B1(d_d6[64]), .C1(GND_net), .D1(GND_net), .CIN(n731), 
          .COUT(n732), .S0(n1448[63]), .S1(n1448[64]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_65.INIT0 = 16'h5999;
    defparam sub_37_add_2_65.INIT1 = 16'h5999;
    defparam sub_37_add_2_65.INJECT1_0 = "NO";
    defparam sub_37_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_63 (.A0(d6[61]), .B0(d_d6[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[62]), .B1(d_d6[62]), .C1(GND_net), .D1(GND_net), .CIN(n730), 
          .COUT(n731), .S0(n1448[61]), .S1(n1448[62]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_63.INIT0 = 16'h5999;
    defparam sub_37_add_2_63.INIT1 = 16'h5999;
    defparam sub_37_add_2_63.INJECT1_0 = "NO";
    defparam sub_37_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_61 (.A0(d6[59]), .B0(d_d6[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[60]), .B1(d_d6[60]), .C1(GND_net), .D1(GND_net), .CIN(n729), 
          .COUT(n730), .S0(n1448[59]), .S1(n1448[60]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_61.INIT0 = 16'h5999;
    defparam sub_37_add_2_61.INIT1 = 16'h5999;
    defparam sub_37_add_2_61.INJECT1_0 = "NO";
    defparam sub_37_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_59 (.A0(d6[57]), .B0(d_d6[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[58]), .B1(d_d6[58]), .C1(GND_net), .D1(GND_net), .CIN(n728), 
          .COUT(n729), .S0(n1448[57]), .S1(n1448[58]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_59.INIT0 = 16'h5999;
    defparam sub_37_add_2_59.INIT1 = 16'h5999;
    defparam sub_37_add_2_59.INJECT1_0 = "NO";
    defparam sub_37_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_57 (.A0(d6[55]), .B0(d_d6[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[56]), .B1(d_d6[56]), .C1(GND_net), .D1(GND_net), .CIN(n727), 
          .COUT(n728), .S0(n1448[55]), .S1(n1448[56]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_57.INIT0 = 16'h5999;
    defparam sub_37_add_2_57.INIT1 = 16'h5999;
    defparam sub_37_add_2_57.INJECT1_0 = "NO";
    defparam sub_37_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_55 (.A0(d6[53]), .B0(d_d6[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[54]), .B1(d_d6[54]), .C1(GND_net), .D1(GND_net), .CIN(n726), 
          .COUT(n727), .S0(n1448[53]), .S1(n1448[54]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_55.INIT0 = 16'h5999;
    defparam sub_37_add_2_55.INIT1 = 16'h5999;
    defparam sub_37_add_2_55.INJECT1_0 = "NO";
    defparam sub_37_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_53 (.A0(d6[51]), .B0(d_d6[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[52]), .B1(d_d6[52]), .C1(GND_net), .D1(GND_net), .CIN(n725), 
          .COUT(n726), .S0(n1448[51]), .S1(n1448[52]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_53.INIT0 = 16'h5999;
    defparam sub_37_add_2_53.INIT1 = 16'h5999;
    defparam sub_37_add_2_53.INJECT1_0 = "NO";
    defparam sub_37_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_51 (.A0(d6[49]), .B0(d_d6[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[50]), .B1(d_d6[50]), .C1(GND_net), .D1(GND_net), .CIN(n724), 
          .COUT(n725), .S0(n1448[49]), .S1(n1448[50]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_51.INIT0 = 16'h5999;
    defparam sub_37_add_2_51.INIT1 = 16'h5999;
    defparam sub_37_add_2_51.INJECT1_0 = "NO";
    defparam sub_37_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_49 (.A0(d6[47]), .B0(d_d6[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[48]), .B1(d_d6[48]), .C1(GND_net), .D1(GND_net), .CIN(n723), 
          .COUT(n724), .S0(n1448[47]), .S1(n1448[48]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_49.INIT0 = 16'h5999;
    defparam sub_37_add_2_49.INIT1 = 16'h5999;
    defparam sub_37_add_2_49.INJECT1_0 = "NO";
    defparam sub_37_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_47 (.A0(d6[45]), .B0(d_d6[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[46]), .B1(d_d6[46]), .C1(GND_net), .D1(GND_net), .CIN(n722), 
          .COUT(n723), .S0(n1448[45]), .S1(n1448[46]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_47.INIT0 = 16'h5999;
    defparam sub_37_add_2_47.INIT1 = 16'h5999;
    defparam sub_37_add_2_47.INJECT1_0 = "NO";
    defparam sub_37_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_45 (.A0(d6[43]), .B0(d_d6[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[44]), .B1(d_d6[44]), .C1(GND_net), .D1(GND_net), .CIN(n721), 
          .COUT(n722), .S0(n1448[43]), .S1(n1448[44]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_45.INIT0 = 16'h5999;
    defparam sub_37_add_2_45.INIT1 = 16'h5999;
    defparam sub_37_add_2_45.INJECT1_0 = "NO";
    defparam sub_37_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_43 (.A0(d6[41]), .B0(d_d6[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[42]), .B1(d_d6[42]), .C1(GND_net), .D1(GND_net), .CIN(n720), 
          .COUT(n721), .S0(n1448[41]), .S1(n1448[42]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_43.INIT0 = 16'h5999;
    defparam sub_37_add_2_43.INIT1 = 16'h5999;
    defparam sub_37_add_2_43.INJECT1_0 = "NO";
    defparam sub_37_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_41 (.A0(d6[39]), .B0(d_d6[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[40]), .B1(d_d6[40]), .C1(GND_net), .D1(GND_net), .CIN(n719), 
          .COUT(n720), .S0(n1448[39]), .S1(n1448[40]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_41.INIT0 = 16'h5999;
    defparam sub_37_add_2_41.INIT1 = 16'h5999;
    defparam sub_37_add_2_41.INJECT1_0 = "NO";
    defparam sub_37_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_39 (.A0(d6[37]), .B0(d_d6[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[38]), .B1(d_d6[38]), .C1(GND_net), .D1(GND_net), .CIN(n718), 
          .COUT(n719), .S0(n1448[37]), .S1(n1448[38]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_39.INIT0 = 16'h5999;
    defparam sub_37_add_2_39.INIT1 = 16'h5999;
    defparam sub_37_add_2_39.INJECT1_0 = "NO";
    defparam sub_37_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_37 (.A0(d6[35]), .B0(d_d6[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[36]), .B1(d_d6[36]), .C1(GND_net), .D1(GND_net), .CIN(n717), 
          .COUT(n718), .S0(n1448[35]), .S1(n1448[36]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_37.INIT0 = 16'h5999;
    defparam sub_37_add_2_37.INIT1 = 16'h5999;
    defparam sub_37_add_2_37.INJECT1_0 = "NO";
    defparam sub_37_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_35 (.A0(d6[33]), .B0(d_d6[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[34]), .B1(d_d6[34]), .C1(GND_net), .D1(GND_net), .CIN(n716), 
          .COUT(n717), .S0(n1448[33]), .S1(n1448[34]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_35.INIT0 = 16'h5999;
    defparam sub_37_add_2_35.INIT1 = 16'h5999;
    defparam sub_37_add_2_35.INJECT1_0 = "NO";
    defparam sub_37_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_33 (.A0(d6[31]), .B0(d_d6[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[32]), .B1(d_d6[32]), .C1(GND_net), .D1(GND_net), .CIN(n715), 
          .COUT(n716), .S0(n1448[31]), .S1(n1448[32]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_33.INIT0 = 16'h5999;
    defparam sub_37_add_2_33.INIT1 = 16'h5999;
    defparam sub_37_add_2_33.INJECT1_0 = "NO";
    defparam sub_37_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_31 (.A0(d6[29]), .B0(d_d6[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[30]), .B1(d_d6[30]), .C1(GND_net), .D1(GND_net), .CIN(n714), 
          .COUT(n715), .S0(n1448[29]), .S1(n1448[30]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_31.INIT0 = 16'h5999;
    defparam sub_37_add_2_31.INIT1 = 16'h5999;
    defparam sub_37_add_2_31.INJECT1_0 = "NO";
    defparam sub_37_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_29 (.A0(d6[27]), .B0(d_d6[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[28]), .B1(d_d6[28]), .C1(GND_net), .D1(GND_net), .CIN(n713), 
          .COUT(n714), .S0(n1448[27]), .S1(n1448[28]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_29.INIT0 = 16'h5999;
    defparam sub_37_add_2_29.INIT1 = 16'h5999;
    defparam sub_37_add_2_29.INJECT1_0 = "NO";
    defparam sub_37_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_27 (.A0(d6[25]), .B0(d_d6[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[26]), .B1(d_d6[26]), .C1(GND_net), .D1(GND_net), .CIN(n712), 
          .COUT(n713), .S0(n1448[25]), .S1(n1448[26]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_27.INIT0 = 16'h5999;
    defparam sub_37_add_2_27.INIT1 = 16'h5999;
    defparam sub_37_add_2_27.INJECT1_0 = "NO";
    defparam sub_37_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_25 (.A0(d6[23]), .B0(d_d6[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[24]), .B1(d_d6[24]), .C1(GND_net), .D1(GND_net), .CIN(n711), 
          .COUT(n712), .S0(n1448[23]), .S1(n1448[24]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_25.INIT0 = 16'h5999;
    defparam sub_37_add_2_25.INIT1 = 16'h5999;
    defparam sub_37_add_2_25.INJECT1_0 = "NO";
    defparam sub_37_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_23 (.A0(d6[21]), .B0(d_d6[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[22]), .B1(d_d6[22]), .C1(GND_net), .D1(GND_net), .CIN(n710), 
          .COUT(n711), .S0(n1448[21]), .S1(n1448[22]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_23.INIT0 = 16'h5999;
    defparam sub_37_add_2_23.INIT1 = 16'h5999;
    defparam sub_37_add_2_23.INJECT1_0 = "NO";
    defparam sub_37_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_21 (.A0(d6[19]), .B0(d_d6[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[20]), .B1(d_d6[20]), .C1(GND_net), .D1(GND_net), .CIN(n709), 
          .COUT(n710), .S0(n1448[19]), .S1(n1448[20]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_21.INIT0 = 16'h5999;
    defparam sub_37_add_2_21.INIT1 = 16'h5999;
    defparam sub_37_add_2_21.INJECT1_0 = "NO";
    defparam sub_37_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_19 (.A0(d6[17]), .B0(d_d6[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[18]), .B1(d_d6[18]), .C1(GND_net), .D1(GND_net), .CIN(n708), 
          .COUT(n709), .S0(n1448[17]), .S1(n1448[18]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_19.INIT0 = 16'h5999;
    defparam sub_37_add_2_19.INIT1 = 16'h5999;
    defparam sub_37_add_2_19.INJECT1_0 = "NO";
    defparam sub_37_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_17 (.A0(d6[15]), .B0(d_d6[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[16]), .B1(d_d6[16]), .C1(GND_net), .D1(GND_net), .CIN(n707), 
          .COUT(n708), .S0(n1448[15]), .S1(n1448[16]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_17.INIT0 = 16'h5999;
    defparam sub_37_add_2_17.INIT1 = 16'h5999;
    defparam sub_37_add_2_17.INJECT1_0 = "NO";
    defparam sub_37_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_15 (.A0(d6[13]), .B0(d_d6[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[14]), .B1(d_d6[14]), .C1(GND_net), .D1(GND_net), .CIN(n706), 
          .COUT(n707), .S0(n1448[13]), .S1(n1448[14]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_15.INIT0 = 16'h5999;
    defparam sub_37_add_2_15.INIT1 = 16'h5999;
    defparam sub_37_add_2_15.INJECT1_0 = "NO";
    defparam sub_37_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[12]), .B1(d_d6[12]), .C1(GND_net), .D1(GND_net), .CIN(n705), 
          .COUT(n706), .S0(n1448[11]), .S1(n1448[12]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_13.INIT0 = 16'h5999;
    defparam sub_37_add_2_13.INIT1 = 16'h5999;
    defparam sub_37_add_2_13.INJECT1_0 = "NO";
    defparam sub_37_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n704), 
          .COUT(n705), .S0(n1448[9]), .S1(n1448[10]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_11.INIT0 = 16'h5999;
    defparam sub_37_add_2_11.INIT1 = 16'h5999;
    defparam sub_37_add_2_11.INJECT1_0 = "NO";
    defparam sub_37_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n703), 
          .COUT(n704), .S0(n1448[7]), .S1(n1448[8]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_9.INIT0 = 16'h5999;
    defparam sub_37_add_2_9.INIT1 = 16'h5999;
    defparam sub_37_add_2_9.INJECT1_0 = "NO";
    defparam sub_37_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n702), 
          .COUT(n703), .S0(n1448[5]), .S1(n1448[6]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_7.INIT0 = 16'h5999;
    defparam sub_37_add_2_7.INIT1 = 16'h5999;
    defparam sub_37_add_2_7.INJECT1_0 = "NO";
    defparam sub_37_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n701), 
          .COUT(n702), .S0(n1448[3]), .S1(n1448[4]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_5.INIT0 = 16'h5999;
    defparam sub_37_add_2_5.INIT1 = 16'h5999;
    defparam sub_37_add_2_5.INJECT1_0 = "NO";
    defparam sub_37_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n700), 
          .COUT(n701), .S0(n1448[1]), .S1(n1448[2]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_3.INIT0 = 16'h5999;
    defparam sub_37_add_2_3.INIT1 = 16'h5999;
    defparam sub_37_add_2_3.INJECT1_0 = "NO";
    defparam sub_37_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n700), 
          .S1(n1448[0]));   // c:/users/user/lattice/fpgasdr/cic.v(111[11:20])
    defparam sub_37_add_2_1.INIT0 = 16'h0000;
    defparam sub_37_add_2_1.INIT1 = 16'h5999;
    defparam sub_37_add_2_1.INJECT1_0 = "NO";
    defparam sub_37_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_69 (.A0(d8[67]), .B0(d_d8[67]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n699), 
          .S0(n1586[67]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_69.INIT0 = 16'h5999;
    defparam sub_39_add_2_69.INIT1 = 16'h0000;
    defparam sub_39_add_2_69.INJECT1_0 = "NO";
    defparam sub_39_add_2_69.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_67 (.A0(d8[65]), .B0(d_d8[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[66]), .B1(d_d8[66]), .C1(GND_net), .D1(GND_net), .CIN(n698), 
          .COUT(n699), .S0(n1586[65]), .S1(n1586[66]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_67.INIT0 = 16'h5999;
    defparam sub_39_add_2_67.INIT1 = 16'h5999;
    defparam sub_39_add_2_67.INJECT1_0 = "NO";
    defparam sub_39_add_2_67.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_65 (.A0(d8[63]), .B0(d_d8[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[64]), .B1(d_d8[64]), .C1(GND_net), .D1(GND_net), .CIN(n697), 
          .COUT(n698), .S0(n1586[63]), .S1(n1586[64]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_65.INIT0 = 16'h5999;
    defparam sub_39_add_2_65.INIT1 = 16'h5999;
    defparam sub_39_add_2_65.INJECT1_0 = "NO";
    defparam sub_39_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_63 (.A0(d8[61]), .B0(d_d8[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[62]), .B1(d_d8[62]), .C1(GND_net), .D1(GND_net), .CIN(n696), 
          .COUT(n697), .S0(n1586[61]), .S1(n1586[62]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_63.INIT0 = 16'h5999;
    defparam sub_39_add_2_63.INIT1 = 16'h5999;
    defparam sub_39_add_2_63.INJECT1_0 = "NO";
    defparam sub_39_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_61 (.A0(d8[59]), .B0(d_d8[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[60]), .B1(d_d8[60]), .C1(GND_net), .D1(GND_net), .CIN(n695), 
          .COUT(n696), .S0(n1586[59]), .S1(n1586[60]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_61.INIT0 = 16'h5999;
    defparam sub_39_add_2_61.INIT1 = 16'h5999;
    defparam sub_39_add_2_61.INJECT1_0 = "NO";
    defparam sub_39_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_59 (.A0(d8[57]), .B0(d_d8[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[58]), .B1(d_d8[58]), .C1(GND_net), .D1(GND_net), .CIN(n694), 
          .COUT(n695), .S0(n1586[57]), .S1(n1586[58]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_59.INIT0 = 16'h5999;
    defparam sub_39_add_2_59.INIT1 = 16'h5999;
    defparam sub_39_add_2_59.INJECT1_0 = "NO";
    defparam sub_39_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_57 (.A0(d8[55]), .B0(d_d8[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[56]), .B1(d_d8[56]), .C1(GND_net), .D1(GND_net), .CIN(n693), 
          .COUT(n694), .S0(n1586[55]), .S1(n1586[56]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_57.INIT0 = 16'h5999;
    defparam sub_39_add_2_57.INIT1 = 16'h5999;
    defparam sub_39_add_2_57.INJECT1_0 = "NO";
    defparam sub_39_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_55 (.A0(d8[53]), .B0(d_d8[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[54]), .B1(d_d8[54]), .C1(GND_net), .D1(GND_net), .CIN(n692), 
          .COUT(n693), .S0(n1586[53]), .S1(n1586[54]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_55.INIT0 = 16'h5999;
    defparam sub_39_add_2_55.INIT1 = 16'h5999;
    defparam sub_39_add_2_55.INJECT1_0 = "NO";
    defparam sub_39_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_53 (.A0(d8[51]), .B0(d_d8[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[52]), .B1(d_d8[52]), .C1(GND_net), .D1(GND_net), .CIN(n691), 
          .COUT(n692), .S0(n1586[51]), .S1(n1586[52]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_53.INIT0 = 16'h5999;
    defparam sub_39_add_2_53.INIT1 = 16'h5999;
    defparam sub_39_add_2_53.INJECT1_0 = "NO";
    defparam sub_39_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_51 (.A0(d8[49]), .B0(d_d8[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[50]), .B1(d_d8[50]), .C1(GND_net), .D1(GND_net), .CIN(n690), 
          .COUT(n691), .S0(n1586[49]), .S1(n1586[50]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_51.INIT0 = 16'h5999;
    defparam sub_39_add_2_51.INIT1 = 16'h5999;
    defparam sub_39_add_2_51.INJECT1_0 = "NO";
    defparam sub_39_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_49 (.A0(d8[47]), .B0(d_d8[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[48]), .B1(d_d8[48]), .C1(GND_net), .D1(GND_net), .CIN(n689), 
          .COUT(n690), .S0(n1586[47]), .S1(n1586[48]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_49.INIT0 = 16'h5999;
    defparam sub_39_add_2_49.INIT1 = 16'h5999;
    defparam sub_39_add_2_49.INJECT1_0 = "NO";
    defparam sub_39_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_47 (.A0(d8[45]), .B0(d_d8[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[46]), .B1(d_d8[46]), .C1(GND_net), .D1(GND_net), .CIN(n688), 
          .COUT(n689), .S0(n1586[45]), .S1(n1586[46]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_47.INIT0 = 16'h5999;
    defparam sub_39_add_2_47.INIT1 = 16'h5999;
    defparam sub_39_add_2_47.INJECT1_0 = "NO";
    defparam sub_39_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_45 (.A0(d8[43]), .B0(d_d8[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[44]), .B1(d_d8[44]), .C1(GND_net), .D1(GND_net), .CIN(n687), 
          .COUT(n688), .S0(n1586[43]), .S1(n1586[44]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_45.INIT0 = 16'h5999;
    defparam sub_39_add_2_45.INIT1 = 16'h5999;
    defparam sub_39_add_2_45.INJECT1_0 = "NO";
    defparam sub_39_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_43 (.A0(d8[41]), .B0(d_d8[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[42]), .B1(d_d8[42]), .C1(GND_net), .D1(GND_net), .CIN(n686), 
          .COUT(n687), .S0(n1586[41]), .S1(n1586[42]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_43.INIT0 = 16'h5999;
    defparam sub_39_add_2_43.INIT1 = 16'h5999;
    defparam sub_39_add_2_43.INJECT1_0 = "NO";
    defparam sub_39_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_41 (.A0(d8[39]), .B0(d_d8[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[40]), .B1(d_d8[40]), .C1(GND_net), .D1(GND_net), .CIN(n685), 
          .COUT(n686), .S0(n1586[39]), .S1(n1586[40]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_41.INIT0 = 16'h5999;
    defparam sub_39_add_2_41.INIT1 = 16'h5999;
    defparam sub_39_add_2_41.INJECT1_0 = "NO";
    defparam sub_39_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_39 (.A0(d8[37]), .B0(d_d8[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[38]), .B1(d_d8[38]), .C1(GND_net), .D1(GND_net), .CIN(n684), 
          .COUT(n685), .S0(n1586[37]), .S1(n1586[38]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_39.INIT0 = 16'h5999;
    defparam sub_39_add_2_39.INIT1 = 16'h5999;
    defparam sub_39_add_2_39.INJECT1_0 = "NO";
    defparam sub_39_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_37 (.A0(d8[35]), .B0(d_d8[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[36]), .B1(d_d8[36]), .C1(GND_net), .D1(GND_net), .CIN(n683), 
          .COUT(n684), .S0(n1586[35]), .S1(n1586[36]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_37.INIT0 = 16'h5999;
    defparam sub_39_add_2_37.INIT1 = 16'h5999;
    defparam sub_39_add_2_37.INJECT1_0 = "NO";
    defparam sub_39_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_35 (.A0(d8[33]), .B0(d_d8[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[34]), .B1(d_d8[34]), .C1(GND_net), .D1(GND_net), .CIN(n682), 
          .COUT(n683), .S0(n1586[33]), .S1(n1586[34]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_35.INIT0 = 16'h5999;
    defparam sub_39_add_2_35.INIT1 = 16'h5999;
    defparam sub_39_add_2_35.INJECT1_0 = "NO";
    defparam sub_39_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_33 (.A0(d8[31]), .B0(d_d8[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[32]), .B1(d_d8[32]), .C1(GND_net), .D1(GND_net), .CIN(n681), 
          .COUT(n682), .S0(n1586[31]), .S1(n1586[32]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_33.INIT0 = 16'h5999;
    defparam sub_39_add_2_33.INIT1 = 16'h5999;
    defparam sub_39_add_2_33.INJECT1_0 = "NO";
    defparam sub_39_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_31 (.A0(d8[29]), .B0(d_d8[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[30]), .B1(d_d8[30]), .C1(GND_net), .D1(GND_net), .CIN(n680), 
          .COUT(n681), .S0(n1586[29]), .S1(n1586[30]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_31.INIT0 = 16'h5999;
    defparam sub_39_add_2_31.INIT1 = 16'h5999;
    defparam sub_39_add_2_31.INJECT1_0 = "NO";
    defparam sub_39_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_29 (.A0(d8[27]), .B0(d_d8[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[28]), .B1(d_d8[28]), .C1(GND_net), .D1(GND_net), .CIN(n679), 
          .COUT(n680), .S0(n1586[27]), .S1(n1586[28]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_29.INIT0 = 16'h5999;
    defparam sub_39_add_2_29.INIT1 = 16'h5999;
    defparam sub_39_add_2_29.INJECT1_0 = "NO";
    defparam sub_39_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_27 (.A0(d8[25]), .B0(d_d8[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[26]), .B1(d_d8[26]), .C1(GND_net), .D1(GND_net), .CIN(n678), 
          .COUT(n679), .S0(n1586[25]), .S1(n1586[26]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_27.INIT0 = 16'h5999;
    defparam sub_39_add_2_27.INIT1 = 16'h5999;
    defparam sub_39_add_2_27.INJECT1_0 = "NO";
    defparam sub_39_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_25 (.A0(d8[23]), .B0(d_d8[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[24]), .B1(d_d8[24]), .C1(GND_net), .D1(GND_net), .CIN(n677), 
          .COUT(n678), .S0(n1586[23]), .S1(n1586[24]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_25.INIT0 = 16'h5999;
    defparam sub_39_add_2_25.INIT1 = 16'h5999;
    defparam sub_39_add_2_25.INJECT1_0 = "NO";
    defparam sub_39_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_23 (.A0(d8[21]), .B0(d_d8[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[22]), .B1(d_d8[22]), .C1(GND_net), .D1(GND_net), .CIN(n676), 
          .COUT(n677), .S0(n1586[21]), .S1(n1586[22]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_23.INIT0 = 16'h5999;
    defparam sub_39_add_2_23.INIT1 = 16'h5999;
    defparam sub_39_add_2_23.INJECT1_0 = "NO";
    defparam sub_39_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_21 (.A0(d8[19]), .B0(d_d8[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[20]), .B1(d_d8[20]), .C1(GND_net), .D1(GND_net), .CIN(n675), 
          .COUT(n676), .S0(n1586[19]), .S1(n1586[20]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_21.INIT0 = 16'h5999;
    defparam sub_39_add_2_21.INIT1 = 16'h5999;
    defparam sub_39_add_2_21.INJECT1_0 = "NO";
    defparam sub_39_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_19 (.A0(d8[17]), .B0(d_d8[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[18]), .B1(d_d8[18]), .C1(GND_net), .D1(GND_net), .CIN(n674), 
          .COUT(n675), .S0(n1586[17]), .S1(n1586[18]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_19.INIT0 = 16'h5999;
    defparam sub_39_add_2_19.INIT1 = 16'h5999;
    defparam sub_39_add_2_19.INJECT1_0 = "NO";
    defparam sub_39_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_17 (.A0(d8[15]), .B0(d_d8[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[16]), .B1(d_d8[16]), .C1(GND_net), .D1(GND_net), .CIN(n673), 
          .COUT(n674), .S0(n1586[15]), .S1(n1586[16]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_17.INIT0 = 16'h5999;
    defparam sub_39_add_2_17.INIT1 = 16'h5999;
    defparam sub_39_add_2_17.INJECT1_0 = "NO";
    defparam sub_39_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_15 (.A0(d8[13]), .B0(d_d8[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[14]), .B1(d_d8[14]), .C1(GND_net), .D1(GND_net), .CIN(n672), 
          .COUT(n673), .S0(n1586[13]), .S1(n1586[14]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_15.INIT0 = 16'h5999;
    defparam sub_39_add_2_15.INIT1 = 16'h5999;
    defparam sub_39_add_2_15.INJECT1_0 = "NO";
    defparam sub_39_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[12]), .B1(d_d8[12]), .C1(GND_net), .D1(GND_net), .CIN(n671), 
          .COUT(n672), .S0(n1586[11]), .S1(n1586[12]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_13.INIT0 = 16'h5999;
    defparam sub_39_add_2_13.INIT1 = 16'h5999;
    defparam sub_39_add_2_13.INJECT1_0 = "NO";
    defparam sub_39_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n670), 
          .COUT(n671), .S0(n1586[9]), .S1(n1586[10]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_11.INIT0 = 16'h5999;
    defparam sub_39_add_2_11.INIT1 = 16'h5999;
    defparam sub_39_add_2_11.INJECT1_0 = "NO";
    defparam sub_39_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n669), 
          .COUT(n670), .S0(n1586[7]), .S1(n1586[8]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_9.INIT0 = 16'h5999;
    defparam sub_39_add_2_9.INIT1 = 16'h5999;
    defparam sub_39_add_2_9.INJECT1_0 = "NO";
    defparam sub_39_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n668), 
          .COUT(n669), .S0(n1586[5]), .S1(n1586[6]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_7.INIT0 = 16'h5999;
    defparam sub_39_add_2_7.INIT1 = 16'h5999;
    defparam sub_39_add_2_7.INJECT1_0 = "NO";
    defparam sub_39_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n667), 
          .COUT(n668), .S0(n1586[3]), .S1(n1586[4]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_5.INIT0 = 16'h5999;
    defparam sub_39_add_2_5.INIT1 = 16'h5999;
    defparam sub_39_add_2_5.INJECT1_0 = "NO";
    defparam sub_39_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n666), 
          .COUT(n667), .S0(n1586[1]), .S1(n1586[2]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_3.INIT0 = 16'h5999;
    defparam sub_39_add_2_3.INIT1 = 16'h5999;
    defparam sub_39_add_2_3.INJECT1_0 = "NO";
    defparam sub_39_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n666), 
          .S1(n1586[0]));   // c:/users/user/lattice/fpgasdr/cic.v(117[11:20])
    defparam sub_39_add_2_1.INIT0 = 16'h0000;
    defparam sub_39_add_2_1.INIT1 = 16'h5999;
    defparam sub_39_add_2_1.INJECT1_0 = "NO";
    defparam sub_39_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_69 (.A0(d9[67]), .B0(d_d9[67]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n665), 
          .S0(n1655[67]));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_69.INIT0 = 16'h5999;
    defparam sub_40_add_2_69.INIT1 = 16'h0000;
    defparam sub_40_add_2_69.INJECT1_0 = "NO";
    defparam sub_40_add_2_69.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_67 (.A0(d9[65]), .B0(d_d9[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[66]), .B1(d_d9[66]), .C1(GND_net), .D1(GND_net), .CIN(n664), 
          .COUT(n665), .S0(n1655[65]), .S1(n1655[66]));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_67.INIT0 = 16'h5999;
    defparam sub_40_add_2_67.INIT1 = 16'h5999;
    defparam sub_40_add_2_67.INJECT1_0 = "NO";
    defparam sub_40_add_2_67.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_65 (.A0(d9[63]), .B0(d_d9[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[64]), .B1(d_d9[64]), .C1(GND_net), .D1(GND_net), .CIN(n663), 
          .COUT(n664), .S0(n1655[63]), .S1(n1655[64]));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_65.INIT0 = 16'h5999;
    defparam sub_40_add_2_65.INIT1 = 16'h5999;
    defparam sub_40_add_2_65.INJECT1_0 = "NO";
    defparam sub_40_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_63 (.A0(d9[61]), .B0(d_d9[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[62]), .B1(d_d9[62]), .C1(GND_net), .D1(GND_net), .CIN(n662), 
          .COUT(n663), .S0(n1655[61]), .S1(n1655[62]));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_63.INIT0 = 16'h5999;
    defparam sub_40_add_2_63.INIT1 = 16'h5999;
    defparam sub_40_add_2_63.INJECT1_0 = "NO";
    defparam sub_40_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_61 (.A0(d9[59]), .B0(d_d9[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[60]), .B1(d_d9[60]), .C1(GND_net), .D1(GND_net), .CIN(n661), 
          .COUT(n662), .S1(n1655[60]));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_61.INIT0 = 16'h5999;
    defparam sub_40_add_2_61.INIT1 = 16'h5999;
    defparam sub_40_add_2_61.INJECT1_0 = "NO";
    defparam sub_40_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_59 (.A0(d9[57]), .B0(d_d9[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[58]), .B1(d_d9[58]), .C1(GND_net), .D1(GND_net), .CIN(n660), 
          .COUT(n661));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_59.INIT0 = 16'h5999;
    defparam sub_40_add_2_59.INIT1 = 16'h5999;
    defparam sub_40_add_2_59.INJECT1_0 = "NO";
    defparam sub_40_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_57 (.A0(d9[55]), .B0(d_d9[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[56]), .B1(d_d9[56]), .C1(GND_net), .D1(GND_net), .CIN(n659), 
          .COUT(n660));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_57.INIT0 = 16'h5999;
    defparam sub_40_add_2_57.INIT1 = 16'h5999;
    defparam sub_40_add_2_57.INJECT1_0 = "NO";
    defparam sub_40_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_55 (.A0(d9[53]), .B0(d_d9[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[54]), .B1(d_d9[54]), .C1(GND_net), .D1(GND_net), .CIN(n658), 
          .COUT(n659));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_55.INIT0 = 16'h5999;
    defparam sub_40_add_2_55.INIT1 = 16'h5999;
    defparam sub_40_add_2_55.INJECT1_0 = "NO";
    defparam sub_40_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_53 (.A0(d9[51]), .B0(d_d9[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[52]), .B1(d_d9[52]), .C1(GND_net), .D1(GND_net), .CIN(n657), 
          .COUT(n658));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_53.INIT0 = 16'h5999;
    defparam sub_40_add_2_53.INIT1 = 16'h5999;
    defparam sub_40_add_2_53.INJECT1_0 = "NO";
    defparam sub_40_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_51 (.A0(d9[49]), .B0(d_d9[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[50]), .B1(d_d9[50]), .C1(GND_net), .D1(GND_net), .CIN(n656), 
          .COUT(n657));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_51.INIT0 = 16'h5999;
    defparam sub_40_add_2_51.INIT1 = 16'h5999;
    defparam sub_40_add_2_51.INJECT1_0 = "NO";
    defparam sub_40_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_49 (.A0(d9[47]), .B0(d_d9[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[48]), .B1(d_d9[48]), .C1(GND_net), .D1(GND_net), .CIN(n655), 
          .COUT(n656));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_49.INIT0 = 16'h5999;
    defparam sub_40_add_2_49.INIT1 = 16'h5999;
    defparam sub_40_add_2_49.INJECT1_0 = "NO";
    defparam sub_40_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_47 (.A0(d9[45]), .B0(d_d9[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[46]), .B1(d_d9[46]), .C1(GND_net), .D1(GND_net), .CIN(n654), 
          .COUT(n655));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_47.INIT0 = 16'h5999;
    defparam sub_40_add_2_47.INIT1 = 16'h5999;
    defparam sub_40_add_2_47.INJECT1_0 = "NO";
    defparam sub_40_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_45 (.A0(d9[43]), .B0(d_d9[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[44]), .B1(d_d9[44]), .C1(GND_net), .D1(GND_net), .CIN(n653), 
          .COUT(n654));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_45.INIT0 = 16'h5999;
    defparam sub_40_add_2_45.INIT1 = 16'h5999;
    defparam sub_40_add_2_45.INJECT1_0 = "NO";
    defparam sub_40_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_43 (.A0(d9[41]), .B0(d_d9[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[42]), .B1(d_d9[42]), .C1(GND_net), .D1(GND_net), .CIN(n652), 
          .COUT(n653));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_43.INIT0 = 16'h5999;
    defparam sub_40_add_2_43.INIT1 = 16'h5999;
    defparam sub_40_add_2_43.INJECT1_0 = "NO";
    defparam sub_40_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_41 (.A0(d9[39]), .B0(d_d9[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[40]), .B1(d_d9[40]), .C1(GND_net), .D1(GND_net), .CIN(n651), 
          .COUT(n652));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_41.INIT0 = 16'h5999;
    defparam sub_40_add_2_41.INIT1 = 16'h5999;
    defparam sub_40_add_2_41.INJECT1_0 = "NO";
    defparam sub_40_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_39 (.A0(d9[37]), .B0(d_d9[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[38]), .B1(d_d9[38]), .C1(GND_net), .D1(GND_net), .CIN(n650), 
          .COUT(n651));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_39.INIT0 = 16'h5999;
    defparam sub_40_add_2_39.INIT1 = 16'h5999;
    defparam sub_40_add_2_39.INJECT1_0 = "NO";
    defparam sub_40_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_37 (.A0(d9[35]), .B0(d_d9[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[36]), .B1(d_d9[36]), .C1(GND_net), .D1(GND_net), .CIN(n649), 
          .COUT(n650));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_37.INIT0 = 16'h5999;
    defparam sub_40_add_2_37.INIT1 = 16'h5999;
    defparam sub_40_add_2_37.INJECT1_0 = "NO";
    defparam sub_40_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_35 (.A0(d9[33]), .B0(d_d9[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[34]), .B1(d_d9[34]), .C1(GND_net), .D1(GND_net), .CIN(n648), 
          .COUT(n649));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_35.INIT0 = 16'h5999;
    defparam sub_40_add_2_35.INIT1 = 16'h5999;
    defparam sub_40_add_2_35.INJECT1_0 = "NO";
    defparam sub_40_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_33 (.A0(d9[31]), .B0(d_d9[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[32]), .B1(d_d9[32]), .C1(GND_net), .D1(GND_net), .CIN(n647), 
          .COUT(n648));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_33.INIT0 = 16'h5999;
    defparam sub_40_add_2_33.INIT1 = 16'h5999;
    defparam sub_40_add_2_33.INJECT1_0 = "NO";
    defparam sub_40_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_31 (.A0(d9[29]), .B0(d_d9[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[30]), .B1(d_d9[30]), .C1(GND_net), .D1(GND_net), .CIN(n646), 
          .COUT(n647));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_31.INIT0 = 16'h5999;
    defparam sub_40_add_2_31.INIT1 = 16'h5999;
    defparam sub_40_add_2_31.INJECT1_0 = "NO";
    defparam sub_40_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_29 (.A0(d9[27]), .B0(d_d9[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[28]), .B1(d_d9[28]), .C1(GND_net), .D1(GND_net), .CIN(n645), 
          .COUT(n646));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_29.INIT0 = 16'h5999;
    defparam sub_40_add_2_29.INIT1 = 16'h5999;
    defparam sub_40_add_2_29.INJECT1_0 = "NO";
    defparam sub_40_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_27 (.A0(d9[25]), .B0(d_d9[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[26]), .B1(d_d9[26]), .C1(GND_net), .D1(GND_net), .CIN(n644), 
          .COUT(n645));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_27.INIT0 = 16'h5999;
    defparam sub_40_add_2_27.INIT1 = 16'h5999;
    defparam sub_40_add_2_27.INJECT1_0 = "NO";
    defparam sub_40_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_25 (.A0(d9[23]), .B0(d_d9[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[24]), .B1(d_d9[24]), .C1(GND_net), .D1(GND_net), .CIN(n643), 
          .COUT(n644));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_25.INIT0 = 16'h5999;
    defparam sub_40_add_2_25.INIT1 = 16'h5999;
    defparam sub_40_add_2_25.INJECT1_0 = "NO";
    defparam sub_40_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_23 (.A0(d9[21]), .B0(d_d9[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[22]), .B1(d_d9[22]), .C1(GND_net), .D1(GND_net), .CIN(n642), 
          .COUT(n643));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_23.INIT0 = 16'h5999;
    defparam sub_40_add_2_23.INIT1 = 16'h5999;
    defparam sub_40_add_2_23.INJECT1_0 = "NO";
    defparam sub_40_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_21 (.A0(d9[19]), .B0(d_d9[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[20]), .B1(d_d9[20]), .C1(GND_net), .D1(GND_net), .CIN(n641), 
          .COUT(n642));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_21.INIT0 = 16'h5999;
    defparam sub_40_add_2_21.INIT1 = 16'h5999;
    defparam sub_40_add_2_21.INJECT1_0 = "NO";
    defparam sub_40_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_19 (.A0(d9[17]), .B0(d_d9[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[18]), .B1(d_d9[18]), .C1(GND_net), .D1(GND_net), .CIN(n640), 
          .COUT(n641));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_19.INIT0 = 16'h5999;
    defparam sub_40_add_2_19.INIT1 = 16'h5999;
    defparam sub_40_add_2_19.INJECT1_0 = "NO";
    defparam sub_40_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_17 (.A0(d9[15]), .B0(d_d9[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[16]), .B1(d_d9[16]), .C1(GND_net), .D1(GND_net), .CIN(n639), 
          .COUT(n640));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_17.INIT0 = 16'h5999;
    defparam sub_40_add_2_17.INIT1 = 16'h5999;
    defparam sub_40_add_2_17.INJECT1_0 = "NO";
    defparam sub_40_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_15 (.A0(d9[13]), .B0(d_d9[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[14]), .B1(d_d9[14]), .C1(GND_net), .D1(GND_net), .CIN(n638), 
          .COUT(n639));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_15.INIT0 = 16'h5999;
    defparam sub_40_add_2_15.INIT1 = 16'h5999;
    defparam sub_40_add_2_15.INJECT1_0 = "NO";
    defparam sub_40_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[12]), .B1(d_d9[12]), .C1(GND_net), .D1(GND_net), .CIN(n637), 
          .COUT(n638));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_13.INIT0 = 16'h5999;
    defparam sub_40_add_2_13.INIT1 = 16'h5999;
    defparam sub_40_add_2_13.INJECT1_0 = "NO";
    defparam sub_40_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n636), 
          .COUT(n637));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_11.INIT0 = 16'h5999;
    defparam sub_40_add_2_11.INIT1 = 16'h5999;
    defparam sub_40_add_2_11.INJECT1_0 = "NO";
    defparam sub_40_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n635), 
          .COUT(n636));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_9.INIT0 = 16'h5999;
    defparam sub_40_add_2_9.INIT1 = 16'h5999;
    defparam sub_40_add_2_9.INJECT1_0 = "NO";
    defparam sub_40_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n634), 
          .COUT(n635));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_7.INIT0 = 16'h5999;
    defparam sub_40_add_2_7.INIT1 = 16'h5999;
    defparam sub_40_add_2_7.INJECT1_0 = "NO";
    defparam sub_40_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n633), 
          .COUT(n634));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_5.INIT0 = 16'h5999;
    defparam sub_40_add_2_5.INIT1 = 16'h5999;
    defparam sub_40_add_2_5.INJECT1_0 = "NO";
    defparam sub_40_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n632), 
          .COUT(n633));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_3.INIT0 = 16'h5999;
    defparam sub_40_add_2_3.INIT1 = 16'h5999;
    defparam sub_40_add_2_3.INJECT1_0 = "NO";
    defparam sub_40_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n632));   // c:/users/user/lattice/fpgasdr/cic.v(120[12:21])
    defparam sub_40_add_2_1.INIT0 = 16'h0000;
    defparam sub_40_add_2_1.INIT1 = 16'h5999;
    defparam sub_40_add_2_1.INJECT1_0 = "NO";
    defparam sub_40_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_69 (.A0(d_tmp[67]), .B0(d_d_tmp[67]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n631), .S0(n1379[67]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_69.INIT0 = 16'h5999;
    defparam sub_36_add_2_69.INIT1 = 16'h0000;
    defparam sub_36_add_2_69.INJECT1_0 = "NO";
    defparam sub_36_add_2_69.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_67 (.A0(d_tmp[65]), .B0(d_d_tmp[65]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[66]), .B1(d_d_tmp[66]), .C1(GND_net), 
          .D1(GND_net), .CIN(n630), .COUT(n631), .S0(n1379[65]), .S1(n1379[66]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_67.INIT0 = 16'h5999;
    defparam sub_36_add_2_67.INIT1 = 16'h5999;
    defparam sub_36_add_2_67.INJECT1_0 = "NO";
    defparam sub_36_add_2_67.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_65 (.A0(d_tmp[63]), .B0(d_d_tmp[63]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[64]), .B1(d_d_tmp[64]), .C1(GND_net), 
          .D1(GND_net), .CIN(n629), .COUT(n630), .S0(n1379[63]), .S1(n1379[64]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_65.INIT0 = 16'h5999;
    defparam sub_36_add_2_65.INIT1 = 16'h5999;
    defparam sub_36_add_2_65.INJECT1_0 = "NO";
    defparam sub_36_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_63 (.A0(d_tmp[61]), .B0(d_d_tmp[61]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[62]), .B1(d_d_tmp[62]), .C1(GND_net), 
          .D1(GND_net), .CIN(n628), .COUT(n629), .S0(n1379[61]), .S1(n1379[62]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_63.INIT0 = 16'h5999;
    defparam sub_36_add_2_63.INIT1 = 16'h5999;
    defparam sub_36_add_2_63.INJECT1_0 = "NO";
    defparam sub_36_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_61 (.A0(d_tmp[59]), .B0(d_d_tmp[59]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[60]), .B1(d_d_tmp[60]), .C1(GND_net), 
          .D1(GND_net), .CIN(n627), .COUT(n628), .S0(n1379[59]), .S1(n1379[60]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_61.INIT0 = 16'h5999;
    defparam sub_36_add_2_61.INIT1 = 16'h5999;
    defparam sub_36_add_2_61.INJECT1_0 = "NO";
    defparam sub_36_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_59 (.A0(d_tmp[57]), .B0(d_d_tmp[57]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[58]), .B1(d_d_tmp[58]), .C1(GND_net), 
          .D1(GND_net), .CIN(n626), .COUT(n627), .S0(n1379[57]), .S1(n1379[58]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_59.INIT0 = 16'h5999;
    defparam sub_36_add_2_59.INIT1 = 16'h5999;
    defparam sub_36_add_2_59.INJECT1_0 = "NO";
    defparam sub_36_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_57 (.A0(d_tmp[55]), .B0(d_d_tmp[55]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[56]), .B1(d_d_tmp[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n625), .COUT(n626), .S0(n1379[55]), .S1(n1379[56]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_57.INIT0 = 16'h5999;
    defparam sub_36_add_2_57.INIT1 = 16'h5999;
    defparam sub_36_add_2_57.INJECT1_0 = "NO";
    defparam sub_36_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_55 (.A0(d_tmp[53]), .B0(d_d_tmp[53]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[54]), .B1(d_d_tmp[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n624), .COUT(n625), .S0(n1379[53]), .S1(n1379[54]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_55.INIT0 = 16'h5999;
    defparam sub_36_add_2_55.INIT1 = 16'h5999;
    defparam sub_36_add_2_55.INJECT1_0 = "NO";
    defparam sub_36_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_53 (.A0(d_tmp[51]), .B0(d_d_tmp[51]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[52]), .B1(d_d_tmp[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n623), .COUT(n624), .S0(n1379[51]), .S1(n1379[52]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_53.INIT0 = 16'h5999;
    defparam sub_36_add_2_53.INIT1 = 16'h5999;
    defparam sub_36_add_2_53.INJECT1_0 = "NO";
    defparam sub_36_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_51 (.A0(d_tmp[49]), .B0(d_d_tmp[49]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[50]), .B1(d_d_tmp[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n622), .COUT(n623), .S0(n1379[49]), .S1(n1379[50]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_51.INIT0 = 16'h5999;
    defparam sub_36_add_2_51.INIT1 = 16'h5999;
    defparam sub_36_add_2_51.INJECT1_0 = "NO";
    defparam sub_36_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_49 (.A0(d_tmp[47]), .B0(d_d_tmp[47]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[48]), .B1(d_d_tmp[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n621), .COUT(n622), .S0(n1379[47]), .S1(n1379[48]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_49.INIT0 = 16'h5999;
    defparam sub_36_add_2_49.INIT1 = 16'h5999;
    defparam sub_36_add_2_49.INJECT1_0 = "NO";
    defparam sub_36_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_47 (.A0(d_tmp[45]), .B0(d_d_tmp[45]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[46]), .B1(d_d_tmp[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n620), .COUT(n621), .S0(n1379[45]), .S1(n1379[46]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_47.INIT0 = 16'h5999;
    defparam sub_36_add_2_47.INIT1 = 16'h5999;
    defparam sub_36_add_2_47.INJECT1_0 = "NO";
    defparam sub_36_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_45 (.A0(d_tmp[43]), .B0(d_d_tmp[43]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[44]), .B1(d_d_tmp[44]), .C1(GND_net), 
          .D1(GND_net), .CIN(n619), .COUT(n620), .S0(n1379[43]), .S1(n1379[44]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_45.INIT0 = 16'h5999;
    defparam sub_36_add_2_45.INIT1 = 16'h5999;
    defparam sub_36_add_2_45.INJECT1_0 = "NO";
    defparam sub_36_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_43 (.A0(d_tmp[41]), .B0(d_d_tmp[41]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[42]), .B1(d_d_tmp[42]), .C1(GND_net), 
          .D1(GND_net), .CIN(n618), .COUT(n619), .S0(n1379[41]), .S1(n1379[42]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_43.INIT0 = 16'h5999;
    defparam sub_36_add_2_43.INIT1 = 16'h5999;
    defparam sub_36_add_2_43.INJECT1_0 = "NO";
    defparam sub_36_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_41 (.A0(d_tmp[39]), .B0(d_d_tmp[39]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[40]), .B1(d_d_tmp[40]), .C1(GND_net), 
          .D1(GND_net), .CIN(n617), .COUT(n618), .S0(n1379[39]), .S1(n1379[40]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_41.INIT0 = 16'h5999;
    defparam sub_36_add_2_41.INIT1 = 16'h5999;
    defparam sub_36_add_2_41.INJECT1_0 = "NO";
    defparam sub_36_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_39 (.A0(d_tmp[37]), .B0(d_d_tmp[37]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[38]), .B1(d_d_tmp[38]), .C1(GND_net), 
          .D1(GND_net), .CIN(n616), .COUT(n617), .S0(n1379[37]), .S1(n1379[38]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_39.INIT0 = 16'h5999;
    defparam sub_36_add_2_39.INIT1 = 16'h5999;
    defparam sub_36_add_2_39.INJECT1_0 = "NO";
    defparam sub_36_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_37 (.A0(d_tmp[35]), .B0(d_d_tmp[35]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[36]), .B1(d_d_tmp[36]), .C1(GND_net), 
          .D1(GND_net), .CIN(n615), .COUT(n616), .S0(n1379[35]), .S1(n1379[36]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_37.INIT0 = 16'h5999;
    defparam sub_36_add_2_37.INIT1 = 16'h5999;
    defparam sub_36_add_2_37.INJECT1_0 = "NO";
    defparam sub_36_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_35 (.A0(d_tmp[33]), .B0(d_d_tmp[33]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[34]), .B1(d_d_tmp[34]), .C1(GND_net), 
          .D1(GND_net), .CIN(n614), .COUT(n615), .S0(n1379[33]), .S1(n1379[34]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_35.INIT0 = 16'h5999;
    defparam sub_36_add_2_35.INIT1 = 16'h5999;
    defparam sub_36_add_2_35.INJECT1_0 = "NO";
    defparam sub_36_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_33 (.A0(d_tmp[31]), .B0(d_d_tmp[31]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[32]), .B1(d_d_tmp[32]), .C1(GND_net), 
          .D1(GND_net), .CIN(n613), .COUT(n614), .S0(n1379[31]), .S1(n1379[32]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_33.INIT0 = 16'h5999;
    defparam sub_36_add_2_33.INIT1 = 16'h5999;
    defparam sub_36_add_2_33.INJECT1_0 = "NO";
    defparam sub_36_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_31 (.A0(d_tmp[29]), .B0(d_d_tmp[29]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[30]), .B1(d_d_tmp[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n612), .COUT(n613), .S0(n1379[29]), .S1(n1379[30]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_31.INIT0 = 16'h5999;
    defparam sub_36_add_2_31.INIT1 = 16'h5999;
    defparam sub_36_add_2_31.INJECT1_0 = "NO";
    defparam sub_36_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_29 (.A0(d_tmp[27]), .B0(d_d_tmp[27]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[28]), .B1(d_d_tmp[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n611), .COUT(n612), .S0(n1379[27]), .S1(n1379[28]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_29.INIT0 = 16'h5999;
    defparam sub_36_add_2_29.INIT1 = 16'h5999;
    defparam sub_36_add_2_29.INJECT1_0 = "NO";
    defparam sub_36_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_27 (.A0(d_tmp[25]), .B0(d_d_tmp[25]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[26]), .B1(d_d_tmp[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n610), .COUT(n611), .S0(n1379[25]), .S1(n1379[26]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_27.INIT0 = 16'h5999;
    defparam sub_36_add_2_27.INIT1 = 16'h5999;
    defparam sub_36_add_2_27.INJECT1_0 = "NO";
    defparam sub_36_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_25 (.A0(d_tmp[23]), .B0(d_d_tmp[23]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[24]), .B1(d_d_tmp[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n609), .COUT(n610), .S0(n1379[23]), .S1(n1379[24]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_25.INIT0 = 16'h5999;
    defparam sub_36_add_2_25.INIT1 = 16'h5999;
    defparam sub_36_add_2_25.INJECT1_0 = "NO";
    defparam sub_36_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_23 (.A0(d_tmp[21]), .B0(d_d_tmp[21]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[22]), .B1(d_d_tmp[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n608), .COUT(n609), .S0(n1379[21]), .S1(n1379[22]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_23.INIT0 = 16'h5999;
    defparam sub_36_add_2_23.INIT1 = 16'h5999;
    defparam sub_36_add_2_23.INJECT1_0 = "NO";
    defparam sub_36_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_21 (.A0(d_tmp[19]), .B0(d_d_tmp[19]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[20]), .B1(d_d_tmp[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n607), .COUT(n608), .S0(n1379[19]), .S1(n1379[20]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_21.INIT0 = 16'h5999;
    defparam sub_36_add_2_21.INIT1 = 16'h5999;
    defparam sub_36_add_2_21.INJECT1_0 = "NO";
    defparam sub_36_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_19 (.A0(d_tmp[17]), .B0(d_d_tmp[17]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[18]), .B1(d_d_tmp[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n606), .COUT(n607), .S0(n1379[17]), .S1(n1379[18]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_19.INIT0 = 16'h5999;
    defparam sub_36_add_2_19.INIT1 = 16'h5999;
    defparam sub_36_add_2_19.INJECT1_0 = "NO";
    defparam sub_36_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_17 (.A0(d_tmp[15]), .B0(d_d_tmp[15]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[16]), .B1(d_d_tmp[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n605), .COUT(n606), .S0(n1379[15]), .S1(n1379[16]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_17.INIT0 = 16'h5999;
    defparam sub_36_add_2_17.INIT1 = 16'h5999;
    defparam sub_36_add_2_17.INJECT1_0 = "NO";
    defparam sub_36_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_15 (.A0(d_tmp[13]), .B0(d_d_tmp[13]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[14]), .B1(d_d_tmp[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n604), .COUT(n605), .S0(n1379[13]), .S1(n1379[14]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_15.INIT0 = 16'h5999;
    defparam sub_36_add_2_15.INIT1 = 16'h5999;
    defparam sub_36_add_2_15.INJECT1_0 = "NO";
    defparam sub_36_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[12]), .B1(d_d_tmp[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n603), .COUT(n604), .S0(n1379[11]), .S1(n1379[12]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_13.INIT0 = 16'h5999;
    defparam sub_36_add_2_13.INIT1 = 16'h5999;
    defparam sub_36_add_2_13.INJECT1_0 = "NO";
    defparam sub_36_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n602), .COUT(n603), .S0(n1379[9]), .S1(n1379[10]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_11.INIT0 = 16'h5999;
    defparam sub_36_add_2_11.INIT1 = 16'h5999;
    defparam sub_36_add_2_11.INJECT1_0 = "NO";
    defparam sub_36_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n601), .COUT(n602), .S0(n1379[7]), .S1(n1379[8]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_9.INIT0 = 16'h5999;
    defparam sub_36_add_2_9.INIT1 = 16'h5999;
    defparam sub_36_add_2_9.INJECT1_0 = "NO";
    defparam sub_36_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n600), .COUT(n601), .S0(n1379[5]), .S1(n1379[6]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_7.INIT0 = 16'h5999;
    defparam sub_36_add_2_7.INIT1 = 16'h5999;
    defparam sub_36_add_2_7.INJECT1_0 = "NO";
    defparam sub_36_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n599), .COUT(n600), .S0(n1379[3]), .S1(n1379[4]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_5.INIT0 = 16'h5999;
    defparam sub_36_add_2_5.INIT1 = 16'h5999;
    defparam sub_36_add_2_5.INJECT1_0 = "NO";
    defparam sub_36_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n598), .COUT(n599), .S0(n1379[1]), .S1(n1379[2]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_3.INIT0 = 16'h5999;
    defparam sub_36_add_2_3.INIT1 = 16'h5999;
    defparam sub_36_add_2_3.INJECT1_0 = "NO";
    defparam sub_36_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n598), .S1(n1379[0]));   // c:/users/user/lattice/fpgasdr/cic.v(108[11:26])
    defparam sub_36_add_2_1.INIT0 = 16'h0000;
    defparam sub_36_add_2_1.INIT1 = 16'h5999;
    defparam sub_36_add_2_1.INJECT1_0 = "NO";
    defparam sub_36_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_69 (.A0(d7[67]), .B0(d_d7[67]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n597), 
          .S0(n1517[67]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_69.INIT0 = 16'h5999;
    defparam sub_38_add_2_69.INIT1 = 16'h0000;
    defparam sub_38_add_2_69.INJECT1_0 = "NO";
    defparam sub_38_add_2_69.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_67 (.A0(d7[65]), .B0(d_d7[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[66]), .B1(d_d7[66]), .C1(GND_net), .D1(GND_net), .CIN(n596), 
          .COUT(n597), .S0(n1517[65]), .S1(n1517[66]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_67.INIT0 = 16'h5999;
    defparam sub_38_add_2_67.INIT1 = 16'h5999;
    defparam sub_38_add_2_67.INJECT1_0 = "NO";
    defparam sub_38_add_2_67.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_65 (.A0(d7[63]), .B0(d_d7[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[64]), .B1(d_d7[64]), .C1(GND_net), .D1(GND_net), .CIN(n595), 
          .COUT(n596), .S0(n1517[63]), .S1(n1517[64]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_65.INIT0 = 16'h5999;
    defparam sub_38_add_2_65.INIT1 = 16'h5999;
    defparam sub_38_add_2_65.INJECT1_0 = "NO";
    defparam sub_38_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_63 (.A0(d7[61]), .B0(d_d7[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[62]), .B1(d_d7[62]), .C1(GND_net), .D1(GND_net), .CIN(n594), 
          .COUT(n595), .S0(n1517[61]), .S1(n1517[62]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_63.INIT0 = 16'h5999;
    defparam sub_38_add_2_63.INIT1 = 16'h5999;
    defparam sub_38_add_2_63.INJECT1_0 = "NO";
    defparam sub_38_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_61 (.A0(d7[59]), .B0(d_d7[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[60]), .B1(d_d7[60]), .C1(GND_net), .D1(GND_net), .CIN(n593), 
          .COUT(n594), .S0(n1517[59]), .S1(n1517[60]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_61.INIT0 = 16'h5999;
    defparam sub_38_add_2_61.INIT1 = 16'h5999;
    defparam sub_38_add_2_61.INJECT1_0 = "NO";
    defparam sub_38_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_59 (.A0(d7[57]), .B0(d_d7[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[58]), .B1(d_d7[58]), .C1(GND_net), .D1(GND_net), .CIN(n592), 
          .COUT(n593), .S0(n1517[57]), .S1(n1517[58]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_59.INIT0 = 16'h5999;
    defparam sub_38_add_2_59.INIT1 = 16'h5999;
    defparam sub_38_add_2_59.INJECT1_0 = "NO";
    defparam sub_38_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_57 (.A0(d7[55]), .B0(d_d7[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[56]), .B1(d_d7[56]), .C1(GND_net), .D1(GND_net), .CIN(n591), 
          .COUT(n592), .S0(n1517[55]), .S1(n1517[56]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_57.INIT0 = 16'h5999;
    defparam sub_38_add_2_57.INIT1 = 16'h5999;
    defparam sub_38_add_2_57.INJECT1_0 = "NO";
    defparam sub_38_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_55 (.A0(d7[53]), .B0(d_d7[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[54]), .B1(d_d7[54]), .C1(GND_net), .D1(GND_net), .CIN(n590), 
          .COUT(n591), .S0(n1517[53]), .S1(n1517[54]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_55.INIT0 = 16'h5999;
    defparam sub_38_add_2_55.INIT1 = 16'h5999;
    defparam sub_38_add_2_55.INJECT1_0 = "NO";
    defparam sub_38_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_53 (.A0(d7[51]), .B0(d_d7[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[52]), .B1(d_d7[52]), .C1(GND_net), .D1(GND_net), .CIN(n589), 
          .COUT(n590), .S0(n1517[51]), .S1(n1517[52]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_53.INIT0 = 16'h5999;
    defparam sub_38_add_2_53.INIT1 = 16'h5999;
    defparam sub_38_add_2_53.INJECT1_0 = "NO";
    defparam sub_38_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_51 (.A0(d7[49]), .B0(d_d7[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[50]), .B1(d_d7[50]), .C1(GND_net), .D1(GND_net), .CIN(n588), 
          .COUT(n589), .S0(n1517[49]), .S1(n1517[50]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_51.INIT0 = 16'h5999;
    defparam sub_38_add_2_51.INIT1 = 16'h5999;
    defparam sub_38_add_2_51.INJECT1_0 = "NO";
    defparam sub_38_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_49 (.A0(d7[47]), .B0(d_d7[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[48]), .B1(d_d7[48]), .C1(GND_net), .D1(GND_net), .CIN(n587), 
          .COUT(n588), .S0(n1517[47]), .S1(n1517[48]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_49.INIT0 = 16'h5999;
    defparam sub_38_add_2_49.INIT1 = 16'h5999;
    defparam sub_38_add_2_49.INJECT1_0 = "NO";
    defparam sub_38_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_47 (.A0(d7[45]), .B0(d_d7[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[46]), .B1(d_d7[46]), .C1(GND_net), .D1(GND_net), .CIN(n586), 
          .COUT(n587), .S0(n1517[45]), .S1(n1517[46]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_47.INIT0 = 16'h5999;
    defparam sub_38_add_2_47.INIT1 = 16'h5999;
    defparam sub_38_add_2_47.INJECT1_0 = "NO";
    defparam sub_38_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_45 (.A0(d7[43]), .B0(d_d7[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[44]), .B1(d_d7[44]), .C1(GND_net), .D1(GND_net), .CIN(n585), 
          .COUT(n586), .S0(n1517[43]), .S1(n1517[44]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_45.INIT0 = 16'h5999;
    defparam sub_38_add_2_45.INIT1 = 16'h5999;
    defparam sub_38_add_2_45.INJECT1_0 = "NO";
    defparam sub_38_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_43 (.A0(d7[41]), .B0(d_d7[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[42]), .B1(d_d7[42]), .C1(GND_net), .D1(GND_net), .CIN(n584), 
          .COUT(n585), .S0(n1517[41]), .S1(n1517[42]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_43.INIT0 = 16'h5999;
    defparam sub_38_add_2_43.INIT1 = 16'h5999;
    defparam sub_38_add_2_43.INJECT1_0 = "NO";
    defparam sub_38_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_41 (.A0(d7[39]), .B0(d_d7[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[40]), .B1(d_d7[40]), .C1(GND_net), .D1(GND_net), .CIN(n583), 
          .COUT(n584), .S0(n1517[39]), .S1(n1517[40]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_41.INIT0 = 16'h5999;
    defparam sub_38_add_2_41.INIT1 = 16'h5999;
    defparam sub_38_add_2_41.INJECT1_0 = "NO";
    defparam sub_38_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_39 (.A0(d7[37]), .B0(d_d7[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[38]), .B1(d_d7[38]), .C1(GND_net), .D1(GND_net), .CIN(n582), 
          .COUT(n583), .S0(n1517[37]), .S1(n1517[38]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_39.INIT0 = 16'h5999;
    defparam sub_38_add_2_39.INIT1 = 16'h5999;
    defparam sub_38_add_2_39.INJECT1_0 = "NO";
    defparam sub_38_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_37 (.A0(d7[35]), .B0(d_d7[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[36]), .B1(d_d7[36]), .C1(GND_net), .D1(GND_net), .CIN(n581), 
          .COUT(n582), .S0(n1517[35]), .S1(n1517[36]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_37.INIT0 = 16'h5999;
    defparam sub_38_add_2_37.INIT1 = 16'h5999;
    defparam sub_38_add_2_37.INJECT1_0 = "NO";
    defparam sub_38_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_35 (.A0(d7[33]), .B0(d_d7[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[34]), .B1(d_d7[34]), .C1(GND_net), .D1(GND_net), .CIN(n580), 
          .COUT(n581), .S0(n1517[33]), .S1(n1517[34]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_35.INIT0 = 16'h5999;
    defparam sub_38_add_2_35.INIT1 = 16'h5999;
    defparam sub_38_add_2_35.INJECT1_0 = "NO";
    defparam sub_38_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_33 (.A0(d7[31]), .B0(d_d7[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[32]), .B1(d_d7[32]), .C1(GND_net), .D1(GND_net), .CIN(n579), 
          .COUT(n580), .S0(n1517[31]), .S1(n1517[32]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_33.INIT0 = 16'h5999;
    defparam sub_38_add_2_33.INIT1 = 16'h5999;
    defparam sub_38_add_2_33.INJECT1_0 = "NO";
    defparam sub_38_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_31 (.A0(d7[29]), .B0(d_d7[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[30]), .B1(d_d7[30]), .C1(GND_net), .D1(GND_net), .CIN(n578), 
          .COUT(n579), .S0(n1517[29]), .S1(n1517[30]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_31.INIT0 = 16'h5999;
    defparam sub_38_add_2_31.INIT1 = 16'h5999;
    defparam sub_38_add_2_31.INJECT1_0 = "NO";
    defparam sub_38_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_29 (.A0(d7[27]), .B0(d_d7[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[28]), .B1(d_d7[28]), .C1(GND_net), .D1(GND_net), .CIN(n577), 
          .COUT(n578), .S0(n1517[27]), .S1(n1517[28]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_29.INIT0 = 16'h5999;
    defparam sub_38_add_2_29.INIT1 = 16'h5999;
    defparam sub_38_add_2_29.INJECT1_0 = "NO";
    defparam sub_38_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_27 (.A0(d7[25]), .B0(d_d7[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[26]), .B1(d_d7[26]), .C1(GND_net), .D1(GND_net), .CIN(n576), 
          .COUT(n577), .S0(n1517[25]), .S1(n1517[26]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_27.INIT0 = 16'h5999;
    defparam sub_38_add_2_27.INIT1 = 16'h5999;
    defparam sub_38_add_2_27.INJECT1_0 = "NO";
    defparam sub_38_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_25 (.A0(d7[23]), .B0(d_d7[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[24]), .B1(d_d7[24]), .C1(GND_net), .D1(GND_net), .CIN(n575), 
          .COUT(n576), .S0(n1517[23]), .S1(n1517[24]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_25.INIT0 = 16'h5999;
    defparam sub_38_add_2_25.INIT1 = 16'h5999;
    defparam sub_38_add_2_25.INJECT1_0 = "NO";
    defparam sub_38_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_23 (.A0(d7[21]), .B0(d_d7[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[22]), .B1(d_d7[22]), .C1(GND_net), .D1(GND_net), .CIN(n574), 
          .COUT(n575), .S0(n1517[21]), .S1(n1517[22]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_23.INIT0 = 16'h5999;
    defparam sub_38_add_2_23.INIT1 = 16'h5999;
    defparam sub_38_add_2_23.INJECT1_0 = "NO";
    defparam sub_38_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_21 (.A0(d7[19]), .B0(d_d7[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[20]), .B1(d_d7[20]), .C1(GND_net), .D1(GND_net), .CIN(n573), 
          .COUT(n574), .S0(n1517[19]), .S1(n1517[20]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_21.INIT0 = 16'h5999;
    defparam sub_38_add_2_21.INIT1 = 16'h5999;
    defparam sub_38_add_2_21.INJECT1_0 = "NO";
    defparam sub_38_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_19 (.A0(d7[17]), .B0(d_d7[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[18]), .B1(d_d7[18]), .C1(GND_net), .D1(GND_net), .CIN(n572), 
          .COUT(n573), .S0(n1517[17]), .S1(n1517[18]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_19.INIT0 = 16'h5999;
    defparam sub_38_add_2_19.INIT1 = 16'h5999;
    defparam sub_38_add_2_19.INJECT1_0 = "NO";
    defparam sub_38_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_17 (.A0(d7[15]), .B0(d_d7[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[16]), .B1(d_d7[16]), .C1(GND_net), .D1(GND_net), .CIN(n571), 
          .COUT(n572), .S0(n1517[15]), .S1(n1517[16]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_17.INIT0 = 16'h5999;
    defparam sub_38_add_2_17.INIT1 = 16'h5999;
    defparam sub_38_add_2_17.INJECT1_0 = "NO";
    defparam sub_38_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_15 (.A0(d7[13]), .B0(d_d7[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[14]), .B1(d_d7[14]), .C1(GND_net), .D1(GND_net), .CIN(n570), 
          .COUT(n571), .S0(n1517[13]), .S1(n1517[14]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_15.INIT0 = 16'h5999;
    defparam sub_38_add_2_15.INIT1 = 16'h5999;
    defparam sub_38_add_2_15.INJECT1_0 = "NO";
    defparam sub_38_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[12]), .B1(d_d7[12]), .C1(GND_net), .D1(GND_net), .CIN(n569), 
          .COUT(n570), .S0(n1517[11]), .S1(n1517[12]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_13.INIT0 = 16'h5999;
    defparam sub_38_add_2_13.INIT1 = 16'h5999;
    defparam sub_38_add_2_13.INJECT1_0 = "NO";
    defparam sub_38_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n568), 
          .COUT(n569), .S0(n1517[9]), .S1(n1517[10]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_11.INIT0 = 16'h5999;
    defparam sub_38_add_2_11.INIT1 = 16'h5999;
    defparam sub_38_add_2_11.INJECT1_0 = "NO";
    defparam sub_38_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n567), 
          .COUT(n568), .S0(n1517[7]), .S1(n1517[8]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_9.INIT0 = 16'h5999;
    defparam sub_38_add_2_9.INIT1 = 16'h5999;
    defparam sub_38_add_2_9.INJECT1_0 = "NO";
    defparam sub_38_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n566), 
          .COUT(n567), .S0(n1517[5]), .S1(n1517[6]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_7.INIT0 = 16'h5999;
    defparam sub_38_add_2_7.INIT1 = 16'h5999;
    defparam sub_38_add_2_7.INJECT1_0 = "NO";
    defparam sub_38_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n565), 
          .COUT(n566), .S0(n1517[3]), .S1(n1517[4]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_5.INIT0 = 16'h5999;
    defparam sub_38_add_2_5.INIT1 = 16'h5999;
    defparam sub_38_add_2_5.INJECT1_0 = "NO";
    defparam sub_38_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n564), 
          .COUT(n565), .S0(n1517[1]), .S1(n1517[2]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_3.INIT0 = 16'h5999;
    defparam sub_38_add_2_3.INIT1 = 16'h5999;
    defparam sub_38_add_2_3.INJECT1_0 = "NO";
    defparam sub_38_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n564), 
          .S1(n1517[0]));   // c:/users/user/lattice/fpgasdr/cic.v(114[11:20])
    defparam sub_38_add_2_1.INIT0 = 16'h0000;
    defparam sub_38_add_2_1.INIT1 = 16'h5999;
    defparam sub_38_add_2_1.INJECT1_0 = "NO";
    defparam sub_38_add_2_1.INJECT1_1 = "NO";
    CCU2D add_7_68 (.A0(d4[66]), .B0(d5[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[67]), .B1(d5[67]), .C1(GND_net), .D1(GND_net), .CIN(n562), 
          .S0(d5_67__N_1485[66]), .S1(d5_67__N_1485[67]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_68.INIT0 = 16'h5666;
    defparam add_7_68.INIT1 = 16'h5666;
    defparam add_7_68.INJECT1_0 = "NO";
    defparam add_7_68.INJECT1_1 = "NO";
    CCU2D add_7_66 (.A0(d4[64]), .B0(d5[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[65]), .B1(d5[65]), .C1(GND_net), .D1(GND_net), .CIN(n561), 
          .COUT(n562), .S0(d5_67__N_1485[64]), .S1(d5_67__N_1485[65]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_66.INIT0 = 16'h5666;
    defparam add_7_66.INIT1 = 16'h5666;
    defparam add_7_66.INJECT1_0 = "NO";
    defparam add_7_66.INJECT1_1 = "NO";
    CCU2D add_7_64 (.A0(d4[62]), .B0(d5[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[63]), .B1(d5[63]), .C1(GND_net), .D1(GND_net), .CIN(n560), 
          .COUT(n561), .S0(d5_67__N_1485[62]), .S1(d5_67__N_1485[63]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_64.INIT0 = 16'h5666;
    defparam add_7_64.INIT1 = 16'h5666;
    defparam add_7_64.INJECT1_0 = "NO";
    defparam add_7_64.INJECT1_1 = "NO";
    CCU2D add_7_62 (.A0(d4[60]), .B0(d5[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[61]), .B1(d5[61]), .C1(GND_net), .D1(GND_net), .CIN(n559), 
          .COUT(n560), .S0(d5_67__N_1485[60]), .S1(d5_67__N_1485[61]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_62.INIT0 = 16'h5666;
    defparam add_7_62.INIT1 = 16'h5666;
    defparam add_7_62.INJECT1_0 = "NO";
    defparam add_7_62.INJECT1_1 = "NO";
    CCU2D add_7_60 (.A0(d4[58]), .B0(d5[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[59]), .B1(d5[59]), .C1(GND_net), .D1(GND_net), .CIN(n558), 
          .COUT(n559), .S0(d5_67__N_1485[58]), .S1(d5_67__N_1485[59]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_60.INIT0 = 16'h5666;
    defparam add_7_60.INIT1 = 16'h5666;
    defparam add_7_60.INJECT1_0 = "NO";
    defparam add_7_60.INJECT1_1 = "NO";
    CCU2D add_7_58 (.A0(d4[56]), .B0(d5[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[57]), .B1(d5[57]), .C1(GND_net), .D1(GND_net), .CIN(n557), 
          .COUT(n558), .S0(d5_67__N_1485[56]), .S1(d5_67__N_1485[57]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_58.INIT0 = 16'h5666;
    defparam add_7_58.INIT1 = 16'h5666;
    defparam add_7_58.INJECT1_0 = "NO";
    defparam add_7_58.INJECT1_1 = "NO";
    CCU2D add_7_56 (.A0(d4[54]), .B0(d5[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[55]), .B1(d5[55]), .C1(GND_net), .D1(GND_net), .CIN(n556), 
          .COUT(n557), .S0(d5_67__N_1485[54]), .S1(d5_67__N_1485[55]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_56.INIT0 = 16'h5666;
    defparam add_7_56.INIT1 = 16'h5666;
    defparam add_7_56.INJECT1_0 = "NO";
    defparam add_7_56.INJECT1_1 = "NO";
    CCU2D add_7_54 (.A0(d4[52]), .B0(d5[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[53]), .B1(d5[53]), .C1(GND_net), .D1(GND_net), .CIN(n555), 
          .COUT(n556), .S0(d5_67__N_1485[52]), .S1(d5_67__N_1485[53]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_54.INIT0 = 16'h5666;
    defparam add_7_54.INIT1 = 16'h5666;
    defparam add_7_54.INJECT1_0 = "NO";
    defparam add_7_54.INJECT1_1 = "NO";
    CCU2D add_7_52 (.A0(d4[50]), .B0(d5[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[51]), .B1(d5[51]), .C1(GND_net), .D1(GND_net), .CIN(n554), 
          .COUT(n555), .S0(d5_67__N_1485[50]), .S1(d5_67__N_1485[51]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_52.INIT0 = 16'h5666;
    defparam add_7_52.INIT1 = 16'h5666;
    defparam add_7_52.INJECT1_0 = "NO";
    defparam add_7_52.INJECT1_1 = "NO";
    CCU2D add_7_50 (.A0(d4[48]), .B0(d5[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[49]), .B1(d5[49]), .C1(GND_net), .D1(GND_net), .CIN(n553), 
          .COUT(n554), .S0(d5_67__N_1485[48]), .S1(d5_67__N_1485[49]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_50.INIT0 = 16'h5666;
    defparam add_7_50.INIT1 = 16'h5666;
    defparam add_7_50.INJECT1_0 = "NO";
    defparam add_7_50.INJECT1_1 = "NO";
    CCU2D add_7_48 (.A0(d4[46]), .B0(d5[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[47]), .B1(d5[47]), .C1(GND_net), .D1(GND_net), .CIN(n552), 
          .COUT(n553), .S0(d5_67__N_1485[46]), .S1(d5_67__N_1485[47]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_48.INIT0 = 16'h5666;
    defparam add_7_48.INIT1 = 16'h5666;
    defparam add_7_48.INJECT1_0 = "NO";
    defparam add_7_48.INJECT1_1 = "NO";
    CCU2D add_7_46 (.A0(d4[44]), .B0(d5[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[45]), .B1(d5[45]), .C1(GND_net), .D1(GND_net), .CIN(n551), 
          .COUT(n552), .S0(d5_67__N_1485[44]), .S1(d5_67__N_1485[45]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_46.INIT0 = 16'h5666;
    defparam add_7_46.INIT1 = 16'h5666;
    defparam add_7_46.INJECT1_0 = "NO";
    defparam add_7_46.INJECT1_1 = "NO";
    CCU2D add_7_44 (.A0(d4[42]), .B0(d5[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[43]), .B1(d5[43]), .C1(GND_net), .D1(GND_net), .CIN(n550), 
          .COUT(n551), .S0(d5_67__N_1485[42]), .S1(d5_67__N_1485[43]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_44.INIT0 = 16'h5666;
    defparam add_7_44.INIT1 = 16'h5666;
    defparam add_7_44.INJECT1_0 = "NO";
    defparam add_7_44.INJECT1_1 = "NO";
    CCU2D add_7_42 (.A0(d4[40]), .B0(d5[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[41]), .B1(d5[41]), .C1(GND_net), .D1(GND_net), .CIN(n549), 
          .COUT(n550), .S0(d5_67__N_1485[40]), .S1(d5_67__N_1485[41]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_42.INIT0 = 16'h5666;
    defparam add_7_42.INIT1 = 16'h5666;
    defparam add_7_42.INJECT1_0 = "NO";
    defparam add_7_42.INJECT1_1 = "NO";
    CCU2D add_7_40 (.A0(d4[38]), .B0(d5[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[39]), .B1(d5[39]), .C1(GND_net), .D1(GND_net), .CIN(n548), 
          .COUT(n549), .S0(d5_67__N_1485[38]), .S1(d5_67__N_1485[39]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_40.INIT0 = 16'h5666;
    defparam add_7_40.INIT1 = 16'h5666;
    defparam add_7_40.INJECT1_0 = "NO";
    defparam add_7_40.INJECT1_1 = "NO";
    CCU2D add_7_38 (.A0(d4[36]), .B0(d5[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[37]), .B1(d5[37]), .C1(GND_net), .D1(GND_net), .CIN(n547), 
          .COUT(n548), .S0(d5_67__N_1485[36]), .S1(d5_67__N_1485[37]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_38.INIT0 = 16'h5666;
    defparam add_7_38.INIT1 = 16'h5666;
    defparam add_7_38.INJECT1_0 = "NO";
    defparam add_7_38.INJECT1_1 = "NO";
    CCU2D add_7_36 (.A0(d4[34]), .B0(d5[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[35]), .B1(d5[35]), .C1(GND_net), .D1(GND_net), .CIN(n546), 
          .COUT(n547), .S0(d5_67__N_1485[34]), .S1(d5_67__N_1485[35]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_36.INIT0 = 16'h5666;
    defparam add_7_36.INIT1 = 16'h5666;
    defparam add_7_36.INJECT1_0 = "NO";
    defparam add_7_36.INJECT1_1 = "NO";
    CCU2D add_7_34 (.A0(d4[32]), .B0(d5[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[33]), .B1(d5[33]), .C1(GND_net), .D1(GND_net), .CIN(n545), 
          .COUT(n546), .S0(d5_67__N_1485[32]), .S1(d5_67__N_1485[33]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_34.INIT0 = 16'h5666;
    defparam add_7_34.INIT1 = 16'h5666;
    defparam add_7_34.INJECT1_0 = "NO";
    defparam add_7_34.INJECT1_1 = "NO";
    CCU2D add_7_32 (.A0(d4[30]), .B0(d5[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[31]), .B1(d5[31]), .C1(GND_net), .D1(GND_net), .CIN(n544), 
          .COUT(n545), .S0(d5_67__N_1485[30]), .S1(d5_67__N_1485[31]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_32.INIT0 = 16'h5666;
    defparam add_7_32.INIT1 = 16'h5666;
    defparam add_7_32.INJECT1_0 = "NO";
    defparam add_7_32.INJECT1_1 = "NO";
    CCU2D add_7_30 (.A0(d4[28]), .B0(d5[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[29]), .B1(d5[29]), .C1(GND_net), .D1(GND_net), .CIN(n543), 
          .COUT(n544), .S0(d5_67__N_1485[28]), .S1(d5_67__N_1485[29]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_30.INIT0 = 16'h5666;
    defparam add_7_30.INIT1 = 16'h5666;
    defparam add_7_30.INJECT1_0 = "NO";
    defparam add_7_30.INJECT1_1 = "NO";
    CCU2D add_7_28 (.A0(d4[26]), .B0(d5[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[27]), .B1(d5[27]), .C1(GND_net), .D1(GND_net), .CIN(n542), 
          .COUT(n543), .S0(d5_67__N_1485[26]), .S1(d5_67__N_1485[27]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_28.INIT0 = 16'h5666;
    defparam add_7_28.INIT1 = 16'h5666;
    defparam add_7_28.INJECT1_0 = "NO";
    defparam add_7_28.INJECT1_1 = "NO";
    CCU2D add_7_26 (.A0(d4[24]), .B0(d5[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[25]), .B1(d5[25]), .C1(GND_net), .D1(GND_net), .CIN(n541), 
          .COUT(n542), .S0(d5_67__N_1485[24]), .S1(d5_67__N_1485[25]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_26.INIT0 = 16'h5666;
    defparam add_7_26.INIT1 = 16'h5666;
    defparam add_7_26.INJECT1_0 = "NO";
    defparam add_7_26.INJECT1_1 = "NO";
    CCU2D add_7_24 (.A0(d4[22]), .B0(d5[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[23]), .B1(d5[23]), .C1(GND_net), .D1(GND_net), .CIN(n540), 
          .COUT(n541), .S0(d5_67__N_1485[22]), .S1(d5_67__N_1485[23]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_24.INIT0 = 16'h5666;
    defparam add_7_24.INIT1 = 16'h5666;
    defparam add_7_24.INJECT1_0 = "NO";
    defparam add_7_24.INJECT1_1 = "NO";
    CCU2D add_7_22 (.A0(d4[20]), .B0(d5[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[21]), .B1(d5[21]), .C1(GND_net), .D1(GND_net), .CIN(n539), 
          .COUT(n540), .S0(d5_67__N_1485[20]), .S1(d5_67__N_1485[21]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_22.INIT0 = 16'h5666;
    defparam add_7_22.INIT1 = 16'h5666;
    defparam add_7_22.INJECT1_0 = "NO";
    defparam add_7_22.INJECT1_1 = "NO";
    CCU2D add_7_20 (.A0(d4[18]), .B0(d5[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[19]), .B1(d5[19]), .C1(GND_net), .D1(GND_net), .CIN(n538), 
          .COUT(n539), .S0(d5_67__N_1485[18]), .S1(d5_67__N_1485[19]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_20.INIT0 = 16'h5666;
    defparam add_7_20.INIT1 = 16'h5666;
    defparam add_7_20.INJECT1_0 = "NO";
    defparam add_7_20.INJECT1_1 = "NO";
    CCU2D add_7_18 (.A0(d4[16]), .B0(d5[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[17]), .B1(d5[17]), .C1(GND_net), .D1(GND_net), .CIN(n537), 
          .COUT(n538), .S0(d5_67__N_1485[16]), .S1(d5_67__N_1485[17]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_18.INIT0 = 16'h5666;
    defparam add_7_18.INIT1 = 16'h5666;
    defparam add_7_18.INJECT1_0 = "NO";
    defparam add_7_18.INJECT1_1 = "NO";
    CCU2D add_7_16 (.A0(d4[14]), .B0(d5[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[15]), .B1(d5[15]), .C1(GND_net), .D1(GND_net), .CIN(n536), 
          .COUT(n537), .S0(d5_67__N_1485[14]), .S1(d5_67__N_1485[15]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_16.INIT0 = 16'h5666;
    defparam add_7_16.INIT1 = 16'h5666;
    defparam add_7_16.INJECT1_0 = "NO";
    defparam add_7_16.INJECT1_1 = "NO";
    CCU2D add_7_14 (.A0(d4[12]), .B0(d5[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[13]), .B1(d5[13]), .C1(GND_net), .D1(GND_net), .CIN(n535), 
          .COUT(n536), .S0(d5_67__N_1485[12]), .S1(d5_67__N_1485[13]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_14.INIT0 = 16'h5666;
    defparam add_7_14.INIT1 = 16'h5666;
    defparam add_7_14.INJECT1_0 = "NO";
    defparam add_7_14.INJECT1_1 = "NO";
    CCU2D add_7_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n534), 
          .COUT(n535), .S0(d5_67__N_1485[10]), .S1(d5_67__N_1485[11]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_12.INIT0 = 16'h5666;
    defparam add_7_12.INIT1 = 16'h5666;
    defparam add_7_12.INJECT1_0 = "NO";
    defparam add_7_12.INJECT1_1 = "NO";
    CCU2D add_7_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n533), 
          .COUT(n534), .S0(d5_67__N_1485[8]), .S1(d5_67__N_1485[9]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_10.INIT0 = 16'h5666;
    defparam add_7_10.INIT1 = 16'h5666;
    defparam add_7_10.INJECT1_0 = "NO";
    defparam add_7_10.INJECT1_1 = "NO";
    CCU2D add_7_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n532), 
          .COUT(n533), .S0(d5_67__N_1485[6]), .S1(d5_67__N_1485[7]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_8.INIT0 = 16'h5666;
    defparam add_7_8.INIT1 = 16'h5666;
    defparam add_7_8.INJECT1_0 = "NO";
    defparam add_7_8.INJECT1_1 = "NO";
    CCU2D add_7_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n531), 
          .COUT(n532), .S0(d5_67__N_1485[4]), .S1(d5_67__N_1485[5]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_6.INIT0 = 16'h5666;
    defparam add_7_6.INIT1 = 16'h5666;
    defparam add_7_6.INJECT1_0 = "NO";
    defparam add_7_6.INJECT1_1 = "NO";
    CCU2D add_7_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n530), 
          .COUT(n531), .S0(d5_67__N_1485[2]), .S1(d5_67__N_1485[3]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_4.INIT0 = 16'h5666;
    defparam add_7_4.INIT1 = 16'h5666;
    defparam add_7_4.INJECT1_0 = "NO";
    defparam add_7_4.INJECT1_1 = "NO";
    CCU2D add_7_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n530), 
          .S1(d5_67__N_1485[1]));   // c:/users/user/lattice/fpgasdr/cic.v(63[10:17])
    defparam add_7_2.INIT0 = 16'h7000;
    defparam add_7_2.INIT1 = 16'h5666;
    defparam add_7_2.INJECT1_0 = "NO";
    defparam add_7_2.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(count[4]), .B(count[1]), .C(count[7]), .D(count[2]), 
         .Z(n21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(73[17:47])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D add_6_68 (.A0(d3[66]), .B0(d4[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[67]), .B1(d4[67]), .C1(GND_net), .D1(GND_net), .CIN(n527), 
          .S0(d4_67__N_1417[66]), .S1(d4_67__N_1417[67]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_68.INIT0 = 16'h5666;
    defparam add_6_68.INIT1 = 16'h5666;
    defparam add_6_68.INJECT1_0 = "NO";
    defparam add_6_68.INJECT1_1 = "NO";
    CCU2D add_6_66 (.A0(d3[64]), .B0(d4[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[65]), .B1(d4[65]), .C1(GND_net), .D1(GND_net), .CIN(n526), 
          .COUT(n527), .S0(d4_67__N_1417[64]), .S1(d4_67__N_1417[65]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_66.INIT0 = 16'h5666;
    defparam add_6_66.INIT1 = 16'h5666;
    defparam add_6_66.INJECT1_0 = "NO";
    defparam add_6_66.INJECT1_1 = "NO";
    CCU2D add_6_64 (.A0(d3[62]), .B0(d4[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[63]), .B1(d4[63]), .C1(GND_net), .D1(GND_net), .CIN(n525), 
          .COUT(n526), .S0(d4_67__N_1417[62]), .S1(d4_67__N_1417[63]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_64.INIT0 = 16'h5666;
    defparam add_6_64.INIT1 = 16'h5666;
    defparam add_6_64.INJECT1_0 = "NO";
    defparam add_6_64.INJECT1_1 = "NO";
    CCU2D add_6_62 (.A0(d3[60]), .B0(d4[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[61]), .B1(d4[61]), .C1(GND_net), .D1(GND_net), .CIN(n524), 
          .COUT(n525), .S0(d4_67__N_1417[60]), .S1(d4_67__N_1417[61]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_62.INIT0 = 16'h5666;
    defparam add_6_62.INIT1 = 16'h5666;
    defparam add_6_62.INJECT1_0 = "NO";
    defparam add_6_62.INJECT1_1 = "NO";
    CCU2D add_6_60 (.A0(d3[58]), .B0(d4[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[59]), .B1(d4[59]), .C1(GND_net), .D1(GND_net), .CIN(n523), 
          .COUT(n524), .S0(d4_67__N_1417[58]), .S1(d4_67__N_1417[59]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_60.INIT0 = 16'h5666;
    defparam add_6_60.INIT1 = 16'h5666;
    defparam add_6_60.INJECT1_0 = "NO";
    defparam add_6_60.INJECT1_1 = "NO";
    CCU2D add_6_58 (.A0(d3[56]), .B0(d4[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[57]), .B1(d4[57]), .C1(GND_net), .D1(GND_net), .CIN(n522), 
          .COUT(n523), .S0(d4_67__N_1417[56]), .S1(d4_67__N_1417[57]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_58.INIT0 = 16'h5666;
    defparam add_6_58.INIT1 = 16'h5666;
    defparam add_6_58.INJECT1_0 = "NO";
    defparam add_6_58.INJECT1_1 = "NO";
    CCU2D add_6_56 (.A0(d3[54]), .B0(d4[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[55]), .B1(d4[55]), .C1(GND_net), .D1(GND_net), .CIN(n521), 
          .COUT(n522), .S0(d4_67__N_1417[54]), .S1(d4_67__N_1417[55]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_56.INIT0 = 16'h5666;
    defparam add_6_56.INIT1 = 16'h5666;
    defparam add_6_56.INJECT1_0 = "NO";
    defparam add_6_56.INJECT1_1 = "NO";
    CCU2D add_6_54 (.A0(d3[52]), .B0(d4[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[53]), .B1(d4[53]), .C1(GND_net), .D1(GND_net), .CIN(n520), 
          .COUT(n521), .S0(d4_67__N_1417[52]), .S1(d4_67__N_1417[53]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_54.INIT0 = 16'h5666;
    defparam add_6_54.INIT1 = 16'h5666;
    defparam add_6_54.INJECT1_0 = "NO";
    defparam add_6_54.INJECT1_1 = "NO";
    CCU2D add_6_52 (.A0(d3[50]), .B0(d4[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[51]), .B1(d4[51]), .C1(GND_net), .D1(GND_net), .CIN(n519), 
          .COUT(n520), .S0(d4_67__N_1417[50]), .S1(d4_67__N_1417[51]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_52.INIT0 = 16'h5666;
    defparam add_6_52.INIT1 = 16'h5666;
    defparam add_6_52.INJECT1_0 = "NO";
    defparam add_6_52.INJECT1_1 = "NO";
    CCU2D add_6_50 (.A0(d3[48]), .B0(d4[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[49]), .B1(d4[49]), .C1(GND_net), .D1(GND_net), .CIN(n518), 
          .COUT(n519), .S0(d4_67__N_1417[48]), .S1(d4_67__N_1417[49]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_50.INIT0 = 16'h5666;
    defparam add_6_50.INIT1 = 16'h5666;
    defparam add_6_50.INJECT1_0 = "NO";
    defparam add_6_50.INJECT1_1 = "NO";
    CCU2D add_6_48 (.A0(d3[46]), .B0(d4[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[47]), .B1(d4[47]), .C1(GND_net), .D1(GND_net), .CIN(n517), 
          .COUT(n518), .S0(d4_67__N_1417[46]), .S1(d4_67__N_1417[47]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_48.INIT0 = 16'h5666;
    defparam add_6_48.INIT1 = 16'h5666;
    defparam add_6_48.INJECT1_0 = "NO";
    defparam add_6_48.INJECT1_1 = "NO";
    CCU2D add_6_46 (.A0(d3[44]), .B0(d4[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[45]), .B1(d4[45]), .C1(GND_net), .D1(GND_net), .CIN(n516), 
          .COUT(n517), .S0(d4_67__N_1417[44]), .S1(d4_67__N_1417[45]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_46.INIT0 = 16'h5666;
    defparam add_6_46.INIT1 = 16'h5666;
    defparam add_6_46.INJECT1_0 = "NO";
    defparam add_6_46.INJECT1_1 = "NO";
    CCU2D add_6_44 (.A0(d3[42]), .B0(d4[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[43]), .B1(d4[43]), .C1(GND_net), .D1(GND_net), .CIN(n515), 
          .COUT(n516), .S0(d4_67__N_1417[42]), .S1(d4_67__N_1417[43]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_44.INIT0 = 16'h5666;
    defparam add_6_44.INIT1 = 16'h5666;
    defparam add_6_44.INJECT1_0 = "NO";
    defparam add_6_44.INJECT1_1 = "NO";
    CCU2D add_6_42 (.A0(d3[40]), .B0(d4[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[41]), .B1(d4[41]), .C1(GND_net), .D1(GND_net), .CIN(n514), 
          .COUT(n515), .S0(d4_67__N_1417[40]), .S1(d4_67__N_1417[41]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_42.INIT0 = 16'h5666;
    defparam add_6_42.INIT1 = 16'h5666;
    defparam add_6_42.INJECT1_0 = "NO";
    defparam add_6_42.INJECT1_1 = "NO";
    CCU2D add_6_40 (.A0(d3[38]), .B0(d4[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[39]), .B1(d4[39]), .C1(GND_net), .D1(GND_net), .CIN(n513), 
          .COUT(n514), .S0(d4_67__N_1417[38]), .S1(d4_67__N_1417[39]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_40.INIT0 = 16'h5666;
    defparam add_6_40.INIT1 = 16'h5666;
    defparam add_6_40.INJECT1_0 = "NO";
    defparam add_6_40.INJECT1_1 = "NO";
    CCU2D add_6_38 (.A0(d3[36]), .B0(d4[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[37]), .B1(d4[37]), .C1(GND_net), .D1(GND_net), .CIN(n512), 
          .COUT(n513), .S0(d4_67__N_1417[36]), .S1(d4_67__N_1417[37]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_38.INIT0 = 16'h5666;
    defparam add_6_38.INIT1 = 16'h5666;
    defparam add_6_38.INJECT1_0 = "NO";
    defparam add_6_38.INJECT1_1 = "NO";
    CCU2D add_6_36 (.A0(d3[34]), .B0(d4[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[35]), .B1(d4[35]), .C1(GND_net), .D1(GND_net), .CIN(n511), 
          .COUT(n512), .S0(d4_67__N_1417[34]), .S1(d4_67__N_1417[35]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_36.INIT0 = 16'h5666;
    defparam add_6_36.INIT1 = 16'h5666;
    defparam add_6_36.INJECT1_0 = "NO";
    defparam add_6_36.INJECT1_1 = "NO";
    CCU2D add_6_34 (.A0(d3[32]), .B0(d4[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[33]), .B1(d4[33]), .C1(GND_net), .D1(GND_net), .CIN(n510), 
          .COUT(n511), .S0(d4_67__N_1417[32]), .S1(d4_67__N_1417[33]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_34.INIT0 = 16'h5666;
    defparam add_6_34.INIT1 = 16'h5666;
    defparam add_6_34.INJECT1_0 = "NO";
    defparam add_6_34.INJECT1_1 = "NO";
    CCU2D add_6_32 (.A0(d3[30]), .B0(d4[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[31]), .B1(d4[31]), .C1(GND_net), .D1(GND_net), .CIN(n509), 
          .COUT(n510), .S0(d4_67__N_1417[30]), .S1(d4_67__N_1417[31]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_32.INIT0 = 16'h5666;
    defparam add_6_32.INIT1 = 16'h5666;
    defparam add_6_32.INJECT1_0 = "NO";
    defparam add_6_32.INJECT1_1 = "NO";
    CCU2D add_6_30 (.A0(d3[28]), .B0(d4[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[29]), .B1(d4[29]), .C1(GND_net), .D1(GND_net), .CIN(n508), 
          .COUT(n509), .S0(d4_67__N_1417[28]), .S1(d4_67__N_1417[29]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_30.INIT0 = 16'h5666;
    defparam add_6_30.INIT1 = 16'h5666;
    defparam add_6_30.INJECT1_0 = "NO";
    defparam add_6_30.INJECT1_1 = "NO";
    CCU2D add_6_28 (.A0(d3[26]), .B0(d4[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[27]), .B1(d4[27]), .C1(GND_net), .D1(GND_net), .CIN(n507), 
          .COUT(n508), .S0(d4_67__N_1417[26]), .S1(d4_67__N_1417[27]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_28.INIT0 = 16'h5666;
    defparam add_6_28.INIT1 = 16'h5666;
    defparam add_6_28.INJECT1_0 = "NO";
    defparam add_6_28.INJECT1_1 = "NO";
    CCU2D add_6_26 (.A0(d3[24]), .B0(d4[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[25]), .B1(d4[25]), .C1(GND_net), .D1(GND_net), .CIN(n506), 
          .COUT(n507), .S0(d4_67__N_1417[24]), .S1(d4_67__N_1417[25]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_26.INIT0 = 16'h5666;
    defparam add_6_26.INIT1 = 16'h5666;
    defparam add_6_26.INJECT1_0 = "NO";
    defparam add_6_26.INJECT1_1 = "NO";
    CCU2D add_6_24 (.A0(d3[22]), .B0(d4[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[23]), .B1(d4[23]), .C1(GND_net), .D1(GND_net), .CIN(n505), 
          .COUT(n506), .S0(d4_67__N_1417[22]), .S1(d4_67__N_1417[23]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_24.INIT0 = 16'h5666;
    defparam add_6_24.INIT1 = 16'h5666;
    defparam add_6_24.INJECT1_0 = "NO";
    defparam add_6_24.INJECT1_1 = "NO";
    CCU2D add_6_22 (.A0(d3[20]), .B0(d4[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[21]), .B1(d4[21]), .C1(GND_net), .D1(GND_net), .CIN(n504), 
          .COUT(n505), .S0(d4_67__N_1417[20]), .S1(d4_67__N_1417[21]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_22.INIT0 = 16'h5666;
    defparam add_6_22.INIT1 = 16'h5666;
    defparam add_6_22.INJECT1_0 = "NO";
    defparam add_6_22.INJECT1_1 = "NO";
    CCU2D add_6_20 (.A0(d3[18]), .B0(d4[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[19]), .B1(d4[19]), .C1(GND_net), .D1(GND_net), .CIN(n503), 
          .COUT(n504), .S0(d4_67__N_1417[18]), .S1(d4_67__N_1417[19]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_20.INIT0 = 16'h5666;
    defparam add_6_20.INIT1 = 16'h5666;
    defparam add_6_20.INJECT1_0 = "NO";
    defparam add_6_20.INJECT1_1 = "NO";
    CCU2D add_6_18 (.A0(d3[16]), .B0(d4[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[17]), .B1(d4[17]), .C1(GND_net), .D1(GND_net), .CIN(n502), 
          .COUT(n503), .S0(d4_67__N_1417[16]), .S1(d4_67__N_1417[17]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_18.INIT0 = 16'h5666;
    defparam add_6_18.INIT1 = 16'h5666;
    defparam add_6_18.INJECT1_0 = "NO";
    defparam add_6_18.INJECT1_1 = "NO";
    CCU2D add_6_16 (.A0(d3[14]), .B0(d4[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[15]), .B1(d4[15]), .C1(GND_net), .D1(GND_net), .CIN(n501), 
          .COUT(n502), .S0(d4_67__N_1417[14]), .S1(d4_67__N_1417[15]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_16.INIT0 = 16'h5666;
    defparam add_6_16.INIT1 = 16'h5666;
    defparam add_6_16.INJECT1_0 = "NO";
    defparam add_6_16.INJECT1_1 = "NO";
    CCU2D add_6_14 (.A0(d3[12]), .B0(d4[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[13]), .B1(d4[13]), .C1(GND_net), .D1(GND_net), .CIN(n500), 
          .COUT(n501), .S0(d4_67__N_1417[12]), .S1(d4_67__N_1417[13]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_14.INIT0 = 16'h5666;
    defparam add_6_14.INIT1 = 16'h5666;
    defparam add_6_14.INJECT1_0 = "NO";
    defparam add_6_14.INJECT1_1 = "NO";
    CCU2D add_6_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n499), 
          .COUT(n500), .S0(d4_67__N_1417[10]), .S1(d4_67__N_1417[11]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_12.INIT0 = 16'h5666;
    defparam add_6_12.INIT1 = 16'h5666;
    defparam add_6_12.INJECT1_0 = "NO";
    defparam add_6_12.INJECT1_1 = "NO";
    CCU2D add_6_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n498), 
          .COUT(n499), .S0(d4_67__N_1417[8]), .S1(d4_67__N_1417[9]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_10.INIT0 = 16'h5666;
    defparam add_6_10.INIT1 = 16'h5666;
    defparam add_6_10.INJECT1_0 = "NO";
    defparam add_6_10.INJECT1_1 = "NO";
    CCU2D add_6_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n497), 
          .COUT(n498), .S0(d4_67__N_1417[6]), .S1(d4_67__N_1417[7]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_8.INIT0 = 16'h5666;
    defparam add_6_8.INIT1 = 16'h5666;
    defparam add_6_8.INJECT1_0 = "NO";
    defparam add_6_8.INJECT1_1 = "NO";
    CCU2D add_6_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n496), 
          .COUT(n497), .S0(d4_67__N_1417[4]), .S1(d4_67__N_1417[5]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_6.INIT0 = 16'h5666;
    defparam add_6_6.INIT1 = 16'h5666;
    defparam add_6_6.INJECT1_0 = "NO";
    defparam add_6_6.INJECT1_1 = "NO";
    CCU2D add_6_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n495), 
          .COUT(n496), .S0(d4_67__N_1417[2]), .S1(d4_67__N_1417[3]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_4.INIT0 = 16'h5666;
    defparam add_6_4.INIT1 = 16'h5666;
    defparam add_6_4.INJECT1_0 = "NO";
    defparam add_6_4.INJECT1_1 = "NO";
    CCU2D add_6_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n495), 
          .S1(d4_67__N_1417[1]));   // c:/users/user/lattice/fpgasdr/cic.v(61[10:17])
    defparam add_6_2.INIT0 = 16'h7000;
    defparam add_6_2.INIT1 = 16'h5666;
    defparam add_6_2.INJECT1_0 = "NO";
    defparam add_6_2.INJECT1_1 = "NO";
    CCU2D add_5_68 (.A0(d2[66]), .B0(d3[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[67]), .B1(d3[67]), .C1(GND_net), .D1(GND_net), .CIN(n492), 
          .S0(d3_67__N_1349[66]), .S1(d3_67__N_1349[67]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_68.INIT0 = 16'h5666;
    defparam add_5_68.INIT1 = 16'h5666;
    defparam add_5_68.INJECT1_0 = "NO";
    defparam add_5_68.INJECT1_1 = "NO";
    CCU2D add_5_66 (.A0(d2[64]), .B0(d3[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[65]), .B1(d3[65]), .C1(GND_net), .D1(GND_net), .CIN(n491), 
          .COUT(n492), .S0(d3_67__N_1349[64]), .S1(d3_67__N_1349[65]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_66.INIT0 = 16'h5666;
    defparam add_5_66.INIT1 = 16'h5666;
    defparam add_5_66.INJECT1_0 = "NO";
    defparam add_5_66.INJECT1_1 = "NO";
    CCU2D add_5_64 (.A0(d2[62]), .B0(d3[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[63]), .B1(d3[63]), .C1(GND_net), .D1(GND_net), .CIN(n490), 
          .COUT(n491), .S0(d3_67__N_1349[62]), .S1(d3_67__N_1349[63]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_64.INIT0 = 16'h5666;
    defparam add_5_64.INIT1 = 16'h5666;
    defparam add_5_64.INJECT1_0 = "NO";
    defparam add_5_64.INJECT1_1 = "NO";
    CCU2D add_5_62 (.A0(d2[60]), .B0(d3[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[61]), .B1(d3[61]), .C1(GND_net), .D1(GND_net), .CIN(n489), 
          .COUT(n490), .S0(d3_67__N_1349[60]), .S1(d3_67__N_1349[61]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_62.INIT0 = 16'h5666;
    defparam add_5_62.INIT1 = 16'h5666;
    defparam add_5_62.INJECT1_0 = "NO";
    defparam add_5_62.INJECT1_1 = "NO";
    CCU2D add_5_60 (.A0(d2[58]), .B0(d3[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[59]), .B1(d3[59]), .C1(GND_net), .D1(GND_net), .CIN(n488), 
          .COUT(n489), .S0(d3_67__N_1349[58]), .S1(d3_67__N_1349[59]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_60.INIT0 = 16'h5666;
    defparam add_5_60.INIT1 = 16'h5666;
    defparam add_5_60.INJECT1_0 = "NO";
    defparam add_5_60.INJECT1_1 = "NO";
    CCU2D add_5_58 (.A0(d2[56]), .B0(d3[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[57]), .B1(d3[57]), .C1(GND_net), .D1(GND_net), .CIN(n487), 
          .COUT(n488), .S0(d3_67__N_1349[56]), .S1(d3_67__N_1349[57]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_58.INIT0 = 16'h5666;
    defparam add_5_58.INIT1 = 16'h5666;
    defparam add_5_58.INJECT1_0 = "NO";
    defparam add_5_58.INJECT1_1 = "NO";
    CCU2D add_5_56 (.A0(d2[54]), .B0(d3[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[55]), .B1(d3[55]), .C1(GND_net), .D1(GND_net), .CIN(n486), 
          .COUT(n487), .S0(d3_67__N_1349[54]), .S1(d3_67__N_1349[55]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_56.INIT0 = 16'h5666;
    defparam add_5_56.INIT1 = 16'h5666;
    defparam add_5_56.INJECT1_0 = "NO";
    defparam add_5_56.INJECT1_1 = "NO";
    CCU2D add_5_54 (.A0(d2[52]), .B0(d3[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[53]), .B1(d3[53]), .C1(GND_net), .D1(GND_net), .CIN(n485), 
          .COUT(n486), .S0(d3_67__N_1349[52]), .S1(d3_67__N_1349[53]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_54.INIT0 = 16'h5666;
    defparam add_5_54.INIT1 = 16'h5666;
    defparam add_5_54.INJECT1_0 = "NO";
    defparam add_5_54.INJECT1_1 = "NO";
    CCU2D add_5_52 (.A0(d2[50]), .B0(d3[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[51]), .B1(d3[51]), .C1(GND_net), .D1(GND_net), .CIN(n484), 
          .COUT(n485), .S0(d3_67__N_1349[50]), .S1(d3_67__N_1349[51]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_52.INIT0 = 16'h5666;
    defparam add_5_52.INIT1 = 16'h5666;
    defparam add_5_52.INJECT1_0 = "NO";
    defparam add_5_52.INJECT1_1 = "NO";
    CCU2D add_5_50 (.A0(d2[48]), .B0(d3[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[49]), .B1(d3[49]), .C1(GND_net), .D1(GND_net), .CIN(n483), 
          .COUT(n484), .S0(d3_67__N_1349[48]), .S1(d3_67__N_1349[49]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_50.INIT0 = 16'h5666;
    defparam add_5_50.INIT1 = 16'h5666;
    defparam add_5_50.INJECT1_0 = "NO";
    defparam add_5_50.INJECT1_1 = "NO";
    CCU2D add_5_48 (.A0(d2[46]), .B0(d3[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[47]), .B1(d3[47]), .C1(GND_net), .D1(GND_net), .CIN(n482), 
          .COUT(n483), .S0(d3_67__N_1349[46]), .S1(d3_67__N_1349[47]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_48.INIT0 = 16'h5666;
    defparam add_5_48.INIT1 = 16'h5666;
    defparam add_5_48.INJECT1_0 = "NO";
    defparam add_5_48.INJECT1_1 = "NO";
    CCU2D add_5_46 (.A0(d2[44]), .B0(d3[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[45]), .B1(d3[45]), .C1(GND_net), .D1(GND_net), .CIN(n481), 
          .COUT(n482), .S0(d3_67__N_1349[44]), .S1(d3_67__N_1349[45]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_46.INIT0 = 16'h5666;
    defparam add_5_46.INIT1 = 16'h5666;
    defparam add_5_46.INJECT1_0 = "NO";
    defparam add_5_46.INJECT1_1 = "NO";
    CCU2D add_5_44 (.A0(d2[42]), .B0(d3[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[43]), .B1(d3[43]), .C1(GND_net), .D1(GND_net), .CIN(n480), 
          .COUT(n481), .S0(d3_67__N_1349[42]), .S1(d3_67__N_1349[43]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_44.INIT0 = 16'h5666;
    defparam add_5_44.INIT1 = 16'h5666;
    defparam add_5_44.INJECT1_0 = "NO";
    defparam add_5_44.INJECT1_1 = "NO";
    CCU2D add_5_42 (.A0(d2[40]), .B0(d3[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[41]), .B1(d3[41]), .C1(GND_net), .D1(GND_net), .CIN(n479), 
          .COUT(n480), .S0(d3_67__N_1349[40]), .S1(d3_67__N_1349[41]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_42.INIT0 = 16'h5666;
    defparam add_5_42.INIT1 = 16'h5666;
    defparam add_5_42.INJECT1_0 = "NO";
    defparam add_5_42.INJECT1_1 = "NO";
    CCU2D add_5_40 (.A0(d2[38]), .B0(d3[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[39]), .B1(d3[39]), .C1(GND_net), .D1(GND_net), .CIN(n478), 
          .COUT(n479), .S0(d3_67__N_1349[38]), .S1(d3_67__N_1349[39]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_40.INIT0 = 16'h5666;
    defparam add_5_40.INIT1 = 16'h5666;
    defparam add_5_40.INJECT1_0 = "NO";
    defparam add_5_40.INJECT1_1 = "NO";
    CCU2D add_5_38 (.A0(d2[36]), .B0(d3[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[37]), .B1(d3[37]), .C1(GND_net), .D1(GND_net), .CIN(n477), 
          .COUT(n478), .S0(d3_67__N_1349[36]), .S1(d3_67__N_1349[37]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_38.INIT0 = 16'h5666;
    defparam add_5_38.INIT1 = 16'h5666;
    defparam add_5_38.INJECT1_0 = "NO";
    defparam add_5_38.INJECT1_1 = "NO";
    CCU2D add_5_36 (.A0(d2[34]), .B0(d3[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[35]), .B1(d3[35]), .C1(GND_net), .D1(GND_net), .CIN(n476), 
          .COUT(n477), .S0(d3_67__N_1349[34]), .S1(d3_67__N_1349[35]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_36.INIT0 = 16'h5666;
    defparam add_5_36.INIT1 = 16'h5666;
    defparam add_5_36.INJECT1_0 = "NO";
    defparam add_5_36.INJECT1_1 = "NO";
    CCU2D add_5_34 (.A0(d2[32]), .B0(d3[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[33]), .B1(d3[33]), .C1(GND_net), .D1(GND_net), .CIN(n475), 
          .COUT(n476), .S0(d3_67__N_1349[32]), .S1(d3_67__N_1349[33]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_34.INIT0 = 16'h5666;
    defparam add_5_34.INIT1 = 16'h5666;
    defparam add_5_34.INJECT1_0 = "NO";
    defparam add_5_34.INJECT1_1 = "NO";
    CCU2D add_5_32 (.A0(d2[30]), .B0(d3[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[31]), .B1(d3[31]), .C1(GND_net), .D1(GND_net), .CIN(n474), 
          .COUT(n475), .S0(d3_67__N_1349[30]), .S1(d3_67__N_1349[31]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_32.INIT0 = 16'h5666;
    defparam add_5_32.INIT1 = 16'h5666;
    defparam add_5_32.INJECT1_0 = "NO";
    defparam add_5_32.INJECT1_1 = "NO";
    CCU2D add_5_30 (.A0(d2[28]), .B0(d3[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[29]), .B1(d3[29]), .C1(GND_net), .D1(GND_net), .CIN(n473), 
          .COUT(n474), .S0(d3_67__N_1349[28]), .S1(d3_67__N_1349[29]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_30.INIT0 = 16'h5666;
    defparam add_5_30.INIT1 = 16'h5666;
    defparam add_5_30.INJECT1_0 = "NO";
    defparam add_5_30.INJECT1_1 = "NO";
    CCU2D add_5_28 (.A0(d2[26]), .B0(d3[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[27]), .B1(d3[27]), .C1(GND_net), .D1(GND_net), .CIN(n472), 
          .COUT(n473), .S0(d3_67__N_1349[26]), .S1(d3_67__N_1349[27]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_28.INIT0 = 16'h5666;
    defparam add_5_28.INIT1 = 16'h5666;
    defparam add_5_28.INJECT1_0 = "NO";
    defparam add_5_28.INJECT1_1 = "NO";
    CCU2D add_5_26 (.A0(d2[24]), .B0(d3[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[25]), .B1(d3[25]), .C1(GND_net), .D1(GND_net), .CIN(n471), 
          .COUT(n472), .S0(d3_67__N_1349[24]), .S1(d3_67__N_1349[25]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_26.INIT0 = 16'h5666;
    defparam add_5_26.INIT1 = 16'h5666;
    defparam add_5_26.INJECT1_0 = "NO";
    defparam add_5_26.INJECT1_1 = "NO";
    CCU2D add_5_24 (.A0(d2[22]), .B0(d3[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[23]), .B1(d3[23]), .C1(GND_net), .D1(GND_net), .CIN(n470), 
          .COUT(n471), .S0(d3_67__N_1349[22]), .S1(d3_67__N_1349[23]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_24.INIT0 = 16'h5666;
    defparam add_5_24.INIT1 = 16'h5666;
    defparam add_5_24.INJECT1_0 = "NO";
    defparam add_5_24.INJECT1_1 = "NO";
    CCU2D add_5_22 (.A0(d2[20]), .B0(d3[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[21]), .B1(d3[21]), .C1(GND_net), .D1(GND_net), .CIN(n469), 
          .COUT(n470), .S0(d3_67__N_1349[20]), .S1(d3_67__N_1349[21]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_22.INIT0 = 16'h5666;
    defparam add_5_22.INIT1 = 16'h5666;
    defparam add_5_22.INJECT1_0 = "NO";
    defparam add_5_22.INJECT1_1 = "NO";
    CCU2D add_5_20 (.A0(d2[18]), .B0(d3[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[19]), .B1(d3[19]), .C1(GND_net), .D1(GND_net), .CIN(n468), 
          .COUT(n469), .S0(d3_67__N_1349[18]), .S1(d3_67__N_1349[19]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_20.INIT0 = 16'h5666;
    defparam add_5_20.INIT1 = 16'h5666;
    defparam add_5_20.INJECT1_0 = "NO";
    defparam add_5_20.INJECT1_1 = "NO";
    CCU2D add_5_18 (.A0(d2[16]), .B0(d3[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[17]), .B1(d3[17]), .C1(GND_net), .D1(GND_net), .CIN(n467), 
          .COUT(n468), .S0(d3_67__N_1349[16]), .S1(d3_67__N_1349[17]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_18.INIT0 = 16'h5666;
    defparam add_5_18.INIT1 = 16'h5666;
    defparam add_5_18.INJECT1_0 = "NO";
    defparam add_5_18.INJECT1_1 = "NO";
    CCU2D add_5_16 (.A0(d2[14]), .B0(d3[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[15]), .B1(d3[15]), .C1(GND_net), .D1(GND_net), .CIN(n466), 
          .COUT(n467), .S0(d3_67__N_1349[14]), .S1(d3_67__N_1349[15]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_16.INIT0 = 16'h5666;
    defparam add_5_16.INIT1 = 16'h5666;
    defparam add_5_16.INJECT1_0 = "NO";
    defparam add_5_16.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i2 (.D(n1379[2]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(n1379[3]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(n1379[4]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(n1379[5]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(n1379[6]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(n1379[7]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(n1379[8]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(n1379[9]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(n1379[10]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i11 (.D(n1379[11]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i12 (.D(n1379[12]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d6_i0_i13 (.D(n1379[13]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d6_i0_i14 (.D(n1379[14]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d6_i0_i15 (.D(n1379[15]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d6_i0_i16 (.D(n1379[16]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d6_i0_i17 (.D(n1379[17]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d6_i0_i18 (.D(n1379[18]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d6_i0_i19 (.D(n1379[19]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d6_i0_i20 (.D(n1379[20]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d6_i0_i21 (.D(n1379[21]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d6_i0_i22 (.D(n1379[22]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d6_i0_i23 (.D(n1379[23]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d6_i0_i24 (.D(n1379[24]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d6_i0_i25 (.D(n1379[25]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d6_i0_i26 (.D(n1379[26]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d6_i0_i27 (.D(n1379[27]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d6_i0_i28 (.D(n1379[28]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d6_i0_i29 (.D(n1379[29]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d6_i0_i30 (.D(n1379[30]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d6_i0_i31 (.D(n1379[31]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d6_i0_i32 (.D(n1379[32]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d6_i0_i33 (.D(n1379[33]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d6_i0_i34 (.D(n1379[34]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d6_i0_i35 (.D(n1379[35]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d6_i0_i36 (.D(n1379[36]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d6_i0_i37 (.D(n1379[37]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d6_i0_i38 (.D(n1379[38]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d6_i0_i39 (.D(n1379[39]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d6_i0_i40 (.D(n1379[40]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d6_i0_i41 (.D(n1379[41]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d6_i0_i42 (.D(n1379[42]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d6_i0_i43 (.D(n1379[43]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d6_i0_i44 (.D(n1379[44]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d6_i0_i45 (.D(n1379[45]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d6_i0_i46 (.D(n1379[46]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d6_i0_i47 (.D(n1379[47]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d6_i0_i48 (.D(n1379[48]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d6_i0_i49 (.D(n1379[49]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d6_i0_i50 (.D(n1379[50]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d6_i0_i51 (.D(n1379[51]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d6_i0_i52 (.D(n1379[52]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d6_i0_i53 (.D(n1379[53]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d6_i0_i54 (.D(n1379[54]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d6_i0_i55 (.D(n1379[55]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d6_i0_i56 (.D(n1379[56]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d6_i0_i57 (.D(n1379[57]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d6_i0_i58 (.D(n1379[58]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d6_i0_i59 (.D(n1379[59]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d6_i0_i60 (.D(n1379[60]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d6_i0_i61 (.D(n1379[61]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d6_i0_i62 (.D(n1379[62]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d6_i0_i63 (.D(n1379[63]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i63.GSR = "ENABLED";
    FD1P3AX d6_i0_i64 (.D(n1379[64]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i64.GSR = "ENABLED";
    FD1P3AX d6_i0_i65 (.D(n1379[65]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i65.GSR = "ENABLED";
    FD1P3AX d6_i0_i66 (.D(n1379[66]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i66.GSR = "ENABLED";
    FD1P3AX d6_i0_i67 (.D(n1379[67]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d6[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d6_i0_i67.GSR = "ENABLED";
    FD1S3AX d2_i1 (.D(d2_67__N_1281[1]), .CK(osc_clk), .Q(d2[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i1.GSR = "ENABLED";
    FD1S3AX d2_i2 (.D(d2_67__N_1281[2]), .CK(osc_clk), .Q(d2[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i2.GSR = "ENABLED";
    FD1S3AX d2_i3 (.D(d2_67__N_1281[3]), .CK(osc_clk), .Q(d2[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i3.GSR = "ENABLED";
    FD1S3AX d2_i4 (.D(d2_67__N_1281[4]), .CK(osc_clk), .Q(d2[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i4.GSR = "ENABLED";
    FD1S3AX d2_i5 (.D(d2_67__N_1281[5]), .CK(osc_clk), .Q(d2[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i5.GSR = "ENABLED";
    FD1S3AX d2_i6 (.D(d2_67__N_1281[6]), .CK(osc_clk), .Q(d2[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i6.GSR = "ENABLED";
    FD1S3AX d2_i7 (.D(d2_67__N_1281[7]), .CK(osc_clk), .Q(d2[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i7.GSR = "ENABLED";
    FD1S3AX d2_i8 (.D(d2_67__N_1281[8]), .CK(osc_clk), .Q(d2[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i8.GSR = "ENABLED";
    FD1S3AX d2_i9 (.D(d2_67__N_1281[9]), .CK(osc_clk), .Q(d2[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i9.GSR = "ENABLED";
    FD1S3AX d2_i10 (.D(d2_67__N_1281[10]), .CK(osc_clk), .Q(d2[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i10.GSR = "ENABLED";
    FD1S3AX d2_i11 (.D(d2_67__N_1281[11]), .CK(osc_clk), .Q(d2[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i11.GSR = "ENABLED";
    FD1S3AX d2_i12 (.D(d2_67__N_1281[12]), .CK(osc_clk), .Q(d2[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i12.GSR = "ENABLED";
    FD1S3AX d2_i13 (.D(d2_67__N_1281[13]), .CK(osc_clk), .Q(d2[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i13.GSR = "ENABLED";
    FD1S3AX d2_i14 (.D(d2_67__N_1281[14]), .CK(osc_clk), .Q(d2[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i14.GSR = "ENABLED";
    FD1S3AX d2_i15 (.D(d2_67__N_1281[15]), .CK(osc_clk), .Q(d2[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i15.GSR = "ENABLED";
    FD1S3AX d2_i16 (.D(d2_67__N_1281[16]), .CK(osc_clk), .Q(d2[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i16.GSR = "ENABLED";
    FD1S3AX d2_i17 (.D(d2_67__N_1281[17]), .CK(osc_clk), .Q(d2[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i17.GSR = "ENABLED";
    FD1S3AX d2_i18 (.D(d2_67__N_1281[18]), .CK(osc_clk), .Q(d2[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i18.GSR = "ENABLED";
    FD1S3AX d2_i19 (.D(d2_67__N_1281[19]), .CK(osc_clk), .Q(d2[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i19.GSR = "ENABLED";
    FD1S3AX d2_i20 (.D(d2_67__N_1281[20]), .CK(osc_clk), .Q(d2[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i20.GSR = "ENABLED";
    FD1S3AX d2_i21 (.D(d2_67__N_1281[21]), .CK(osc_clk), .Q(d2[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i21.GSR = "ENABLED";
    FD1S3AX d2_i22 (.D(d2_67__N_1281[22]), .CK(osc_clk), .Q(d2[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i22.GSR = "ENABLED";
    FD1S3AX d2_i23 (.D(d2_67__N_1281[23]), .CK(osc_clk), .Q(d2[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i23.GSR = "ENABLED";
    FD1S3AX d2_i24 (.D(d2_67__N_1281[24]), .CK(osc_clk), .Q(d2[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i24.GSR = "ENABLED";
    FD1S3AX d2_i25 (.D(d2_67__N_1281[25]), .CK(osc_clk), .Q(d2[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i25.GSR = "ENABLED";
    FD1S3AX d2_i26 (.D(d2_67__N_1281[26]), .CK(osc_clk), .Q(d2[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i26.GSR = "ENABLED";
    FD1S3AX d2_i27 (.D(d2_67__N_1281[27]), .CK(osc_clk), .Q(d2[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i27.GSR = "ENABLED";
    FD1S3AX d2_i28 (.D(d2_67__N_1281[28]), .CK(osc_clk), .Q(d2[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i28.GSR = "ENABLED";
    FD1S3AX d2_i29 (.D(d2_67__N_1281[29]), .CK(osc_clk), .Q(d2[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i29.GSR = "ENABLED";
    FD1S3AX d2_i30 (.D(d2_67__N_1281[30]), .CK(osc_clk), .Q(d2[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i30.GSR = "ENABLED";
    FD1S3AX d2_i31 (.D(d2_67__N_1281[31]), .CK(osc_clk), .Q(d2[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i31.GSR = "ENABLED";
    FD1S3AX d2_i32 (.D(d2_67__N_1281[32]), .CK(osc_clk), .Q(d2[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i32.GSR = "ENABLED";
    FD1S3AX d2_i33 (.D(d2_67__N_1281[33]), .CK(osc_clk), .Q(d2[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i33.GSR = "ENABLED";
    FD1S3AX d2_i34 (.D(d2_67__N_1281[34]), .CK(osc_clk), .Q(d2[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i34.GSR = "ENABLED";
    FD1S3AX d2_i35 (.D(d2_67__N_1281[35]), .CK(osc_clk), .Q(d2[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i35.GSR = "ENABLED";
    FD1S3AX d2_i36 (.D(d2_67__N_1281[36]), .CK(osc_clk), .Q(d2[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i36.GSR = "ENABLED";
    FD1S3AX d2_i37 (.D(d2_67__N_1281[37]), .CK(osc_clk), .Q(d2[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i37.GSR = "ENABLED";
    FD1S3AX d2_i38 (.D(d2_67__N_1281[38]), .CK(osc_clk), .Q(d2[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i38.GSR = "ENABLED";
    FD1S3AX d2_i39 (.D(d2_67__N_1281[39]), .CK(osc_clk), .Q(d2[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i39.GSR = "ENABLED";
    FD1S3AX d2_i40 (.D(d2_67__N_1281[40]), .CK(osc_clk), .Q(d2[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i40.GSR = "ENABLED";
    FD1S3AX d2_i41 (.D(d2_67__N_1281[41]), .CK(osc_clk), .Q(d2[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i41.GSR = "ENABLED";
    FD1S3AX d2_i42 (.D(d2_67__N_1281[42]), .CK(osc_clk), .Q(d2[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i42.GSR = "ENABLED";
    FD1S3AX d2_i43 (.D(d2_67__N_1281[43]), .CK(osc_clk), .Q(d2[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i43.GSR = "ENABLED";
    FD1S3AX d2_i44 (.D(d2_67__N_1281[44]), .CK(osc_clk), .Q(d2[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i44.GSR = "ENABLED";
    FD1S3AX d2_i45 (.D(d2_67__N_1281[45]), .CK(osc_clk), .Q(d2[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i45.GSR = "ENABLED";
    FD1S3AX d2_i46 (.D(d2_67__N_1281[46]), .CK(osc_clk), .Q(d2[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i46.GSR = "ENABLED";
    FD1S3AX d2_i47 (.D(d2_67__N_1281[47]), .CK(osc_clk), .Q(d2[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i47.GSR = "ENABLED";
    FD1S3AX d2_i48 (.D(d2_67__N_1281[48]), .CK(osc_clk), .Q(d2[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i48.GSR = "ENABLED";
    FD1S3AX d2_i49 (.D(d2_67__N_1281[49]), .CK(osc_clk), .Q(d2[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i49.GSR = "ENABLED";
    FD1S3AX d2_i50 (.D(d2_67__N_1281[50]), .CK(osc_clk), .Q(d2[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i50.GSR = "ENABLED";
    FD1S3AX d2_i51 (.D(d2_67__N_1281[51]), .CK(osc_clk), .Q(d2[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i51.GSR = "ENABLED";
    FD1S3AX d2_i52 (.D(d2_67__N_1281[52]), .CK(osc_clk), .Q(d2[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i52.GSR = "ENABLED";
    FD1S3AX d2_i53 (.D(d2_67__N_1281[53]), .CK(osc_clk), .Q(d2[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i53.GSR = "ENABLED";
    FD1S3AX d2_i54 (.D(d2_67__N_1281[54]), .CK(osc_clk), .Q(d2[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i54.GSR = "ENABLED";
    FD1S3AX d2_i55 (.D(d2_67__N_1281[55]), .CK(osc_clk), .Q(d2[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i55.GSR = "ENABLED";
    FD1S3AX d2_i56 (.D(d2_67__N_1281[56]), .CK(osc_clk), .Q(d2[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i56.GSR = "ENABLED";
    FD1S3AX d2_i57 (.D(d2_67__N_1281[57]), .CK(osc_clk), .Q(d2[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i57.GSR = "ENABLED";
    FD1S3AX d2_i58 (.D(d2_67__N_1281[58]), .CK(osc_clk), .Q(d2[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i58.GSR = "ENABLED";
    FD1S3AX d2_i59 (.D(d2_67__N_1281[59]), .CK(osc_clk), .Q(d2[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i59.GSR = "ENABLED";
    FD1S3AX d2_i60 (.D(d2_67__N_1281[60]), .CK(osc_clk), .Q(d2[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i60.GSR = "ENABLED";
    FD1S3AX d2_i61 (.D(d2_67__N_1281[61]), .CK(osc_clk), .Q(d2[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i61.GSR = "ENABLED";
    FD1S3AX d2_i62 (.D(d2_67__N_1281[62]), .CK(osc_clk), .Q(d2[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i62.GSR = "ENABLED";
    FD1S3AX d2_i63 (.D(d2_67__N_1281[63]), .CK(osc_clk), .Q(d2[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i63.GSR = "ENABLED";
    FD1S3AX d2_i64 (.D(d2_67__N_1281[64]), .CK(osc_clk), .Q(d2[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i64.GSR = "ENABLED";
    FD1S3AX d2_i65 (.D(d2_67__N_1281[65]), .CK(osc_clk), .Q(d2[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i65.GSR = "ENABLED";
    FD1S3AX d2_i66 (.D(d2_67__N_1281[66]), .CK(osc_clk), .Q(d2[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i66.GSR = "ENABLED";
    FD1S3AX d2_i67 (.D(d2_67__N_1281[67]), .CK(osc_clk), .Q(d2[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d2_i67.GSR = "ENABLED";
    FD1S3AX d3_i1 (.D(d3_67__N_1349[1]), .CK(osc_clk), .Q(d3[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i1.GSR = "ENABLED";
    FD1S3AX d3_i2 (.D(d3_67__N_1349[2]), .CK(osc_clk), .Q(d3[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i2.GSR = "ENABLED";
    FD1S3AX d3_i3 (.D(d3_67__N_1349[3]), .CK(osc_clk), .Q(d3[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i3.GSR = "ENABLED";
    FD1S3AX d3_i4 (.D(d3_67__N_1349[4]), .CK(osc_clk), .Q(d3[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i4.GSR = "ENABLED";
    FD1S3AX d3_i5 (.D(d3_67__N_1349[5]), .CK(osc_clk), .Q(d3[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i5.GSR = "ENABLED";
    FD1S3AX d3_i6 (.D(d3_67__N_1349[6]), .CK(osc_clk), .Q(d3[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i6.GSR = "ENABLED";
    FD1S3AX d3_i7 (.D(d3_67__N_1349[7]), .CK(osc_clk), .Q(d3[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i7.GSR = "ENABLED";
    FD1S3AX d3_i8 (.D(d3_67__N_1349[8]), .CK(osc_clk), .Q(d3[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i8.GSR = "ENABLED";
    FD1S3AX d3_i9 (.D(d3_67__N_1349[9]), .CK(osc_clk), .Q(d3[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i9.GSR = "ENABLED";
    FD1S3AX d3_i10 (.D(d3_67__N_1349[10]), .CK(osc_clk), .Q(d3[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i10.GSR = "ENABLED";
    FD1S3AX d3_i11 (.D(d3_67__N_1349[11]), .CK(osc_clk), .Q(d3[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i11.GSR = "ENABLED";
    FD1S3AX d3_i12 (.D(d3_67__N_1349[12]), .CK(osc_clk), .Q(d3[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i12.GSR = "ENABLED";
    FD1S3AX d3_i13 (.D(d3_67__N_1349[13]), .CK(osc_clk), .Q(d3[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i13.GSR = "ENABLED";
    FD1S3AX d3_i14 (.D(d3_67__N_1349[14]), .CK(osc_clk), .Q(d3[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i14.GSR = "ENABLED";
    FD1S3AX d3_i15 (.D(d3_67__N_1349[15]), .CK(osc_clk), .Q(d3[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i15.GSR = "ENABLED";
    FD1S3AX d3_i16 (.D(d3_67__N_1349[16]), .CK(osc_clk), .Q(d3[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i16.GSR = "ENABLED";
    FD1S3AX d3_i17 (.D(d3_67__N_1349[17]), .CK(osc_clk), .Q(d3[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i17.GSR = "ENABLED";
    FD1S3AX d3_i18 (.D(d3_67__N_1349[18]), .CK(osc_clk), .Q(d3[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i18.GSR = "ENABLED";
    FD1S3AX d3_i19 (.D(d3_67__N_1349[19]), .CK(osc_clk), .Q(d3[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i19.GSR = "ENABLED";
    FD1S3AX d3_i20 (.D(d3_67__N_1349[20]), .CK(osc_clk), .Q(d3[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i20.GSR = "ENABLED";
    FD1S3AX d3_i21 (.D(d3_67__N_1349[21]), .CK(osc_clk), .Q(d3[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i21.GSR = "ENABLED";
    FD1S3AX d3_i22 (.D(d3_67__N_1349[22]), .CK(osc_clk), .Q(d3[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i22.GSR = "ENABLED";
    FD1S3AX d3_i23 (.D(d3_67__N_1349[23]), .CK(osc_clk), .Q(d3[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i23.GSR = "ENABLED";
    FD1S3AX d3_i24 (.D(d3_67__N_1349[24]), .CK(osc_clk), .Q(d3[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i24.GSR = "ENABLED";
    FD1S3AX d3_i25 (.D(d3_67__N_1349[25]), .CK(osc_clk), .Q(d3[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i25.GSR = "ENABLED";
    FD1S3AX d3_i26 (.D(d3_67__N_1349[26]), .CK(osc_clk), .Q(d3[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i26.GSR = "ENABLED";
    FD1S3AX d3_i27 (.D(d3_67__N_1349[27]), .CK(osc_clk), .Q(d3[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i27.GSR = "ENABLED";
    FD1S3AX d3_i28 (.D(d3_67__N_1349[28]), .CK(osc_clk), .Q(d3[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i28.GSR = "ENABLED";
    FD1S3AX d3_i29 (.D(d3_67__N_1349[29]), .CK(osc_clk), .Q(d3[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i29.GSR = "ENABLED";
    FD1S3AX d3_i30 (.D(d3_67__N_1349[30]), .CK(osc_clk), .Q(d3[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i30.GSR = "ENABLED";
    FD1S3AX d3_i31 (.D(d3_67__N_1349[31]), .CK(osc_clk), .Q(d3[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i31.GSR = "ENABLED";
    FD1S3AX d3_i32 (.D(d3_67__N_1349[32]), .CK(osc_clk), .Q(d3[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i32.GSR = "ENABLED";
    FD1S3AX d3_i33 (.D(d3_67__N_1349[33]), .CK(osc_clk), .Q(d3[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i33.GSR = "ENABLED";
    FD1S3AX d3_i34 (.D(d3_67__N_1349[34]), .CK(osc_clk), .Q(d3[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i34.GSR = "ENABLED";
    FD1S3AX d3_i35 (.D(d3_67__N_1349[35]), .CK(osc_clk), .Q(d3[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i35.GSR = "ENABLED";
    FD1S3AX d3_i36 (.D(d3_67__N_1349[36]), .CK(osc_clk), .Q(d3[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i36.GSR = "ENABLED";
    FD1S3AX d3_i37 (.D(d3_67__N_1349[37]), .CK(osc_clk), .Q(d3[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i37.GSR = "ENABLED";
    FD1S3AX d3_i38 (.D(d3_67__N_1349[38]), .CK(osc_clk), .Q(d3[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i38.GSR = "ENABLED";
    FD1S3AX d3_i39 (.D(d3_67__N_1349[39]), .CK(osc_clk), .Q(d3[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i39.GSR = "ENABLED";
    FD1S3AX d3_i40 (.D(d3_67__N_1349[40]), .CK(osc_clk), .Q(d3[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i40.GSR = "ENABLED";
    FD1S3AX d3_i41 (.D(d3_67__N_1349[41]), .CK(osc_clk), .Q(d3[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i41.GSR = "ENABLED";
    FD1S3AX d3_i42 (.D(d3_67__N_1349[42]), .CK(osc_clk), .Q(d3[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i42.GSR = "ENABLED";
    FD1S3AX d3_i43 (.D(d3_67__N_1349[43]), .CK(osc_clk), .Q(d3[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i43.GSR = "ENABLED";
    FD1S3AX d3_i44 (.D(d3_67__N_1349[44]), .CK(osc_clk), .Q(d3[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i44.GSR = "ENABLED";
    FD1S3AX d3_i45 (.D(d3_67__N_1349[45]), .CK(osc_clk), .Q(d3[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i45.GSR = "ENABLED";
    FD1S3AX d3_i46 (.D(d3_67__N_1349[46]), .CK(osc_clk), .Q(d3[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i46.GSR = "ENABLED";
    FD1S3AX d3_i47 (.D(d3_67__N_1349[47]), .CK(osc_clk), .Q(d3[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i47.GSR = "ENABLED";
    FD1S3AX d3_i48 (.D(d3_67__N_1349[48]), .CK(osc_clk), .Q(d3[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i48.GSR = "ENABLED";
    FD1S3AX d3_i49 (.D(d3_67__N_1349[49]), .CK(osc_clk), .Q(d3[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i49.GSR = "ENABLED";
    FD1S3AX d3_i50 (.D(d3_67__N_1349[50]), .CK(osc_clk), .Q(d3[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i50.GSR = "ENABLED";
    FD1S3AX d3_i51 (.D(d3_67__N_1349[51]), .CK(osc_clk), .Q(d3[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i51.GSR = "ENABLED";
    FD1S3AX d3_i52 (.D(d3_67__N_1349[52]), .CK(osc_clk), .Q(d3[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i52.GSR = "ENABLED";
    FD1S3AX d3_i53 (.D(d3_67__N_1349[53]), .CK(osc_clk), .Q(d3[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i53.GSR = "ENABLED";
    FD1S3AX d3_i54 (.D(d3_67__N_1349[54]), .CK(osc_clk), .Q(d3[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i54.GSR = "ENABLED";
    FD1S3AX d3_i55 (.D(d3_67__N_1349[55]), .CK(osc_clk), .Q(d3[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i55.GSR = "ENABLED";
    FD1S3AX d3_i56 (.D(d3_67__N_1349[56]), .CK(osc_clk), .Q(d3[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i56.GSR = "ENABLED";
    FD1S3AX d3_i57 (.D(d3_67__N_1349[57]), .CK(osc_clk), .Q(d3[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i57.GSR = "ENABLED";
    FD1S3AX d3_i58 (.D(d3_67__N_1349[58]), .CK(osc_clk), .Q(d3[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i58.GSR = "ENABLED";
    FD1S3AX d3_i59 (.D(d3_67__N_1349[59]), .CK(osc_clk), .Q(d3[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i59.GSR = "ENABLED";
    FD1S3AX d3_i60 (.D(d3_67__N_1349[60]), .CK(osc_clk), .Q(d3[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i60.GSR = "ENABLED";
    FD1S3AX d3_i61 (.D(d3_67__N_1349[61]), .CK(osc_clk), .Q(d3[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i61.GSR = "ENABLED";
    FD1S3AX d3_i62 (.D(d3_67__N_1349[62]), .CK(osc_clk), .Q(d3[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i62.GSR = "ENABLED";
    FD1S3AX d3_i63 (.D(d3_67__N_1349[63]), .CK(osc_clk), .Q(d3[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i63.GSR = "ENABLED";
    FD1S3AX d3_i64 (.D(d3_67__N_1349[64]), .CK(osc_clk), .Q(d3[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i64.GSR = "ENABLED";
    FD1S3AX d3_i65 (.D(d3_67__N_1349[65]), .CK(osc_clk), .Q(d3[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i65.GSR = "ENABLED";
    FD1S3AX d3_i66 (.D(d3_67__N_1349[66]), .CK(osc_clk), .Q(d3[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i66.GSR = "ENABLED";
    FD1S3AX d3_i67 (.D(d3_67__N_1349[67]), .CK(osc_clk), .Q(d3[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d3_i67.GSR = "ENABLED";
    FD1S3AX d4_i1 (.D(d4_67__N_1417[1]), .CK(osc_clk), .Q(d4[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i1.GSR = "ENABLED";
    FD1S3AX d4_i2 (.D(d4_67__N_1417[2]), .CK(osc_clk), .Q(d4[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i2.GSR = "ENABLED";
    FD1S3AX d4_i3 (.D(d4_67__N_1417[3]), .CK(osc_clk), .Q(d4[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i3.GSR = "ENABLED";
    FD1S3AX d4_i4 (.D(d4_67__N_1417[4]), .CK(osc_clk), .Q(d4[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i4.GSR = "ENABLED";
    FD1S3AX d4_i5 (.D(d4_67__N_1417[5]), .CK(osc_clk), .Q(d4[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i5.GSR = "ENABLED";
    FD1S3AX d4_i6 (.D(d4_67__N_1417[6]), .CK(osc_clk), .Q(d4[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i6.GSR = "ENABLED";
    FD1S3AX d4_i7 (.D(d4_67__N_1417[7]), .CK(osc_clk), .Q(d4[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i7.GSR = "ENABLED";
    FD1S3AX d4_i8 (.D(d4_67__N_1417[8]), .CK(osc_clk), .Q(d4[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i8.GSR = "ENABLED";
    FD1S3AX d4_i9 (.D(d4_67__N_1417[9]), .CK(osc_clk), .Q(d4[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i9.GSR = "ENABLED";
    FD1S3AX d4_i10 (.D(d4_67__N_1417[10]), .CK(osc_clk), .Q(d4[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i10.GSR = "ENABLED";
    FD1S3AX d4_i11 (.D(d4_67__N_1417[11]), .CK(osc_clk), .Q(d4[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i11.GSR = "ENABLED";
    FD1S3AX d4_i12 (.D(d4_67__N_1417[12]), .CK(osc_clk), .Q(d4[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i12.GSR = "ENABLED";
    FD1S3AX d4_i13 (.D(d4_67__N_1417[13]), .CK(osc_clk), .Q(d4[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i13.GSR = "ENABLED";
    FD1S3AX d4_i14 (.D(d4_67__N_1417[14]), .CK(osc_clk), .Q(d4[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i14.GSR = "ENABLED";
    FD1S3AX d4_i15 (.D(d4_67__N_1417[15]), .CK(osc_clk), .Q(d4[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i15.GSR = "ENABLED";
    FD1S3AX d4_i16 (.D(d4_67__N_1417[16]), .CK(osc_clk), .Q(d4[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i16.GSR = "ENABLED";
    FD1S3AX d4_i17 (.D(d4_67__N_1417[17]), .CK(osc_clk), .Q(d4[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i17.GSR = "ENABLED";
    FD1S3AX d4_i18 (.D(d4_67__N_1417[18]), .CK(osc_clk), .Q(d4[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i18.GSR = "ENABLED";
    FD1S3AX d4_i19 (.D(d4_67__N_1417[19]), .CK(osc_clk), .Q(d4[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i19.GSR = "ENABLED";
    FD1S3AX d4_i20 (.D(d4_67__N_1417[20]), .CK(osc_clk), .Q(d4[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i20.GSR = "ENABLED";
    FD1S3AX d4_i21 (.D(d4_67__N_1417[21]), .CK(osc_clk), .Q(d4[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i21.GSR = "ENABLED";
    FD1S3AX d4_i22 (.D(d4_67__N_1417[22]), .CK(osc_clk), .Q(d4[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i22.GSR = "ENABLED";
    FD1S3AX d4_i23 (.D(d4_67__N_1417[23]), .CK(osc_clk), .Q(d4[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i23.GSR = "ENABLED";
    FD1S3AX d4_i24 (.D(d4_67__N_1417[24]), .CK(osc_clk), .Q(d4[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i24.GSR = "ENABLED";
    FD1S3AX d4_i25 (.D(d4_67__N_1417[25]), .CK(osc_clk), .Q(d4[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i25.GSR = "ENABLED";
    FD1S3AX d4_i26 (.D(d4_67__N_1417[26]), .CK(osc_clk), .Q(d4[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i26.GSR = "ENABLED";
    FD1S3AX d4_i27 (.D(d4_67__N_1417[27]), .CK(osc_clk), .Q(d4[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i27.GSR = "ENABLED";
    FD1S3AX d4_i28 (.D(d4_67__N_1417[28]), .CK(osc_clk), .Q(d4[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i28.GSR = "ENABLED";
    FD1S3AX d4_i29 (.D(d4_67__N_1417[29]), .CK(osc_clk), .Q(d4[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i29.GSR = "ENABLED";
    FD1S3AX d4_i30 (.D(d4_67__N_1417[30]), .CK(osc_clk), .Q(d4[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i30.GSR = "ENABLED";
    FD1S3AX d4_i31 (.D(d4_67__N_1417[31]), .CK(osc_clk), .Q(d4[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i31.GSR = "ENABLED";
    FD1S3AX d4_i32 (.D(d4_67__N_1417[32]), .CK(osc_clk), .Q(d4[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i32.GSR = "ENABLED";
    FD1S3AX d4_i33 (.D(d4_67__N_1417[33]), .CK(osc_clk), .Q(d4[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i33.GSR = "ENABLED";
    FD1S3AX d4_i34 (.D(d4_67__N_1417[34]), .CK(osc_clk), .Q(d4[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i34.GSR = "ENABLED";
    FD1S3AX d4_i35 (.D(d4_67__N_1417[35]), .CK(osc_clk), .Q(d4[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i35.GSR = "ENABLED";
    FD1S3AX d4_i36 (.D(d4_67__N_1417[36]), .CK(osc_clk), .Q(d4[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i36.GSR = "ENABLED";
    FD1S3AX d4_i37 (.D(d4_67__N_1417[37]), .CK(osc_clk), .Q(d4[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i37.GSR = "ENABLED";
    FD1S3AX d4_i38 (.D(d4_67__N_1417[38]), .CK(osc_clk), .Q(d4[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i38.GSR = "ENABLED";
    FD1S3AX d4_i39 (.D(d4_67__N_1417[39]), .CK(osc_clk), .Q(d4[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i39.GSR = "ENABLED";
    FD1S3AX d4_i40 (.D(d4_67__N_1417[40]), .CK(osc_clk), .Q(d4[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i40.GSR = "ENABLED";
    FD1S3AX d4_i41 (.D(d4_67__N_1417[41]), .CK(osc_clk), .Q(d4[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i41.GSR = "ENABLED";
    FD1S3AX d4_i42 (.D(d4_67__N_1417[42]), .CK(osc_clk), .Q(d4[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i42.GSR = "ENABLED";
    FD1S3AX d4_i43 (.D(d4_67__N_1417[43]), .CK(osc_clk), .Q(d4[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i43.GSR = "ENABLED";
    FD1S3AX d4_i44 (.D(d4_67__N_1417[44]), .CK(osc_clk), .Q(d4[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i44.GSR = "ENABLED";
    FD1S3AX d4_i45 (.D(d4_67__N_1417[45]), .CK(osc_clk), .Q(d4[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i45.GSR = "ENABLED";
    FD1S3AX d4_i46 (.D(d4_67__N_1417[46]), .CK(osc_clk), .Q(d4[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i46.GSR = "ENABLED";
    FD1S3AX d4_i47 (.D(d4_67__N_1417[47]), .CK(osc_clk), .Q(d4[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i47.GSR = "ENABLED";
    FD1S3AX d4_i48 (.D(d4_67__N_1417[48]), .CK(osc_clk), .Q(d4[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i48.GSR = "ENABLED";
    FD1S3AX d4_i49 (.D(d4_67__N_1417[49]), .CK(osc_clk), .Q(d4[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i49.GSR = "ENABLED";
    FD1S3AX d4_i50 (.D(d4_67__N_1417[50]), .CK(osc_clk), .Q(d4[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i50.GSR = "ENABLED";
    FD1S3AX d4_i51 (.D(d4_67__N_1417[51]), .CK(osc_clk), .Q(d4[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i51.GSR = "ENABLED";
    FD1S3AX d4_i52 (.D(d4_67__N_1417[52]), .CK(osc_clk), .Q(d4[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i52.GSR = "ENABLED";
    FD1S3AX d4_i53 (.D(d4_67__N_1417[53]), .CK(osc_clk), .Q(d4[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i53.GSR = "ENABLED";
    FD1S3AX d4_i54 (.D(d4_67__N_1417[54]), .CK(osc_clk), .Q(d4[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i54.GSR = "ENABLED";
    FD1S3AX d4_i55 (.D(d4_67__N_1417[55]), .CK(osc_clk), .Q(d4[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i55.GSR = "ENABLED";
    FD1S3AX d4_i56 (.D(d4_67__N_1417[56]), .CK(osc_clk), .Q(d4[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i56.GSR = "ENABLED";
    FD1S3AX d4_i57 (.D(d4_67__N_1417[57]), .CK(osc_clk), .Q(d4[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i57.GSR = "ENABLED";
    FD1S3AX d4_i58 (.D(d4_67__N_1417[58]), .CK(osc_clk), .Q(d4[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i58.GSR = "ENABLED";
    FD1S3AX d4_i59 (.D(d4_67__N_1417[59]), .CK(osc_clk), .Q(d4[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i59.GSR = "ENABLED";
    FD1S3AX d4_i60 (.D(d4_67__N_1417[60]), .CK(osc_clk), .Q(d4[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i60.GSR = "ENABLED";
    FD1S3AX d4_i61 (.D(d4_67__N_1417[61]), .CK(osc_clk), .Q(d4[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i61.GSR = "ENABLED";
    FD1S3AX d4_i62 (.D(d4_67__N_1417[62]), .CK(osc_clk), .Q(d4[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i62.GSR = "ENABLED";
    FD1S3AX d4_i63 (.D(d4_67__N_1417[63]), .CK(osc_clk), .Q(d4[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i63.GSR = "ENABLED";
    FD1S3AX d4_i64 (.D(d4_67__N_1417[64]), .CK(osc_clk), .Q(d4[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i64.GSR = "ENABLED";
    FD1S3AX d4_i65 (.D(d4_67__N_1417[65]), .CK(osc_clk), .Q(d4[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i65.GSR = "ENABLED";
    FD1S3AX d4_i66 (.D(d4_67__N_1417[66]), .CK(osc_clk), .Q(d4[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i66.GSR = "ENABLED";
    FD1S3AX d4_i67 (.D(d4_67__N_1417[67]), .CK(osc_clk), .Q(d4[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d4_i67.GSR = "ENABLED";
    FD1S3AX d5_i1 (.D(d5_67__N_1485[1]), .CK(osc_clk), .Q(d5[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i1.GSR = "ENABLED";
    FD1S3AX d5_i2 (.D(d5_67__N_1485[2]), .CK(osc_clk), .Q(d5[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i2.GSR = "ENABLED";
    FD1S3AX d5_i3 (.D(d5_67__N_1485[3]), .CK(osc_clk), .Q(d5[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i3.GSR = "ENABLED";
    FD1S3AX d5_i4 (.D(d5_67__N_1485[4]), .CK(osc_clk), .Q(d5[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i4.GSR = "ENABLED";
    FD1S3AX d5_i5 (.D(d5_67__N_1485[5]), .CK(osc_clk), .Q(d5[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i5.GSR = "ENABLED";
    FD1S3AX d5_i6 (.D(d5_67__N_1485[6]), .CK(osc_clk), .Q(d5[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i6.GSR = "ENABLED";
    FD1S3AX d5_i7 (.D(d5_67__N_1485[7]), .CK(osc_clk), .Q(d5[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i7.GSR = "ENABLED";
    FD1S3AX d5_i8 (.D(d5_67__N_1485[8]), .CK(osc_clk), .Q(d5[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i8.GSR = "ENABLED";
    FD1S3AX d5_i9 (.D(d5_67__N_1485[9]), .CK(osc_clk), .Q(d5[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i9.GSR = "ENABLED";
    FD1S3AX d5_i10 (.D(d5_67__N_1485[10]), .CK(osc_clk), .Q(d5[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i10.GSR = "ENABLED";
    FD1S3AX d5_i11 (.D(d5_67__N_1485[11]), .CK(osc_clk), .Q(d5[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i11.GSR = "ENABLED";
    FD1S3AX d5_i12 (.D(d5_67__N_1485[12]), .CK(osc_clk), .Q(d5[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i12.GSR = "ENABLED";
    FD1S3AX d5_i13 (.D(d5_67__N_1485[13]), .CK(osc_clk), .Q(d5[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i13.GSR = "ENABLED";
    FD1S3AX d5_i14 (.D(d5_67__N_1485[14]), .CK(osc_clk), .Q(d5[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i14.GSR = "ENABLED";
    FD1S3AX d5_i15 (.D(d5_67__N_1485[15]), .CK(osc_clk), .Q(d5[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i15.GSR = "ENABLED";
    FD1S3AX d5_i16 (.D(d5_67__N_1485[16]), .CK(osc_clk), .Q(d5[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i16.GSR = "ENABLED";
    FD1S3AX d5_i17 (.D(d5_67__N_1485[17]), .CK(osc_clk), .Q(d5[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i17.GSR = "ENABLED";
    FD1S3AX d5_i18 (.D(d5_67__N_1485[18]), .CK(osc_clk), .Q(d5[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i18.GSR = "ENABLED";
    FD1S3AX d5_i19 (.D(d5_67__N_1485[19]), .CK(osc_clk), .Q(d5[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i19.GSR = "ENABLED";
    FD1S3AX d5_i20 (.D(d5_67__N_1485[20]), .CK(osc_clk), .Q(d5[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i20.GSR = "ENABLED";
    FD1S3AX d5_i21 (.D(d5_67__N_1485[21]), .CK(osc_clk), .Q(d5[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i21.GSR = "ENABLED";
    FD1S3AX d5_i22 (.D(d5_67__N_1485[22]), .CK(osc_clk), .Q(d5[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i22.GSR = "ENABLED";
    FD1S3AX d5_i23 (.D(d5_67__N_1485[23]), .CK(osc_clk), .Q(d5[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i23.GSR = "ENABLED";
    FD1S3AX d5_i24 (.D(d5_67__N_1485[24]), .CK(osc_clk), .Q(d5[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i24.GSR = "ENABLED";
    FD1S3AX d5_i25 (.D(d5_67__N_1485[25]), .CK(osc_clk), .Q(d5[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i25.GSR = "ENABLED";
    FD1S3AX d5_i26 (.D(d5_67__N_1485[26]), .CK(osc_clk), .Q(d5[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i26.GSR = "ENABLED";
    FD1S3AX d5_i27 (.D(d5_67__N_1485[27]), .CK(osc_clk), .Q(d5[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i27.GSR = "ENABLED";
    FD1S3AX d5_i28 (.D(d5_67__N_1485[28]), .CK(osc_clk), .Q(d5[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i28.GSR = "ENABLED";
    FD1S3AX d5_i29 (.D(d5_67__N_1485[29]), .CK(osc_clk), .Q(d5[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i29.GSR = "ENABLED";
    FD1S3AX d5_i30 (.D(d5_67__N_1485[30]), .CK(osc_clk), .Q(d5[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i30.GSR = "ENABLED";
    FD1S3AX d5_i31 (.D(d5_67__N_1485[31]), .CK(osc_clk), .Q(d5[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i31.GSR = "ENABLED";
    FD1S3AX d5_i32 (.D(d5_67__N_1485[32]), .CK(osc_clk), .Q(d5[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i32.GSR = "ENABLED";
    FD1S3AX d5_i33 (.D(d5_67__N_1485[33]), .CK(osc_clk), .Q(d5[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i33.GSR = "ENABLED";
    FD1S3AX d5_i34 (.D(d5_67__N_1485[34]), .CK(osc_clk), .Q(d5[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i34.GSR = "ENABLED";
    FD1S3AX d5_i35 (.D(d5_67__N_1485[35]), .CK(osc_clk), .Q(d5[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i35.GSR = "ENABLED";
    FD1S3AX d5_i36 (.D(d5_67__N_1485[36]), .CK(osc_clk), .Q(d5[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i36.GSR = "ENABLED";
    FD1S3AX d5_i37 (.D(d5_67__N_1485[37]), .CK(osc_clk), .Q(d5[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i37.GSR = "ENABLED";
    FD1S3AX d5_i38 (.D(d5_67__N_1485[38]), .CK(osc_clk), .Q(d5[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i38.GSR = "ENABLED";
    FD1S3AX d5_i39 (.D(d5_67__N_1485[39]), .CK(osc_clk), .Q(d5[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i39.GSR = "ENABLED";
    FD1S3AX d5_i40 (.D(d5_67__N_1485[40]), .CK(osc_clk), .Q(d5[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i40.GSR = "ENABLED";
    FD1S3AX d5_i41 (.D(d5_67__N_1485[41]), .CK(osc_clk), .Q(d5[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i41.GSR = "ENABLED";
    FD1S3AX d5_i42 (.D(d5_67__N_1485[42]), .CK(osc_clk), .Q(d5[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i42.GSR = "ENABLED";
    FD1S3AX d5_i43 (.D(d5_67__N_1485[43]), .CK(osc_clk), .Q(d5[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i43.GSR = "ENABLED";
    FD1S3AX d5_i44 (.D(d5_67__N_1485[44]), .CK(osc_clk), .Q(d5[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i44.GSR = "ENABLED";
    FD1S3AX d5_i45 (.D(d5_67__N_1485[45]), .CK(osc_clk), .Q(d5[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i45.GSR = "ENABLED";
    FD1S3AX d5_i46 (.D(d5_67__N_1485[46]), .CK(osc_clk), .Q(d5[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i46.GSR = "ENABLED";
    FD1S3AX d5_i47 (.D(d5_67__N_1485[47]), .CK(osc_clk), .Q(d5[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i47.GSR = "ENABLED";
    FD1S3AX d5_i48 (.D(d5_67__N_1485[48]), .CK(osc_clk), .Q(d5[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i48.GSR = "ENABLED";
    FD1S3AX d5_i49 (.D(d5_67__N_1485[49]), .CK(osc_clk), .Q(d5[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i49.GSR = "ENABLED";
    FD1S3AX d5_i50 (.D(d5_67__N_1485[50]), .CK(osc_clk), .Q(d5[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i50.GSR = "ENABLED";
    FD1S3AX d5_i51 (.D(d5_67__N_1485[51]), .CK(osc_clk), .Q(d5[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i51.GSR = "ENABLED";
    FD1S3AX d5_i52 (.D(d5_67__N_1485[52]), .CK(osc_clk), .Q(d5[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i52.GSR = "ENABLED";
    FD1S3AX d5_i53 (.D(d5_67__N_1485[53]), .CK(osc_clk), .Q(d5[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i53.GSR = "ENABLED";
    FD1S3AX d5_i54 (.D(d5_67__N_1485[54]), .CK(osc_clk), .Q(d5[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i54.GSR = "ENABLED";
    FD1S3AX d5_i55 (.D(d5_67__N_1485[55]), .CK(osc_clk), .Q(d5[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i55.GSR = "ENABLED";
    FD1S3AX d5_i56 (.D(d5_67__N_1485[56]), .CK(osc_clk), .Q(d5[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i56.GSR = "ENABLED";
    FD1S3AX d5_i57 (.D(d5_67__N_1485[57]), .CK(osc_clk), .Q(d5[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i57.GSR = "ENABLED";
    FD1S3AX d5_i58 (.D(d5_67__N_1485[58]), .CK(osc_clk), .Q(d5[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i58.GSR = "ENABLED";
    FD1S3AX d5_i59 (.D(d5_67__N_1485[59]), .CK(osc_clk), .Q(d5[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i59.GSR = "ENABLED";
    FD1S3AX d5_i60 (.D(d5_67__N_1485[60]), .CK(osc_clk), .Q(d5[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i60.GSR = "ENABLED";
    FD1S3AX d5_i61 (.D(d5_67__N_1485[61]), .CK(osc_clk), .Q(d5[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i61.GSR = "ENABLED";
    FD1S3AX d5_i62 (.D(d5_67__N_1485[62]), .CK(osc_clk), .Q(d5[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i62.GSR = "ENABLED";
    FD1S3AX d5_i63 (.D(d5_67__N_1485[63]), .CK(osc_clk), .Q(d5[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i63.GSR = "ENABLED";
    FD1S3AX d5_i64 (.D(d5_67__N_1485[64]), .CK(osc_clk), .Q(d5[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i64.GSR = "ENABLED";
    FD1S3AX d5_i65 (.D(d5_67__N_1485[65]), .CK(osc_clk), .Q(d5[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i65.GSR = "ENABLED";
    FD1S3AX d5_i66 (.D(d5_67__N_1485[66]), .CK(osc_clk), .Q(d5[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i66.GSR = "ENABLED";
    FD1S3AX d5_i67 (.D(d5_67__N_1485[67]), .CK(osc_clk), .Q(d5[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d5_i67.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i12 (.D(d5[12]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i13 (.D(d5[13]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i14 (.D(d5[14]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i15 (.D(d5[15]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i16 (.D(d5[16]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i17 (.D(d5[17]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i18 (.D(d5[18]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i19 (.D(d5[19]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i20 (.D(d5[20]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i21 (.D(d5[21]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i22 (.D(d5[22]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i23 (.D(d5[23]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i24 (.D(d5[24]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i25 (.D(d5[25]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i26 (.D(d5[26]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i27 (.D(d5[27]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i28 (.D(d5[28]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i29 (.D(d5[29]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i30 (.D(d5[30]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i31 (.D(d5[31]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i32 (.D(d5[32]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i33 (.D(d5[33]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i34 (.D(d5[34]), .SP(osc_clk_enable_114), .CK(osc_clk), 
            .Q(d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i35 (.D(d5[35]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i36 (.D(d5[36]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i37 (.D(d5[37]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i38 (.D(d5[38]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i39 (.D(d5[39]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i40 (.D(d5[40]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i41 (.D(d5[41]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i42 (.D(d5[42]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i43 (.D(d5[43]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i44 (.D(d5[44]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i45 (.D(d5[45]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i46 (.D(d5[46]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i47 (.D(d5[47]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i48 (.D(d5[48]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i49 (.D(d5[49]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i50 (.D(d5[50]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i51 (.D(d5[51]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i52 (.D(d5[52]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i53 (.D(d5[53]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i54 (.D(d5[54]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i55 (.D(d5[55]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i56 (.D(d5[56]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i57 (.D(d5[57]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i58 (.D(d5[58]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i59 (.D(d5[59]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i60 (.D(d5[60]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i61 (.D(d5[61]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i62 (.D(d5[62]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i63 (.D(d5[63]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i63.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i64 (.D(d5[64]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i64.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i65 (.D(d5[65]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i65.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i66 (.D(d5[66]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i66.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i67 (.D(d5[67]), .SP(d_clk_tmp_N_2345), .CK(osc_clk), 
            .Q(d_tmp[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d_tmp_i0_i67.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(n1448[1]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(n1448[2]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(n1448[3]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(n1448[4]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(n1448[5]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(n1448[6]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(n1448[7]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(n1448[8]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(n1448[9]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(n1448[10]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(n1448[11]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i12 (.D(n1448[12]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d7_i0_i13 (.D(n1448[13]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d7_i0_i14 (.D(n1448[14]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d7_i0_i15 (.D(n1448[15]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d7_i0_i16 (.D(n1448[16]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d7_i0_i17 (.D(n1448[17]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d7_i0_i18 (.D(n1448[18]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d7_i0_i19 (.D(n1448[19]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d7_i0_i20 (.D(n1448[20]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d7_i0_i21 (.D(n1448[21]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d7_i0_i22 (.D(n1448[22]), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d7_i0_i23 (.D(n1448[23]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d7_i0_i24 (.D(n1448[24]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d7_i0_i25 (.D(n1448[25]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d7_i0_i26 (.D(n1448[26]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d7_i0_i27 (.D(n1448[27]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d7_i0_i28 (.D(n1448[28]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d7_i0_i29 (.D(n1448[29]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d7_i0_i30 (.D(n1448[30]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d7_i0_i31 (.D(n1448[31]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d7_i0_i32 (.D(n1448[32]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d7_i0_i33 (.D(n1448[33]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d7_i0_i34 (.D(n1448[34]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d7_i0_i35 (.D(n1448[35]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d7_i0_i36 (.D(n1448[36]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d7_i0_i37 (.D(n1448[37]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d7_i0_i38 (.D(n1448[38]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d7_i0_i39 (.D(n1448[39]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d7_i0_i40 (.D(n1448[40]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d7_i0_i41 (.D(n1448[41]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d7_i0_i42 (.D(n1448[42]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d7_i0_i43 (.D(n1448[43]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d7_i0_i44 (.D(n1448[44]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d7_i0_i45 (.D(n1448[45]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d7_i0_i46 (.D(n1448[46]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d7_i0_i47 (.D(n1448[47]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d7_i0_i48 (.D(n1448[48]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d7_i0_i49 (.D(n1448[49]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d7_i0_i50 (.D(n1448[50]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d7_i0_i51 (.D(n1448[51]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d7_i0_i52 (.D(n1448[52]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d7_i0_i53 (.D(n1448[53]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d7_i0_i54 (.D(n1448[54]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d7_i0_i55 (.D(n1448[55]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d7_i0_i56 (.D(n1448[56]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d7_i0_i57 (.D(n1448[57]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d7_i0_i58 (.D(n1448[58]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d7_i0_i59 (.D(n1448[59]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d7_i0_i60 (.D(n1448[60]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d7_i0_i61 (.D(n1448[61]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d7_i0_i62 (.D(n1448[62]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d7_i0_i63 (.D(n1448[63]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d7_i0_i64 (.D(n1448[64]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i64.GSR = "ENABLED";
    FD1P3AX d7_i0_i65 (.D(n1448[65]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i65.GSR = "ENABLED";
    FD1P3AX d7_i0_i66 (.D(n1448[66]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i66.GSR = "ENABLED";
    FD1P3AX d7_i0_i67 (.D(n1448[67]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d7[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d7_i0_i67.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(n1517[1]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d8_i0_i2 (.D(n1517[2]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(n1517[3]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(n1517[4]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(n1517[5]), .SP(osc_clk_enable_186), .CK(osc_clk), 
            .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(n1517[6]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i7 (.D(n1517[7]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(n1517[8]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(n1517[9]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(n1517[10]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(n1517[11]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i12 (.D(n1517[12]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d8_i0_i13 (.D(n1517[13]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d8_i0_i14 (.D(n1517[14]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d8_i0_i15 (.D(n1517[15]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d8_i0_i16 (.D(n1517[16]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d8_i0_i17 (.D(n1517[17]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d8_i0_i18 (.D(n1517[18]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d8_i0_i19 (.D(n1517[19]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d8_i0_i20 (.D(n1517[20]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d8_i0_i21 (.D(n1517[21]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d8_i0_i22 (.D(n1517[22]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d8_i0_i23 (.D(n1517[23]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d8_i0_i24 (.D(n1517[24]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d8_i0_i25 (.D(n1517[25]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d8_i0_i26 (.D(n1517[26]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d8_i0_i27 (.D(n1517[27]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d8_i0_i28 (.D(n1517[28]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d8_i0_i29 (.D(n1517[29]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d8_i0_i30 (.D(n1517[30]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d8_i0_i31 (.D(n1517[31]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d8_i0_i32 (.D(n1517[32]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d8_i0_i33 (.D(n1517[33]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d8_i0_i34 (.D(n1517[34]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d8_i0_i35 (.D(n1517[35]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d8_i0_i36 (.D(n1517[36]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d8_i0_i37 (.D(n1517[37]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d8_i0_i38 (.D(n1517[38]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d8_i0_i39 (.D(n1517[39]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d8_i0_i40 (.D(n1517[40]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d8_i0_i41 (.D(n1517[41]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d8_i0_i42 (.D(n1517[42]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d8_i0_i43 (.D(n1517[43]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d8_i0_i44 (.D(n1517[44]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d8_i0_i45 (.D(n1517[45]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d8_i0_i46 (.D(n1517[46]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d8_i0_i47 (.D(n1517[47]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d8_i0_i48 (.D(n1517[48]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d8_i0_i49 (.D(n1517[49]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d8_i0_i50 (.D(n1517[50]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d8_i0_i51 (.D(n1517[51]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d8_i0_i52 (.D(n1517[52]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d8_i0_i53 (.D(n1517[53]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d8_i0_i54 (.D(n1517[54]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d8_i0_i55 (.D(n1517[55]), .SP(osc_clk_enable_236), .CK(osc_clk), 
            .Q(d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d8_i0_i56 (.D(n1517[56]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d8_i0_i57 (.D(n1517[57]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d8_i0_i58 (.D(n1517[58]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d8_i0_i59 (.D(n1517[59]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d8_i0_i60 (.D(n1517[60]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d8_i0_i61 (.D(n1517[61]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d8_i0_i62 (.D(n1517[62]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d8_i0_i63 (.D(n1517[63]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d8_i0_i64 (.D(n1517[64]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i64.GSR = "ENABLED";
    FD1P3AX d8_i0_i65 (.D(n1517[65]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i65.GSR = "ENABLED";
    FD1P3AX d8_i0_i66 (.D(n1517[66]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i66.GSR = "ENABLED";
    FD1P3AX d8_i0_i67 (.D(n1517[67]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d8[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d8_i0_i67.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(n1586[1]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(n1586[2]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(n1586[3]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(n1586[4]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(n1586[5]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(n1586[6]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(n1586[7]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(n1586[8]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(n1586[9]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(n1586[10]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(n1586[11]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i12 (.D(n1586[12]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d9_i0_i13 (.D(n1586[13]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d9_i0_i14 (.D(n1586[14]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d9_i0_i15 (.D(n1586[15]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d9_i0_i16 (.D(n1586[16]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d9_i0_i17 (.D(n1586[17]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d9_i0_i18 (.D(n1586[18]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d9_i0_i19 (.D(n1586[19]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d9_i0_i20 (.D(n1586[20]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d9_i0_i21 (.D(n1586[21]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d9_i0_i22 (.D(n1586[22]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d9_i0_i23 (.D(n1586[23]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d9_i0_i24 (.D(n1586[24]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d9_i0_i25 (.D(n1586[25]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d9_i0_i26 (.D(n1586[26]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d9_i0_i27 (.D(n1586[27]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d9_i0_i28 (.D(n1586[28]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d9_i0_i29 (.D(n1586[29]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d9_i0_i30 (.D(n1586[30]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d9_i0_i31 (.D(n1586[31]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d9_i0_i32 (.D(n1586[32]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d9_i0_i33 (.D(n1586[33]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d9_i0_i34 (.D(n1586[34]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d9_i0_i35 (.D(n1586[35]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d9_i0_i36 (.D(n1586[36]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d9_i0_i37 (.D(n1586[37]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d9_i0_i38 (.D(n1586[38]), .SP(osc_clk_enable_286), .CK(osc_clk), 
            .Q(d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d9_i0_i39 (.D(n1586[39]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d9_i0_i40 (.D(n1586[40]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d9_i0_i41 (.D(n1586[41]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d9_i0_i42 (.D(n1586[42]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d9_i0_i43 (.D(n1586[43]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d9_i0_i44 (.D(n1586[44]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d9_i0_i45 (.D(n1586[45]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d9_i0_i46 (.D(n1586[46]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d9_i0_i47 (.D(n1586[47]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d9_i0_i48 (.D(n1586[48]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d9_i0_i49 (.D(n1586[49]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d9_i0_i50 (.D(n1586[50]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d9_i0_i51 (.D(n1586[51]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d9_i0_i52 (.D(n1586[52]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d9_i0_i53 (.D(n1586[53]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d9_i0_i54 (.D(n1586[54]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d9_i0_i55 (.D(n1586[55]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d9_i0_i56 (.D(n1586[56]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d9_i0_i57 (.D(n1586[57]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d9_i0_i58 (.D(n1586[58]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d9_i0_i59 (.D(n1586[59]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d9_i0_i60 (.D(n1586[60]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d9_i0_i61 (.D(n1586[61]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d9_i0_i62 (.D(n1586[62]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d9_i0_i63 (.D(n1586[63]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d9_i0_i64 (.D(n1586[64]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i64.GSR = "ENABLED";
    FD1P3AX d9_i0_i65 (.D(n1586[65]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i65.GSR = "ENABLED";
    FD1P3AX d9_i0_i66 (.D(n1586[66]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i66.GSR = "ENABLED";
    FD1P3AX d9_i0_i67 (.D(n1586[67]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d9[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d9_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i12 (.D(d6[12]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i13 (.D(d6[13]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i14 (.D(d6[14]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i15 (.D(d6[15]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i16 (.D(d6[16]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i17 (.D(d6[17]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i18 (.D(d6[18]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i19 (.D(d6[19]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i20 (.D(d6[20]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i21 (.D(d6[21]), .SP(osc_clk_enable_336), .CK(osc_clk), 
            .Q(d_d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i22 (.D(d6[22]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i23 (.D(d6[23]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i24 (.D(d6[24]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i25 (.D(d6[25]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i26 (.D(d6[26]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i27 (.D(d6[27]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i28 (.D(d6[28]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i29 (.D(d6[29]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i30 (.D(d6[30]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i31 (.D(d6[31]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i32 (.D(d6[32]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i33 (.D(d6[33]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i34 (.D(d6[34]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i35 (.D(d6[35]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i36 (.D(d6[36]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i37 (.D(d6[37]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i38 (.D(d6[38]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i39 (.D(d6[39]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i40 (.D(d6[40]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i41 (.D(d6[41]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i42 (.D(d6[42]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i43 (.D(d6[43]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i44 (.D(d6[44]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i45 (.D(d6[45]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i46 (.D(d6[46]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i47 (.D(d6[47]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i48 (.D(d6[48]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i49 (.D(d6[49]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i50 (.D(d6[50]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i51 (.D(d6[51]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i52 (.D(d6[52]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i53 (.D(d6[53]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i54 (.D(d6[54]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i55 (.D(d6[55]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i56 (.D(d6[56]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i57 (.D(d6[57]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i58 (.D(d6[58]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i59 (.D(d6[59]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i60 (.D(d6[60]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i61 (.D(d6[61]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i62 (.D(d6[62]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i63 (.D(d6[63]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i64 (.D(d6[64]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i65 (.D(d6[65]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i66 (.D(d6[66]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i67 (.D(d6[67]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d6[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d6_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_enable_386), .CK(osc_clk), 
            .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i12 (.D(d7[12]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i13 (.D(d7[13]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i14 (.D(d7[14]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i15 (.D(d7[15]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i16 (.D(d7[16]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i17 (.D(d7[17]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i18 (.D(d7[18]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i19 (.D(d7[19]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i20 (.D(d7[20]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i21 (.D(d7[21]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i22 (.D(d7[22]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i23 (.D(d7[23]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i24 (.D(d7[24]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i25 (.D(d7[25]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i26 (.D(d7[26]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i27 (.D(d7[27]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i28 (.D(d7[28]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i29 (.D(d7[29]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i30 (.D(d7[30]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i31 (.D(d7[31]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i32 (.D(d7[32]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i33 (.D(d7[33]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i34 (.D(d7[34]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i35 (.D(d7[35]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i36 (.D(d7[36]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i37 (.D(d7[37]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i38 (.D(d7[38]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i39 (.D(d7[39]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i40 (.D(d7[40]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i41 (.D(d7[41]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i42 (.D(d7[42]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i43 (.D(d7[43]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i44 (.D(d7[44]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i45 (.D(d7[45]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i46 (.D(d7[46]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i47 (.D(d7[47]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i48 (.D(d7[48]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i49 (.D(d7[49]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i50 (.D(d7[50]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i51 (.D(d7[51]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i52 (.D(d7[52]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i53 (.D(d7[53]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i54 (.D(d7[54]), .SP(osc_clk_enable_436), .CK(osc_clk), 
            .Q(d_d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i55 (.D(d7[55]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i56 (.D(d7[56]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i57 (.D(d7[57]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i58 (.D(d7[58]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i59 (.D(d7[59]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i60 (.D(d7[60]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i61 (.D(d7[61]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i62 (.D(d7[62]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i63 (.D(d7[63]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i64 (.D(d7[64]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i65 (.D(d7[65]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i66 (.D(d7[66]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i67 (.D(d7[67]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d7[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d7_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i12 (.D(d8[12]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i13 (.D(d8[13]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i14 (.D(d8[14]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i15 (.D(d8[15]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i16 (.D(d8[16]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i17 (.D(d8[17]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i18 (.D(d8[18]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i19 (.D(d8[19]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i20 (.D(d8[20]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i21 (.D(d8[21]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i22 (.D(d8[22]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i23 (.D(d8[23]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i24 (.D(d8[24]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i25 (.D(d8[25]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i26 (.D(d8[26]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i27 (.D(d8[27]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i28 (.D(d8[28]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i29 (.D(d8[29]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i30 (.D(d8[30]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i31 (.D(d8[31]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i32 (.D(d8[32]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i33 (.D(d8[33]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i34 (.D(d8[34]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i35 (.D(d8[35]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i36 (.D(d8[36]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i37 (.D(d8[37]), .SP(osc_clk_enable_486), .CK(osc_clk), 
            .Q(d_d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i38 (.D(d8[38]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i39 (.D(d8[39]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i40 (.D(d8[40]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i41 (.D(d8[41]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i42 (.D(d8[42]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i43 (.D(d8[43]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i44 (.D(d8[44]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i45 (.D(d8[45]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i46 (.D(d8[46]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i47 (.D(d8[47]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i48 (.D(d8[48]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i49 (.D(d8[49]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i50 (.D(d8[50]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i51 (.D(d8[51]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i52 (.D(d8[52]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i53 (.D(d8[53]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i54 (.D(d8[54]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i55 (.D(d8[55]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i56 (.D(d8[56]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i57 (.D(d8[57]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i58 (.D(d8[58]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i59 (.D(d8[59]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i60 (.D(d8[60]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i61 (.D(d8[61]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i62 (.D(d8[62]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i63 (.D(d8[63]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i64 (.D(d8[64]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i65 (.D(d8[65]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i66 (.D(d8[66]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i67 (.D(d8[67]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d8[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d8_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i12 (.D(d9[12]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i13 (.D(d9[13]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i14 (.D(d9[14]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i15 (.D(d9[15]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i16 (.D(d9[16]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i17 (.D(d9[17]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i18 (.D(d9[18]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i19 (.D(d9[19]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i20 (.D(d9[20]), .SP(osc_clk_enable_536), .CK(osc_clk), 
            .Q(d_d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i21 (.D(d9[21]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i22 (.D(d9[22]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i23 (.D(d9[23]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i24 (.D(d9[24]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i25 (.D(d9[25]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i26 (.D(d9[26]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i27 (.D(d9[27]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i28 (.D(d9[28]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i29 (.D(d9[29]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i30 (.D(d9[30]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i31 (.D(d9[31]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i32 (.D(d9[32]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i33 (.D(d9[33]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i34 (.D(d9[34]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i35 (.D(d9[35]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i36 (.D(d9[36]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i37 (.D(d9[37]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i38 (.D(d9[38]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i39 (.D(d9[39]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i40 (.D(d9[40]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i41 (.D(d9[41]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i42 (.D(d9[42]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i43 (.D(d9[43]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i44 (.D(d9[44]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i45 (.D(d9[45]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i46 (.D(d9[46]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i47 (.D(d9[47]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i48 (.D(d9[48]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i49 (.D(d9[49]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i50 (.D(d9[50]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i51 (.D(d9[51]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i52 (.D(d9[52]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i53 (.D(d9[53]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i54 (.D(d9[54]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i55 (.D(d9[55]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i56 (.D(d9[56]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i57 (.D(d9[57]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i58 (.D(d9[58]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i59 (.D(d9[59]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i60 (.D(d9[60]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i61 (.D(d9[61]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i62 (.D(d9[62]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i63 (.D(d9[63]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i64 (.D(d9[64]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i65 (.D(d9[65]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i66 (.D(d9[66]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i67 (.D(d9[67]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(d_d9[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d9_i0_i67.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[61]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(\DataInNoSign_7__N_2364[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[62]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(MYLED_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[63]), .SP(osc_clk_enable_586), .CK(osc_clk), 
            .Q(MYLED_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[64]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(MYLED_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[65]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(n275)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[66]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(n274)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[67]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(MYLED_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i12 (.D(d_tmp[12]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i13 (.D(d_tmp[13]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i14 (.D(d_tmp[14]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i15 (.D(d_tmp[15]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i16 (.D(d_tmp[16]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i17 (.D(d_tmp[17]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i18 (.D(d_tmp[18]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i19 (.D(d_tmp[19]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i20 (.D(d_tmp[20]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i21 (.D(d_tmp[21]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i22 (.D(d_tmp[22]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i23 (.D(d_tmp[23]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i24 (.D(d_tmp[24]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i25 (.D(d_tmp[25]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i26 (.D(d_tmp[26]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i27 (.D(d_tmp[27]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i28 (.D(d_tmp[28]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i29 (.D(d_tmp[29]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i30 (.D(d_tmp[30]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i31 (.D(d_tmp[31]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i32 (.D(d_tmp[32]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i33 (.D(d_tmp[33]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i34 (.D(d_tmp[34]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i35 (.D(d_tmp[35]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i36 (.D(d_tmp[36]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i37 (.D(d_tmp[37]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i38 (.D(d_tmp[38]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i39 (.D(d_tmp[39]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i40 (.D(d_tmp[40]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i41 (.D(d_tmp[41]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i42 (.D(d_tmp[42]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i43 (.D(d_tmp[43]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i44 (.D(d_tmp[44]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i45 (.D(d_tmp[45]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i46 (.D(d_tmp[46]), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(d_d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i47 (.D(d_tmp[47]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i48 (.D(d_tmp[48]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i49 (.D(d_tmp[49]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i50 (.D(d_tmp[50]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i51 (.D(d_tmp[51]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i52 (.D(d_tmp[52]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i53 (.D(d_tmp[53]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i54 (.D(d_tmp[54]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i55 (.D(d_tmp[55]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i56 (.D(d_tmp[56]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i57 (.D(d_tmp[57]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i58 (.D(d_tmp[58]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i59 (.D(d_tmp[59]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i60 (.D(d_tmp[60]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i61 (.D(d_tmp[61]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i62 (.D(d_tmp[62]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i63 (.D(d_tmp[63]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i64 (.D(d_tmp[64]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i65 (.D(d_tmp[65]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i66 (.D(d_tmp[66]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i67 (.D(d_tmp[67]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d_d_tmp_i0_i67.GSR = "ENABLED";
    FD1P3AX d10__0__i2 (.D(n1655[61]), .SP(v_comb), .CK(osc_clk), .Q(d10[61]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i2.GSR = "ENABLED";
    FD1P3AX d10__0__i3 (.D(n1655[62]), .SP(v_comb), .CK(osc_clk), .Q(d10[62]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i3.GSR = "ENABLED";
    FD1P3AX d10__0__i4 (.D(n1655[63]), .SP(v_comb), .CK(osc_clk), .Q(d10[63]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i4.GSR = "ENABLED";
    FD1P3AX d10__0__i5 (.D(n1655[64]), .SP(v_comb), .CK(osc_clk), .Q(d10[64]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i5.GSR = "ENABLED";
    FD1P3AX d10__0__i6 (.D(n1655[65]), .SP(v_comb), .CK(osc_clk), .Q(d10[65]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i6.GSR = "ENABLED";
    FD1P3AX d10__0__i7 (.D(n1655[66]), .SP(v_comb), .CK(osc_clk), .Q(d10[66]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i7.GSR = "ENABLED";
    FD1P3AX d10__0__i8 (.D(n1655[67]), .SP(v_comb), .CK(osc_clk), .Q(d10[67]));   // c:/users/user/lattice/fpgasdr/cic.v(86[9] 131[5])
    defparam d10__0__i8.GSR = "ENABLED";
    FD1S3AX d1_i1 (.D(d1_67__N_1213[1]), .CK(osc_clk), .Q(d1[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i1.GSR = "ENABLED";
    FD1S3AX d1_i2 (.D(d1_67__N_1213[2]), .CK(osc_clk), .Q(d1[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i2.GSR = "ENABLED";
    FD1S3AX d1_i3 (.D(d1_67__N_1213[3]), .CK(osc_clk), .Q(d1[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i3.GSR = "ENABLED";
    FD1S3AX d1_i4 (.D(d1_67__N_1213[4]), .CK(osc_clk), .Q(d1[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i4.GSR = "ENABLED";
    FD1S3AX d1_i5 (.D(d1_67__N_1213[5]), .CK(osc_clk), .Q(d1[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i5.GSR = "ENABLED";
    FD1S3AX d1_i6 (.D(d1_67__N_1213[6]), .CK(osc_clk), .Q(d1[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i6.GSR = "ENABLED";
    FD1S3AX d1_i7 (.D(d1_67__N_1213[7]), .CK(osc_clk), .Q(d1[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i7.GSR = "ENABLED";
    FD1S3AX d1_i8 (.D(d1_67__N_1213[8]), .CK(osc_clk), .Q(d1[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i8.GSR = "ENABLED";
    FD1S3AX d1_i9 (.D(d1_67__N_1213[9]), .CK(osc_clk), .Q(d1[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i9.GSR = "ENABLED";
    FD1S3AX d1_i10 (.D(d1_67__N_1213[10]), .CK(osc_clk), .Q(d1[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i10.GSR = "ENABLED";
    FD1S3AX d1_i11 (.D(d1_67__N_1213[11]), .CK(osc_clk), .Q(d1[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i11.GSR = "ENABLED";
    FD1S3AX d1_i12 (.D(d1_67__N_1213[12]), .CK(osc_clk), .Q(d1[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i12.GSR = "ENABLED";
    FD1S3AX d1_i13 (.D(d1_67__N_1213[13]), .CK(osc_clk), .Q(d1[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i13.GSR = "ENABLED";
    FD1S3AX d1_i14 (.D(d1_67__N_1213[14]), .CK(osc_clk), .Q(d1[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i14.GSR = "ENABLED";
    FD1S3AX d1_i15 (.D(d1_67__N_1213[15]), .CK(osc_clk), .Q(d1[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i15.GSR = "ENABLED";
    FD1S3AX d1_i16 (.D(d1_67__N_1213[16]), .CK(osc_clk), .Q(d1[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i16.GSR = "ENABLED";
    FD1S3AX d1_i17 (.D(d1_67__N_1213[17]), .CK(osc_clk), .Q(d1[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i17.GSR = "ENABLED";
    FD1S3AX d1_i18 (.D(d1_67__N_1213[18]), .CK(osc_clk), .Q(d1[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i18.GSR = "ENABLED";
    FD1S3AX d1_i19 (.D(d1_67__N_1213[19]), .CK(osc_clk), .Q(d1[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i19.GSR = "ENABLED";
    FD1S3AX d1_i20 (.D(d1_67__N_1213[20]), .CK(osc_clk), .Q(d1[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i20.GSR = "ENABLED";
    FD1S3AX d1_i21 (.D(d1_67__N_1213[21]), .CK(osc_clk), .Q(d1[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i21.GSR = "ENABLED";
    FD1S3AX d1_i22 (.D(d1_67__N_1213[22]), .CK(osc_clk), .Q(d1[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i22.GSR = "ENABLED";
    FD1S3AX d1_i23 (.D(d1_67__N_1213[23]), .CK(osc_clk), .Q(d1[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i23.GSR = "ENABLED";
    FD1S3AX d1_i24 (.D(d1_67__N_1213[24]), .CK(osc_clk), .Q(d1[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i24.GSR = "ENABLED";
    FD1S3AX d1_i25 (.D(d1_67__N_1213[25]), .CK(osc_clk), .Q(d1[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i25.GSR = "ENABLED";
    FD1S3AX d1_i26 (.D(d1_67__N_1213[26]), .CK(osc_clk), .Q(d1[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i26.GSR = "ENABLED";
    FD1S3AX d1_i27 (.D(d1_67__N_1213[27]), .CK(osc_clk), .Q(d1[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i27.GSR = "ENABLED";
    FD1S3AX d1_i28 (.D(d1_67__N_1213[28]), .CK(osc_clk), .Q(d1[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i28.GSR = "ENABLED";
    FD1S3AX d1_i29 (.D(d1_67__N_1213[29]), .CK(osc_clk), .Q(d1[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i29.GSR = "ENABLED";
    FD1S3AX d1_i30 (.D(d1_67__N_1213[30]), .CK(osc_clk), .Q(d1[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i30.GSR = "ENABLED";
    FD1S3AX d1_i31 (.D(d1_67__N_1213[31]), .CK(osc_clk), .Q(d1[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i31.GSR = "ENABLED";
    FD1S3AX d1_i32 (.D(d1_67__N_1213[32]), .CK(osc_clk), .Q(d1[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i32.GSR = "ENABLED";
    FD1S3AX d1_i33 (.D(d1_67__N_1213[33]), .CK(osc_clk), .Q(d1[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i33.GSR = "ENABLED";
    FD1S3AX d1_i34 (.D(d1_67__N_1213[34]), .CK(osc_clk), .Q(d1[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i34.GSR = "ENABLED";
    FD1S3AX d1_i35 (.D(d1_67__N_1213[35]), .CK(osc_clk), .Q(d1[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i35.GSR = "ENABLED";
    FD1S3AX d1_i36 (.D(d1_67__N_1213[36]), .CK(osc_clk), .Q(d1[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i36.GSR = "ENABLED";
    FD1S3AX d1_i37 (.D(d1_67__N_1213[37]), .CK(osc_clk), .Q(d1[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i37.GSR = "ENABLED";
    FD1S3AX d1_i38 (.D(d1_67__N_1213[38]), .CK(osc_clk), .Q(d1[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i38.GSR = "ENABLED";
    FD1S3AX d1_i39 (.D(d1_67__N_1213[39]), .CK(osc_clk), .Q(d1[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i39.GSR = "ENABLED";
    FD1S3AX d1_i40 (.D(d1_67__N_1213[40]), .CK(osc_clk), .Q(d1[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i40.GSR = "ENABLED";
    FD1S3AX d1_i41 (.D(d1_67__N_1213[41]), .CK(osc_clk), .Q(d1[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i41.GSR = "ENABLED";
    FD1S3AX d1_i42 (.D(d1_67__N_1213[42]), .CK(osc_clk), .Q(d1[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i42.GSR = "ENABLED";
    FD1S3AX d1_i43 (.D(d1_67__N_1213[43]), .CK(osc_clk), .Q(d1[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i43.GSR = "ENABLED";
    FD1S3AX d1_i44 (.D(d1_67__N_1213[44]), .CK(osc_clk), .Q(d1[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i44.GSR = "ENABLED";
    FD1S3AX d1_i45 (.D(d1_67__N_1213[45]), .CK(osc_clk), .Q(d1[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i45.GSR = "ENABLED";
    FD1S3AX d1_i46 (.D(d1_67__N_1213[46]), .CK(osc_clk), .Q(d1[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i46.GSR = "ENABLED";
    FD1S3AX d1_i47 (.D(d1_67__N_1213[47]), .CK(osc_clk), .Q(d1[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i47.GSR = "ENABLED";
    FD1S3AX d1_i48 (.D(d1_67__N_1213[48]), .CK(osc_clk), .Q(d1[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i48.GSR = "ENABLED";
    FD1S3AX d1_i49 (.D(d1_67__N_1213[49]), .CK(osc_clk), .Q(d1[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i49.GSR = "ENABLED";
    FD1S3AX d1_i50 (.D(d1_67__N_1213[50]), .CK(osc_clk), .Q(d1[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i50.GSR = "ENABLED";
    FD1S3AX d1_i51 (.D(d1_67__N_1213[51]), .CK(osc_clk), .Q(d1[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i51.GSR = "ENABLED";
    FD1S3AX d1_i52 (.D(d1_67__N_1213[52]), .CK(osc_clk), .Q(d1[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i52.GSR = "ENABLED";
    FD1S3AX d1_i53 (.D(d1_67__N_1213[53]), .CK(osc_clk), .Q(d1[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i53.GSR = "ENABLED";
    FD1S3AX d1_i54 (.D(d1_67__N_1213[54]), .CK(osc_clk), .Q(d1[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i54.GSR = "ENABLED";
    FD1S3AX d1_i55 (.D(d1_67__N_1213[55]), .CK(osc_clk), .Q(d1[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i55.GSR = "ENABLED";
    FD1S3AX d1_i56 (.D(d1_67__N_1213[56]), .CK(osc_clk), .Q(d1[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i56.GSR = "ENABLED";
    FD1S3AX d1_i57 (.D(d1_67__N_1213[57]), .CK(osc_clk), .Q(d1[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i57.GSR = "ENABLED";
    FD1S3AX d1_i58 (.D(d1_67__N_1213[58]), .CK(osc_clk), .Q(d1[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i58.GSR = "ENABLED";
    FD1S3AX d1_i59 (.D(d1_67__N_1213[59]), .CK(osc_clk), .Q(d1[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i59.GSR = "ENABLED";
    FD1S3AX d1_i60 (.D(d1_67__N_1213[60]), .CK(osc_clk), .Q(d1[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i60.GSR = "ENABLED";
    FD1S3AX d1_i61 (.D(d1_67__N_1213[61]), .CK(osc_clk), .Q(d1[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i61.GSR = "ENABLED";
    FD1S3AX d1_i62 (.D(d1_67__N_1213[62]), .CK(osc_clk), .Q(d1[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i62.GSR = "ENABLED";
    FD1S3AX d1_i63 (.D(d1_67__N_1213[63]), .CK(osc_clk), .Q(d1[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i63.GSR = "ENABLED";
    FD1S3AX d1_i64 (.D(d1_67__N_1213[64]), .CK(osc_clk), .Q(d1[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i64.GSR = "ENABLED";
    FD1S3AX d1_i65 (.D(d1_67__N_1213[65]), .CK(osc_clk), .Q(d1[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i65.GSR = "ENABLED";
    FD1S3AX d1_i66 (.D(d1_67__N_1213[66]), .CK(osc_clk), .Q(d1[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i66.GSR = "ENABLED";
    FD1S3AX d1_i67 (.D(d1_67__N_1213[67]), .CK(osc_clk), .Q(d1[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam d1_i67.GSR = "ENABLED";
    CCU2D add_5_14 (.A0(d2[12]), .B0(d3[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[13]), .B1(d3[13]), .C1(GND_net), .D1(GND_net), .CIN(n465), 
          .COUT(n466), .S0(d3_67__N_1349[12]), .S1(d3_67__N_1349[13]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_14.INIT0 = 16'h5666;
    defparam add_5_14.INIT1 = 16'h5666;
    defparam add_5_14.INJECT1_0 = "NO";
    defparam add_5_14.INJECT1_1 = "NO";
    CCU2D add_5_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n464), 
          .COUT(n465), .S0(d3_67__N_1349[10]), .S1(d3_67__N_1349[11]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_12.INIT0 = 16'h5666;
    defparam add_5_12.INIT1 = 16'h5666;
    defparam add_5_12.INJECT1_0 = "NO";
    defparam add_5_12.INJECT1_1 = "NO";
    CCU2D add_5_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n463), 
          .COUT(n464), .S0(d3_67__N_1349[8]), .S1(d3_67__N_1349[9]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_10.INIT0 = 16'h5666;
    defparam add_5_10.INIT1 = 16'h5666;
    defparam add_5_10.INJECT1_0 = "NO";
    defparam add_5_10.INJECT1_1 = "NO";
    CCU2D add_5_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n462), 
          .COUT(n463), .S0(d3_67__N_1349[6]), .S1(d3_67__N_1349[7]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_8.INIT0 = 16'h5666;
    defparam add_5_8.INIT1 = 16'h5666;
    defparam add_5_8.INJECT1_0 = "NO";
    defparam add_5_8.INJECT1_1 = "NO";
    CCU2D add_5_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n461), 
          .COUT(n462), .S0(d3_67__N_1349[4]), .S1(d3_67__N_1349[5]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_6.INIT0 = 16'h5666;
    defparam add_5_6.INIT1 = 16'h5666;
    defparam add_5_6.INJECT1_0 = "NO";
    defparam add_5_6.INJECT1_1 = "NO";
    CCU2D add_5_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n460), 
          .COUT(n461), .S0(d3_67__N_1349[2]), .S1(d3_67__N_1349[3]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_4.INIT0 = 16'h5666;
    defparam add_5_4.INIT1 = 16'h5666;
    defparam add_5_4.INJECT1_0 = "NO";
    defparam add_5_4.INJECT1_1 = "NO";
    CCU2D add_5_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n460), 
          .S1(d3_67__N_1349[1]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_5_2.INIT0 = 16'h7000;
    defparam add_5_2.INIT1 = 16'h5666;
    defparam add_5_2.INJECT1_0 = "NO";
    defparam add_5_2.INJECT1_1 = "NO";
    CCU2D add_4_68 (.A0(d1[66]), .B0(d2[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[67]), .B1(d2[67]), .C1(GND_net), .D1(GND_net), .CIN(n457), 
          .S0(d2_67__N_1281[66]), .S1(d2_67__N_1281[67]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_68.INIT0 = 16'h5666;
    defparam add_4_68.INIT1 = 16'h5666;
    defparam add_4_68.INJECT1_0 = "NO";
    defparam add_4_68.INJECT1_1 = "NO";
    CCU2D add_4_66 (.A0(d1[64]), .B0(d2[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[65]), .B1(d2[65]), .C1(GND_net), .D1(GND_net), .CIN(n456), 
          .COUT(n457), .S0(d2_67__N_1281[64]), .S1(d2_67__N_1281[65]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_66.INIT0 = 16'h5666;
    defparam add_4_66.INIT1 = 16'h5666;
    defparam add_4_66.INJECT1_0 = "NO";
    defparam add_4_66.INJECT1_1 = "NO";
    CCU2D add_4_64 (.A0(d1[62]), .B0(d2[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[63]), .B1(d2[63]), .C1(GND_net), .D1(GND_net), .CIN(n455), 
          .COUT(n456), .S0(d2_67__N_1281[62]), .S1(d2_67__N_1281[63]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_64.INIT0 = 16'h5666;
    defparam add_4_64.INIT1 = 16'h5666;
    defparam add_4_64.INJECT1_0 = "NO";
    defparam add_4_64.INJECT1_1 = "NO";
    CCU2D add_4_62 (.A0(d1[60]), .B0(d2[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[61]), .B1(d2[61]), .C1(GND_net), .D1(GND_net), .CIN(n454), 
          .COUT(n455), .S0(d2_67__N_1281[60]), .S1(d2_67__N_1281[61]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_62.INIT0 = 16'h5666;
    defparam add_4_62.INIT1 = 16'h5666;
    defparam add_4_62.INJECT1_0 = "NO";
    defparam add_4_62.INJECT1_1 = "NO";
    CCU2D add_4_60 (.A0(d1[58]), .B0(d2[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[59]), .B1(d2[59]), .C1(GND_net), .D1(GND_net), .CIN(n453), 
          .COUT(n454), .S0(d2_67__N_1281[58]), .S1(d2_67__N_1281[59]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_60.INIT0 = 16'h5666;
    defparam add_4_60.INIT1 = 16'h5666;
    defparam add_4_60.INJECT1_0 = "NO";
    defparam add_4_60.INJECT1_1 = "NO";
    CCU2D add_4_58 (.A0(d1[56]), .B0(d2[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[57]), .B1(d2[57]), .C1(GND_net), .D1(GND_net), .CIN(n452), 
          .COUT(n453), .S0(d2_67__N_1281[56]), .S1(d2_67__N_1281[57]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_58.INIT0 = 16'h5666;
    defparam add_4_58.INIT1 = 16'h5666;
    defparam add_4_58.INJECT1_0 = "NO";
    defparam add_4_58.INJECT1_1 = "NO";
    CCU2D add_4_56 (.A0(d1[54]), .B0(d2[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[55]), .B1(d2[55]), .C1(GND_net), .D1(GND_net), .CIN(n451), 
          .COUT(n452), .S0(d2_67__N_1281[54]), .S1(d2_67__N_1281[55]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_56.INIT0 = 16'h5666;
    defparam add_4_56.INIT1 = 16'h5666;
    defparam add_4_56.INJECT1_0 = "NO";
    defparam add_4_56.INJECT1_1 = "NO";
    CCU2D add_4_54 (.A0(d1[52]), .B0(d2[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[53]), .B1(d2[53]), .C1(GND_net), .D1(GND_net), .CIN(n450), 
          .COUT(n451), .S0(d2_67__N_1281[52]), .S1(d2_67__N_1281[53]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_54.INIT0 = 16'h5666;
    defparam add_4_54.INIT1 = 16'h5666;
    defparam add_4_54.INJECT1_0 = "NO";
    defparam add_4_54.INJECT1_1 = "NO";
    CCU2D add_4_52 (.A0(d1[50]), .B0(d2[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[51]), .B1(d2[51]), .C1(GND_net), .D1(GND_net), .CIN(n449), 
          .COUT(n450), .S0(d2_67__N_1281[50]), .S1(d2_67__N_1281[51]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_52.INIT0 = 16'h5666;
    defparam add_4_52.INIT1 = 16'h5666;
    defparam add_4_52.INJECT1_0 = "NO";
    defparam add_4_52.INJECT1_1 = "NO";
    CCU2D add_4_50 (.A0(d1[48]), .B0(d2[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[49]), .B1(d2[49]), .C1(GND_net), .D1(GND_net), .CIN(n448), 
          .COUT(n449), .S0(d2_67__N_1281[48]), .S1(d2_67__N_1281[49]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_50.INIT0 = 16'h5666;
    defparam add_4_50.INIT1 = 16'h5666;
    defparam add_4_50.INJECT1_0 = "NO";
    defparam add_4_50.INJECT1_1 = "NO";
    CCU2D add_4_48 (.A0(d1[46]), .B0(d2[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[47]), .B1(d2[47]), .C1(GND_net), .D1(GND_net), .CIN(n447), 
          .COUT(n448), .S0(d2_67__N_1281[46]), .S1(d2_67__N_1281[47]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_48.INIT0 = 16'h5666;
    defparam add_4_48.INIT1 = 16'h5666;
    defparam add_4_48.INJECT1_0 = "NO";
    defparam add_4_48.INJECT1_1 = "NO";
    CCU2D add_4_46 (.A0(d1[44]), .B0(d2[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[45]), .B1(d2[45]), .C1(GND_net), .D1(GND_net), .CIN(n446), 
          .COUT(n447), .S0(d2_67__N_1281[44]), .S1(d2_67__N_1281[45]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_46.INIT0 = 16'h5666;
    defparam add_4_46.INIT1 = 16'h5666;
    defparam add_4_46.INJECT1_0 = "NO";
    defparam add_4_46.INJECT1_1 = "NO";
    CCU2D add_4_44 (.A0(d1[42]), .B0(d2[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[43]), .B1(d2[43]), .C1(GND_net), .D1(GND_net), .CIN(n445), 
          .COUT(n446), .S0(d2_67__N_1281[42]), .S1(d2_67__N_1281[43]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_44.INIT0 = 16'h5666;
    defparam add_4_44.INIT1 = 16'h5666;
    defparam add_4_44.INJECT1_0 = "NO";
    defparam add_4_44.INJECT1_1 = "NO";
    CCU2D add_4_42 (.A0(d1[40]), .B0(d2[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[41]), .B1(d2[41]), .C1(GND_net), .D1(GND_net), .CIN(n444), 
          .COUT(n445), .S0(d2_67__N_1281[40]), .S1(d2_67__N_1281[41]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_42.INIT0 = 16'h5666;
    defparam add_4_42.INIT1 = 16'h5666;
    defparam add_4_42.INJECT1_0 = "NO";
    defparam add_4_42.INJECT1_1 = "NO";
    CCU2D add_4_40 (.A0(d1[38]), .B0(d2[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[39]), .B1(d2[39]), .C1(GND_net), .D1(GND_net), .CIN(n443), 
          .COUT(n444), .S0(d2_67__N_1281[38]), .S1(d2_67__N_1281[39]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_40.INIT0 = 16'h5666;
    defparam add_4_40.INIT1 = 16'h5666;
    defparam add_4_40.INJECT1_0 = "NO";
    defparam add_4_40.INJECT1_1 = "NO";
    CCU2D add_4_38 (.A0(d1[36]), .B0(d2[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[37]), .B1(d2[37]), .C1(GND_net), .D1(GND_net), .CIN(n442), 
          .COUT(n443), .S0(d2_67__N_1281[36]), .S1(d2_67__N_1281[37]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_38.INIT0 = 16'h5666;
    defparam add_4_38.INIT1 = 16'h5666;
    defparam add_4_38.INJECT1_0 = "NO";
    defparam add_4_38.INJECT1_1 = "NO";
    CCU2D add_4_36 (.A0(d1[34]), .B0(d2[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[35]), .B1(d2[35]), .C1(GND_net), .D1(GND_net), .CIN(n441), 
          .COUT(n442), .S0(d2_67__N_1281[34]), .S1(d2_67__N_1281[35]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_36.INIT0 = 16'h5666;
    defparam add_4_36.INIT1 = 16'h5666;
    defparam add_4_36.INJECT1_0 = "NO";
    defparam add_4_36.INJECT1_1 = "NO";
    CCU2D add_4_34 (.A0(d1[32]), .B0(d2[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[33]), .B1(d2[33]), .C1(GND_net), .D1(GND_net), .CIN(n440), 
          .COUT(n441), .S0(d2_67__N_1281[32]), .S1(d2_67__N_1281[33]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_34.INIT0 = 16'h5666;
    defparam add_4_34.INIT1 = 16'h5666;
    defparam add_4_34.INJECT1_0 = "NO";
    defparam add_4_34.INJECT1_1 = "NO";
    CCU2D add_4_32 (.A0(d1[30]), .B0(d2[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[31]), .B1(d2[31]), .C1(GND_net), .D1(GND_net), .CIN(n439), 
          .COUT(n440), .S0(d2_67__N_1281[30]), .S1(d2_67__N_1281[31]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_32.INIT0 = 16'h5666;
    defparam add_4_32.INIT1 = 16'h5666;
    defparam add_4_32.INJECT1_0 = "NO";
    defparam add_4_32.INJECT1_1 = "NO";
    CCU2D add_4_30 (.A0(d1[28]), .B0(d2[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[29]), .B1(d2[29]), .C1(GND_net), .D1(GND_net), .CIN(n438), 
          .COUT(n439), .S0(d2_67__N_1281[28]), .S1(d2_67__N_1281[29]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_30.INIT0 = 16'h5666;
    defparam add_4_30.INIT1 = 16'h5666;
    defparam add_4_30.INJECT1_0 = "NO";
    defparam add_4_30.INJECT1_1 = "NO";
    CCU2D add_4_28 (.A0(d1[26]), .B0(d2[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[27]), .B1(d2[27]), .C1(GND_net), .D1(GND_net), .CIN(n437), 
          .COUT(n438), .S0(d2_67__N_1281[26]), .S1(d2_67__N_1281[27]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_28.INIT0 = 16'h5666;
    defparam add_4_28.INIT1 = 16'h5666;
    defparam add_4_28.INJECT1_0 = "NO";
    defparam add_4_28.INJECT1_1 = "NO";
    CCU2D add_4_26 (.A0(d1[24]), .B0(d2[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[25]), .B1(d2[25]), .C1(GND_net), .D1(GND_net), .CIN(n436), 
          .COUT(n437), .S0(d2_67__N_1281[24]), .S1(d2_67__N_1281[25]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_26.INIT0 = 16'h5666;
    defparam add_4_26.INIT1 = 16'h5666;
    defparam add_4_26.INJECT1_0 = "NO";
    defparam add_4_26.INJECT1_1 = "NO";
    CCU2D add_4_24 (.A0(d1[22]), .B0(d2[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[23]), .B1(d2[23]), .C1(GND_net), .D1(GND_net), .CIN(n435), 
          .COUT(n436), .S0(d2_67__N_1281[22]), .S1(d2_67__N_1281[23]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_24.INIT0 = 16'h5666;
    defparam add_4_24.INIT1 = 16'h5666;
    defparam add_4_24.INJECT1_0 = "NO";
    defparam add_4_24.INJECT1_1 = "NO";
    CCU2D add_4_22 (.A0(d1[20]), .B0(d2[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[21]), .B1(d2[21]), .C1(GND_net), .D1(GND_net), .CIN(n434), 
          .COUT(n435), .S0(d2_67__N_1281[20]), .S1(d2_67__N_1281[21]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_22.INIT0 = 16'h5666;
    defparam add_4_22.INIT1 = 16'h5666;
    defparam add_4_22.INJECT1_0 = "NO";
    defparam add_4_22.INJECT1_1 = "NO";
    CCU2D add_4_20 (.A0(d1[18]), .B0(d2[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[19]), .B1(d2[19]), .C1(GND_net), .D1(GND_net), .CIN(n433), 
          .COUT(n434), .S0(d2_67__N_1281[18]), .S1(d2_67__N_1281[19]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_20.INIT0 = 16'h5666;
    defparam add_4_20.INIT1 = 16'h5666;
    defparam add_4_20.INJECT1_0 = "NO";
    defparam add_4_20.INJECT1_1 = "NO";
    CCU2D add_4_18 (.A0(d1[16]), .B0(d2[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[17]), .B1(d2[17]), .C1(GND_net), .D1(GND_net), .CIN(n432), 
          .COUT(n433), .S0(d2_67__N_1281[16]), .S1(d2_67__N_1281[17]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_18.INIT0 = 16'h5666;
    defparam add_4_18.INIT1 = 16'h5666;
    defparam add_4_18.INJECT1_0 = "NO";
    defparam add_4_18.INJECT1_1 = "NO";
    CCU2D add_4_16 (.A0(d1[14]), .B0(d2[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[15]), .B1(d2[15]), .C1(GND_net), .D1(GND_net), .CIN(n431), 
          .COUT(n432), .S0(d2_67__N_1281[14]), .S1(d2_67__N_1281[15]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_16.INIT0 = 16'h5666;
    defparam add_4_16.INIT1 = 16'h5666;
    defparam add_4_16.INJECT1_0 = "NO";
    defparam add_4_16.INJECT1_1 = "NO";
    CCU2D add_4_14 (.A0(d1[12]), .B0(d2[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[13]), .B1(d2[13]), .C1(GND_net), .D1(GND_net), .CIN(n430), 
          .COUT(n431), .S0(d2_67__N_1281[12]), .S1(d2_67__N_1281[13]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_14.INIT0 = 16'h5666;
    defparam add_4_14.INIT1 = 16'h5666;
    defparam add_4_14.INJECT1_0 = "NO";
    defparam add_4_14.INJECT1_1 = "NO";
    CCU2D add_4_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n429), 
          .COUT(n430), .S0(d2_67__N_1281[10]), .S1(d2_67__N_1281[11]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_12.INIT0 = 16'h5666;
    defparam add_4_12.INIT1 = 16'h5666;
    defparam add_4_12.INJECT1_0 = "NO";
    defparam add_4_12.INJECT1_1 = "NO";
    CCU2D add_4_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n428), 
          .COUT(n429), .S0(d2_67__N_1281[8]), .S1(d2_67__N_1281[9]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_10.INIT0 = 16'h5666;
    defparam add_4_10.INIT1 = 16'h5666;
    defparam add_4_10.INJECT1_0 = "NO";
    defparam add_4_10.INJECT1_1 = "NO";
    CCU2D add_4_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n427), 
          .COUT(n428), .S0(d2_67__N_1281[6]), .S1(d2_67__N_1281[7]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_8.INIT0 = 16'h5666;
    defparam add_4_8.INIT1 = 16'h5666;
    defparam add_4_8.INJECT1_0 = "NO";
    defparam add_4_8.INJECT1_1 = "NO";
    CCU2D add_4_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n426), 
          .COUT(n427), .S0(d2_67__N_1281[4]), .S1(d2_67__N_1281[5]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_6.INIT0 = 16'h5666;
    defparam add_4_6.INIT1 = 16'h5666;
    defparam add_4_6.INJECT1_0 = "NO";
    defparam add_4_6.INJECT1_1 = "NO";
    CCU2D add_4_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n425), 
          .COUT(n426), .S0(d2_67__N_1281[2]), .S1(d2_67__N_1281[3]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_4.INIT0 = 16'h5666;
    defparam add_4_4.INIT1 = 16'h5666;
    defparam add_4_4.INJECT1_0 = "NO";
    defparam add_4_4.INJECT1_1 = "NO";
    CCU2D add_4_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n425), 
          .S1(d2_67__N_1281[1]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_4_2.INIT0 = 16'h7000;
    defparam add_4_2.INIT1 = 16'h5666;
    defparam add_4_2.INJECT1_0 = "NO";
    defparam add_4_2.INJECT1_1 = "NO";
    CCU2D add_3_68 (.A0(MixerOutSin_c_7), .B0(d1[66]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[67]), .C1(GND_net), .D1(GND_net), 
          .CIN(n422), .S0(d1_67__N_1213[66]), .S1(d1_67__N_1213[67]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_68.INIT0 = 16'h5666;
    defparam add_3_68.INIT1 = 16'h5666;
    defparam add_3_68.INJECT1_0 = "NO";
    defparam add_3_68.INJECT1_1 = "NO";
    CCU2D add_3_66 (.A0(MixerOutSin_c_7), .B0(d1[64]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[65]), .C1(GND_net), .D1(GND_net), 
          .CIN(n421), .COUT(n422), .S0(d1_67__N_1213[64]), .S1(d1_67__N_1213[65]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_66.INIT0 = 16'h5666;
    defparam add_3_66.INIT1 = 16'h5666;
    defparam add_3_66.INJECT1_0 = "NO";
    defparam add_3_66.INJECT1_1 = "NO";
    CCU2D add_3_64 (.A0(MixerOutSin_c_7), .B0(d1[62]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[63]), .C1(GND_net), .D1(GND_net), 
          .CIN(n420), .COUT(n421), .S0(d1_67__N_1213[62]), .S1(d1_67__N_1213[63]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_64.INIT0 = 16'h5666;
    defparam add_3_64.INIT1 = 16'h5666;
    defparam add_3_64.INJECT1_0 = "NO";
    defparam add_3_64.INJECT1_1 = "NO";
    CCU2D add_3_62 (.A0(MixerOutSin_c_7), .B0(d1[60]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[61]), .C1(GND_net), .D1(GND_net), 
          .CIN(n419), .COUT(n420), .S0(d1_67__N_1213[60]), .S1(d1_67__N_1213[61]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_62.INIT0 = 16'h5666;
    defparam add_3_62.INIT1 = 16'h5666;
    defparam add_3_62.INJECT1_0 = "NO";
    defparam add_3_62.INJECT1_1 = "NO";
    CCU2D add_3_60 (.A0(MixerOutSin_c_7), .B0(d1[58]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[59]), .C1(GND_net), .D1(GND_net), 
          .CIN(n418), .COUT(n419), .S0(d1_67__N_1213[58]), .S1(d1_67__N_1213[59]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_60.INIT0 = 16'h5666;
    defparam add_3_60.INIT1 = 16'h5666;
    defparam add_3_60.INJECT1_0 = "NO";
    defparam add_3_60.INJECT1_1 = "NO";
    CCU2D add_3_58 (.A0(MixerOutSin_c_7), .B0(d1[56]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[57]), .C1(GND_net), .D1(GND_net), 
          .CIN(n417), .COUT(n418), .S0(d1_67__N_1213[56]), .S1(d1_67__N_1213[57]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_58.INIT0 = 16'h5666;
    defparam add_3_58.INIT1 = 16'h5666;
    defparam add_3_58.INJECT1_0 = "NO";
    defparam add_3_58.INJECT1_1 = "NO";
    CCU2D add_3_56 (.A0(MixerOutSin_c_7), .B0(d1[54]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[55]), .C1(GND_net), .D1(GND_net), 
          .CIN(n416), .COUT(n417), .S0(d1_67__N_1213[54]), .S1(d1_67__N_1213[55]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_56.INIT0 = 16'h5666;
    defparam add_3_56.INIT1 = 16'h5666;
    defparam add_3_56.INJECT1_0 = "NO";
    defparam add_3_56.INJECT1_1 = "NO";
    CCU2D add_3_54 (.A0(MixerOutSin_c_7), .B0(d1[52]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[53]), .C1(GND_net), .D1(GND_net), 
          .CIN(n415), .COUT(n416), .S0(d1_67__N_1213[52]), .S1(d1_67__N_1213[53]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_54.INIT0 = 16'h5666;
    defparam add_3_54.INIT1 = 16'h5666;
    defparam add_3_54.INJECT1_0 = "NO";
    defparam add_3_54.INJECT1_1 = "NO";
    CCU2D add_3_52 (.A0(MixerOutSin_c_7), .B0(d1[50]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[51]), .C1(GND_net), .D1(GND_net), 
          .CIN(n414), .COUT(n415), .S0(d1_67__N_1213[50]), .S1(d1_67__N_1213[51]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_52.INIT0 = 16'h5666;
    defparam add_3_52.INIT1 = 16'h5666;
    defparam add_3_52.INJECT1_0 = "NO";
    defparam add_3_52.INJECT1_1 = "NO";
    CCU2D add_3_50 (.A0(MixerOutSin_c_7), .B0(d1[48]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[49]), .C1(GND_net), .D1(GND_net), 
          .CIN(n413), .COUT(n414), .S0(d1_67__N_1213[48]), .S1(d1_67__N_1213[49]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_50.INIT0 = 16'h5666;
    defparam add_3_50.INIT1 = 16'h5666;
    defparam add_3_50.INJECT1_0 = "NO";
    defparam add_3_50.INJECT1_1 = "NO";
    CCU2D add_3_48 (.A0(MixerOutSin_c_7), .B0(d1[46]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[47]), .C1(GND_net), .D1(GND_net), 
          .CIN(n412), .COUT(n413), .S0(d1_67__N_1213[46]), .S1(d1_67__N_1213[47]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_48.INIT0 = 16'h5666;
    defparam add_3_48.INIT1 = 16'h5666;
    defparam add_3_48.INJECT1_0 = "NO";
    defparam add_3_48.INJECT1_1 = "NO";
    CCU2D add_3_46 (.A0(MixerOutSin_c_7), .B0(d1[44]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[45]), .C1(GND_net), .D1(GND_net), 
          .CIN(n411), .COUT(n412), .S0(d1_67__N_1213[44]), .S1(d1_67__N_1213[45]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_46.INIT0 = 16'h5666;
    defparam add_3_46.INIT1 = 16'h5666;
    defparam add_3_46.INJECT1_0 = "NO";
    defparam add_3_46.INJECT1_1 = "NO";
    CCU2D add_3_44 (.A0(MixerOutSin_c_7), .B0(d1[42]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[43]), .C1(GND_net), .D1(GND_net), 
          .CIN(n410), .COUT(n411), .S0(d1_67__N_1213[42]), .S1(d1_67__N_1213[43]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_44.INIT0 = 16'h5666;
    defparam add_3_44.INIT1 = 16'h5666;
    defparam add_3_44.INJECT1_0 = "NO";
    defparam add_3_44.INJECT1_1 = "NO";
    CCU2D add_3_42 (.A0(MixerOutSin_c_7), .B0(d1[40]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[41]), .C1(GND_net), .D1(GND_net), 
          .CIN(n409), .COUT(n410), .S0(d1_67__N_1213[40]), .S1(d1_67__N_1213[41]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_42.INIT0 = 16'h5666;
    defparam add_3_42.INIT1 = 16'h5666;
    defparam add_3_42.INJECT1_0 = "NO";
    defparam add_3_42.INJECT1_1 = "NO";
    CCU2D add_3_40 (.A0(MixerOutSin_c_7), .B0(d1[38]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[39]), .C1(GND_net), .D1(GND_net), 
          .CIN(n408), .COUT(n409), .S0(d1_67__N_1213[38]), .S1(d1_67__N_1213[39]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_40.INIT0 = 16'h5666;
    defparam add_3_40.INIT1 = 16'h5666;
    defparam add_3_40.INJECT1_0 = "NO";
    defparam add_3_40.INJECT1_1 = "NO";
    CCU2D add_3_38 (.A0(MixerOutSin_c_7), .B0(d1[36]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[37]), .C1(GND_net), .D1(GND_net), 
          .CIN(n407), .COUT(n408), .S0(d1_67__N_1213[36]), .S1(d1_67__N_1213[37]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_38.INIT0 = 16'h5666;
    defparam add_3_38.INIT1 = 16'h5666;
    defparam add_3_38.INJECT1_0 = "NO";
    defparam add_3_38.INJECT1_1 = "NO";
    CCU2D add_3_36 (.A0(MixerOutSin_c_7), .B0(d1[34]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[35]), .C1(GND_net), .D1(GND_net), 
          .CIN(n406), .COUT(n407), .S0(d1_67__N_1213[34]), .S1(d1_67__N_1213[35]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_36.INIT0 = 16'h5666;
    defparam add_3_36.INIT1 = 16'h5666;
    defparam add_3_36.INJECT1_0 = "NO";
    defparam add_3_36.INJECT1_1 = "NO";
    CCU2D add_3_34 (.A0(MixerOutSin_c_7), .B0(d1[32]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[33]), .C1(GND_net), .D1(GND_net), 
          .CIN(n405), .COUT(n406), .S0(d1_67__N_1213[32]), .S1(d1_67__N_1213[33]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_34.INIT0 = 16'h5666;
    defparam add_3_34.INIT1 = 16'h5666;
    defparam add_3_34.INJECT1_0 = "NO";
    defparam add_3_34.INJECT1_1 = "NO";
    CCU2D add_3_32 (.A0(MixerOutSin_c_7), .B0(d1[30]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[31]), .C1(GND_net), .D1(GND_net), 
          .CIN(n404), .COUT(n405), .S0(d1_67__N_1213[30]), .S1(d1_67__N_1213[31]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_32.INIT0 = 16'h5666;
    defparam add_3_32.INIT1 = 16'h5666;
    defparam add_3_32.INJECT1_0 = "NO";
    defparam add_3_32.INJECT1_1 = "NO";
    CCU2D add_3_30 (.A0(MixerOutSin_c_7), .B0(d1[28]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[29]), .C1(GND_net), .D1(GND_net), 
          .CIN(n403), .COUT(n404), .S0(d1_67__N_1213[28]), .S1(d1_67__N_1213[29]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_30.INIT0 = 16'h5666;
    defparam add_3_30.INIT1 = 16'h5666;
    defparam add_3_30.INJECT1_0 = "NO";
    defparam add_3_30.INJECT1_1 = "NO";
    CCU2D add_3_28 (.A0(MixerOutSin_c_7), .B0(d1[26]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[27]), .C1(GND_net), .D1(GND_net), 
          .CIN(n402), .COUT(n403), .S0(d1_67__N_1213[26]), .S1(d1_67__N_1213[27]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_28.INIT0 = 16'h5666;
    defparam add_3_28.INIT1 = 16'h5666;
    defparam add_3_28.INJECT1_0 = "NO";
    defparam add_3_28.INJECT1_1 = "NO";
    CCU2D add_3_26 (.A0(MixerOutSin_c_7), .B0(d1[24]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[25]), .C1(GND_net), .D1(GND_net), 
          .CIN(n401), .COUT(n402), .S0(d1_67__N_1213[24]), .S1(d1_67__N_1213[25]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_26.INIT0 = 16'h5666;
    defparam add_3_26.INIT1 = 16'h5666;
    defparam add_3_26.INJECT1_0 = "NO";
    defparam add_3_26.INJECT1_1 = "NO";
    CCU2D add_3_24 (.A0(MixerOutSin_c_7), .B0(d1[22]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[23]), .C1(GND_net), .D1(GND_net), 
          .CIN(n400), .COUT(n401), .S0(d1_67__N_1213[22]), .S1(d1_67__N_1213[23]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_24.INIT0 = 16'h5666;
    defparam add_3_24.INIT1 = 16'h5666;
    defparam add_3_24.INJECT1_0 = "NO";
    defparam add_3_24.INJECT1_1 = "NO";
    CCU2D add_3_22 (.A0(MixerOutSin_c_7), .B0(d1[20]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[21]), .C1(GND_net), .D1(GND_net), 
          .CIN(n399), .COUT(n400), .S0(d1_67__N_1213[20]), .S1(d1_67__N_1213[21]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_22.INIT0 = 16'h5666;
    defparam add_3_22.INIT1 = 16'h5666;
    defparam add_3_22.INJECT1_0 = "NO";
    defparam add_3_22.INJECT1_1 = "NO";
    CCU2D add_3_20 (.A0(MixerOutSin_c_7), .B0(d1[18]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[19]), .C1(GND_net), .D1(GND_net), 
          .CIN(n398), .COUT(n399), .S0(d1_67__N_1213[18]), .S1(d1_67__N_1213[19]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_20.INIT0 = 16'h5666;
    defparam add_3_20.INIT1 = 16'h5666;
    defparam add_3_20.INJECT1_0 = "NO";
    defparam add_3_20.INJECT1_1 = "NO";
    CCU2D add_3_18 (.A0(MixerOutSin_c_7), .B0(d1[16]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[17]), .C1(GND_net), .D1(GND_net), 
          .CIN(n397), .COUT(n398), .S0(d1_67__N_1213[16]), .S1(d1_67__N_1213[17]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_18.INIT0 = 16'h5666;
    defparam add_3_18.INIT1 = 16'h5666;
    defparam add_3_18.INJECT1_0 = "NO";
    defparam add_3_18.INJECT1_1 = "NO";
    CCU2D add_3_16 (.A0(MixerOutSin_c_7), .B0(d1[14]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[15]), .C1(GND_net), .D1(GND_net), 
          .CIN(n396), .COUT(n397), .S0(d1_67__N_1213[14]), .S1(d1_67__N_1213[15]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_16.INIT0 = 16'h5666;
    defparam add_3_16.INIT1 = 16'h5666;
    defparam add_3_16.INJECT1_0 = "NO";
    defparam add_3_16.INJECT1_1 = "NO";
    CCU2D add_3_14 (.A0(MixerOutSin_c_7), .B0(d1[12]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[13]), .C1(GND_net), .D1(GND_net), 
          .CIN(n395), .COUT(n396), .S0(d1_67__N_1213[12]), .S1(d1_67__N_1213[13]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_14.INIT0 = 16'h5666;
    defparam add_3_14.INIT1 = 16'h5666;
    defparam add_3_14.INJECT1_0 = "NO";
    defparam add_3_14.INJECT1_1 = "NO";
    CCU2D add_3_12 (.A0(MixerOutSin_c_7), .B0(d1[10]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[11]), .C1(GND_net), .D1(GND_net), 
          .CIN(n394), .COUT(n395), .S0(d1_67__N_1213[10]), .S1(d1_67__N_1213[11]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_12.INIT0 = 16'h5666;
    defparam add_3_12.INIT1 = 16'h5666;
    defparam add_3_12.INJECT1_0 = "NO";
    defparam add_3_12.INJECT1_1 = "NO";
    CCU2D add_3_10 (.A0(MixerOutSin_c_7), .B0(d1[8]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n393), .COUT(n394), .S0(d1_67__N_1213[8]), .S1(d1_67__N_1213[9]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_10.INIT0 = 16'h5666;
    defparam add_3_10.INIT1 = 16'h5666;
    defparam add_3_10.INJECT1_0 = "NO";
    defparam add_3_10.INJECT1_1 = "NO";
    CCU2D add_3_8 (.A0(MixerOutSin_c_6), .B0(d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n392), .COUT(n393), .S0(d1_67__N_1213[6]), .S1(d1_67__N_1213[7]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_8.INIT0 = 16'h5666;
    defparam add_3_8.INIT1 = 16'h5666;
    defparam add_3_8.INJECT1_0 = "NO";
    defparam add_3_8.INJECT1_1 = "NO";
    CCU2D add_3_6 (.A0(MixerOutSin_c_4), .B0(d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_5), .B1(d1[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n391), .COUT(n392), .S0(d1_67__N_1213[4]), .S1(d1_67__N_1213[5]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_6.INIT0 = 16'h5666;
    defparam add_3_6.INIT1 = 16'h5666;
    defparam add_3_6.INJECT1_0 = "NO";
    defparam add_3_6.INJECT1_1 = "NO";
    CCU2D add_3_4 (.A0(MixerOutSin_c_2), .B0(d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_3), .B1(d1[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n390), .COUT(n391), .S0(d1_67__N_1213[2]), .S1(d1_67__N_1213[3]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_4.INIT0 = 16'h5666;
    defparam add_3_4.INIT1 = 16'h5666;
    defparam add_3_4.INJECT1_0 = "NO";
    defparam add_3_4.INJECT1_1 = "NO";
    CCU2D add_3_2 (.A0(MixerOutSin_c_0), .B0(d1[0]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_1), .B1(d1[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n390), .S1(d1_67__N_1213[1]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:19])
    defparam add_3_2.INIT0 = 16'h7000;
    defparam add_3_2.INIT1 = 16'h5666;
    defparam add_3_2.INJECT1_0 = "NO";
    defparam add_3_2.INJECT1_1 = "NO";
    FD1S3IX count_53_54__i2 (.D(n53[1]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i2.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(count[10]), .B(count[5]), .C(count[0]), .D(count[8]), 
         .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(73[17:47])
    defparam i7_4_lut.init = 16'hfffe;
    FD1S3AX v_comb_87_rep_14 (.D(osc_clk_enable_114), .CK(osc_clk), .Q(osc_clk_enable_386)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=119 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(42[9] 84[5])
    defparam v_comb_87_rep_14.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_2 (.A(count[9]), .B(count[6]), .C(count[3]), .D(count[11]), 
         .Z(n20_adj_2375)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(73[17:47])
    defparam i8_4_lut_adj_2.init = 16'hfeff;
    LUT4 i11_4_lut (.A(count[9]), .B(n22), .C(n18), .D(count[1]), .Z(d_clk_tmp_N_2345)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    FD1S3IX count_53_54__i3 (.D(n53[2]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i3.GSR = "ENABLED";
    FD1S3IX count_53_54__i4 (.D(n53[3]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i4.GSR = "ENABLED";
    FD1S3IX count_53_54__i5 (.D(n53[4]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i5.GSR = "ENABLED";
    FD1S3IX count_53_54__i6 (.D(n53[5]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i6.GSR = "ENABLED";
    FD1S3IX count_53_54__i7 (.D(n53[6]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i7.GSR = "ENABLED";
    FD1S3IX count_53_54__i8 (.D(n53[7]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i8.GSR = "ENABLED";
    FD1S3IX count_53_54__i9 (.D(n53[8]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i9.GSR = "ENABLED";
    FD1S3IX count_53_54__i10 (.D(n53[9]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i10.GSR = "ENABLED";
    FD1S3IX count_53_54__i11 (.D(n53[10]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i11.GSR = "ENABLED";
    FD1S3IX count_53_54__i12 (.D(n53[11]), .CK(osc_clk), .CD(d_clk_tmp_N_2345), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(80[14:27])
    defparam count_53_54__i12.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module SinCos
//

module SinCos (osc_clk, VCC_net, GND_net, LOSine, \phase_accum[63] , 
            \phase_accum[62] , \phase_accum[61] , \phase_accum[60] , \phase_accum[59] , 
            \phase_accum[58] , \phase_accum[57] , \phase_accum[56] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk;
    input VCC_net;
    input GND_net;
    output [7:0]LOSine;
    input \phase_accum[63] ;
    input \phase_accum[62] ;
    input \phase_accum[61] ;
    input \phase_accum[60] ;
    input \phase_accum[59] ;
    input \phase_accum[58] ;
    input \phase_accum[57] ;
    input \phase_accum[56] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    
    wire Sine_6_ffin, Sine_5_ffin, Sine_4_ffin, Sine_3_ffin, Sine_2_ffin, 
        Sine_1_ffin, Sine_0_ffin, Sine_7_ffin;
    
    FD1P3DX FF_14 (.D(Sine_6_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(37[13] 38[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(Sine_5_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(41[13] 42[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(Sine_4_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(45[13] 46[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(Sine_3_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(49[13] 50[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(Sine_2_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(53[13] 54[21])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(Sine_1_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(57[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(Sine_0_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(60[13:84])
    defparam FF_8.GSR = "ENABLED";
    ROM256X1A triglut_1_0_15 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_15.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_14 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_14.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000001111111111100000000000000000000000000000000000000000000000000000000000;
    FD1P3DX FF_15 (.D(Sine_7_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(33[13] 34[21])
    defparam FF_15.GSR = "ENABLED";
    ROM256X1A triglut_1_0_13 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_13.initval = 256'b1111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111000000000000000000000111111111111111111111111111111111111110000000000011111111111111111111111111111111111111000000000000000000000;
    ROM256X1A triglut_1_0_12 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_12.initval = 256'b1111111111000000000001111111111111100000000000000000000000000000000000000000000000000000000011111111111111000000000001111111111000000000011111111111000000000000001111111111111111111111110000000000011111111111111111111111100000000000000111111111110000000000;
    ROM256X1A triglut_1_0_11 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_11.initval = 256'b1111100000111111000001111110000000011111111100000000000000000000000000000000000000011111111100000000111111000001111110000011111000001111100000011111000000011111110000000011111111111111110000000000011111111111111110000000011111110000000111110000001111100000;
    ROM256X1A triglut_1_0_10 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_10.initval = 256'b1100011100111000110001110001111000011110000011111100000000000000000000000000011111100000111100001111000111000110001110011100011000110001100011100011000111100011110000111100000011111111110000000000011111111110000001111000011110001111000110001110001100011000;
    ROM256X1A triglut_1_0_9 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_9.initval = 256'b1011010010100100101101101101100110011001100011000011111000000000000000001111100001100011001100110011011011011010010010100101101011010010100101101101001001101100110011001100011100001111110000000000011111100001110001100110011001101100100101101101001010010110;
    ROM256X1A triglut_1_0_8 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[8] 89[2])
    defparam triglut_1_0_8.initval = 256'b0110011000110010011001001011010101010101010010110011000111000000000001110001100110100101010101010101101001001100100110001100110001100110001100100110010010110101010101010100101100110001110000000000011100011001101001010101010101011010010011001001100011001100;
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (XIn_c, osc_clk, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input XIn_c;
    output osc_clk;
    input GND_net;
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    
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
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="136.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=128, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(128[5] 130[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 17;
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
