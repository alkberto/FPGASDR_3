// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Wed May 29 22:23:43 2019
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, MixerOutSin, 
            XIn, XOut, RFIn, DiffIn, DiffOut, PWMOut, sinGen, 
            sin_out, CIC_out_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(3[8:11])
    input i_Rx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(5[13:24])
    output o_Tx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[11:22])
    output o_Rx_DV;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    output [7:0]MYLED;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    output [7:0]MixerOutSin;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    input XIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:11])
    output XOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:13])
    input RFIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:13])
    input DiffIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:14])
    output DiffOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:16])
    output PWMOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[9:15])
    output sinGen;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(18[9:15])
    output sin_out;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[9:16])
    output CIC_out_clk;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(20[9:20])
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
    wire GND_net, VCC_net, sin_out_c, MYLED_c_5, MixerOutSin_c_7, 
        MixerOutSin_c_6, MixerOutSin_c_5, MixerOutSin_c_4, MixerOutSin_c_3, 
        MixerOutSin_c_2, MixerOutSin_c_1, MixerOutSin_c_0, RFIn_c, DiffOut_c, 
        PWMOut_c, CIC_out_clk_c;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(32[13:24])
    wire [7:0]LOSine;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(33[12:18])
    
    wire cos_out_N_66, n1845, n1846, MYLED_c_4, MYLED_c_3, MYLED_c_2;
    wire [7:0]DataInNoSign_7__N_2588;
    
    VHI i2 (.Z(VCC_net));
    nco_sig nco (.osc_clk(osc_clk), .\phase_accum[63] (phase_accum[63]), 
            .sin_out_c(sin_out_c), .\phase_accum[62] (phase_accum[62]), 
            .cos_out_N_66(cos_out_N_66), .\phase_accum[61] (phase_accum[61]), 
            .\phase_accum[60] (phase_accum[60]), .\phase_accum[59] (phase_accum[59]), 
            .\phase_accum[58] (phase_accum[58]), .\phase_accum[57] (phase_accum[57]), 
            .\phase_accum[56] (phase_accum[56]), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(84[10] 90[2])
    Mixer Mixer1 (.MixerOutSin_c_0(MixerOutSin_c_0), .osc_clk(osc_clk), 
          .DiffOut_c(DiffOut_c), .RFIn_c(RFIn_c), .LOSine({LOSine}), .MixerOutSin_c_1(MixerOutSin_c_1), 
          .MixerOutSin_c_2(MixerOutSin_c_2), .MixerOutSin_c_3(MixerOutSin_c_3), 
          .MixerOutSin_c_4(MixerOutSin_c_4), .MixerOutSin_c_5(MixerOutSin_c_5), 
          .MixerOutSin_c_6(MixerOutSin_c_6), .MixerOutSin_c_7(MixerOutSin_c_7), 
          .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(112[7] 120[2])
    PWM PWM1 (.osc_clk(osc_clk), .\DataInNoSign_7__N_2588[0] (DataInNoSign_7__N_2588[0]), 
        .PWMOut_c(PWMOut_c), .MYLED_c_5(MYLED_c_5), .\DataInNoSign_7__N_2588[1] (DataInNoSign_7__N_2588[1]), 
        .MYLED_c_2(MYLED_c_2), .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), 
        .n1846(n1846), .n1845(n1845), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(142[5] 147[2])
    OB o_Rx_DV_pad (.I(GND_net), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[13:20])
    OB o_Tx_Serial_pad (.I(GND_net), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[11:22])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB o_Rx_Byte_pad_7 (.I(GND_net), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_6 (.I(GND_net), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_5 (.I(GND_net), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_4 (.I(GND_net), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_3 (.I(GND_net), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_2 (.I(GND_net), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_1 (.I(GND_net), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_0 (.I(GND_net), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB MYLED_pad_7 (.I(sin_out_c), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_6 (.I(cos_out_N_66), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_5 (.I(MYLED_c_5), .O(MYLED[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_4 (.I(n1845), .O(MYLED[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_3 (.I(n1846), .O(MYLED[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
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
    OB sin_out_pad (.I(sin_out_c), .O(sin_out));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[9:16])
    OB CIC_out_clk_pad (.I(CIC_out_clk_c), .O(CIC_out_clk));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(20[9:20])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:11])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:13])
    SinCos SinCos1 (.osc_clk(osc_clk), .VCC_net(VCC_net), .GND_net(GND_net), 
           .LOSine({LOSine}), .\phase_accum[63] (phase_accum[63]), .\phase_accum[62] (phase_accum[62]), 
           .\phase_accum[61] (phase_accum[61]), .\phase_accum[60] (phase_accum[60]), 
           .\phase_accum[59] (phase_accum[59]), .\phase_accum[58] (phase_accum[58]), 
           .\phase_accum[57] (phase_accum[57]), .\phase_accum[56] (phase_accum[56])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    GSR GSR_INST (.GSR(VCC_net));
    \CIC(width=74)  CIC1 (.GND_net(GND_net), .osc_clk(osc_clk), .CIC_out_clk_c(CIC_out_clk_c), 
            .\DataInNoSign_7__N_2588[0] (DataInNoSign_7__N_2588[0]), .MixerOutSin_c_7(MixerOutSin_c_7), 
            .\DataInNoSign_7__N_2588[1] (DataInNoSign_7__N_2588[1]), .MYLED_c_2(MYLED_c_2), 
            .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), .n1846(n1846), 
            .n1845(n1845), .MYLED_c_5(MYLED_c_5), .MixerOutSin_c_0(MixerOutSin_c_0), 
            .MixerOutSin_c_1(MixerOutSin_c_1), .MixerOutSin_c_2(MixerOutSin_c_2), 
            .MixerOutSin_c_3(MixerOutSin_c_3), .MixerOutSin_c_4(MixerOutSin_c_4), 
            .MixerOutSin_c_5(MixerOutSin_c_5), .MixerOutSin_c_6(MixerOutSin_c_6)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(122[20] 129[2])
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(149[5] 151[2])
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (osc_clk, \phase_accum[63] , sin_out_c, \phase_accum[62] , 
            cos_out_N_66, \phase_accum[61] , \phase_accum[60] , \phase_accum[59] , 
            \phase_accum[58] , \phase_accum[57] , \phase_accum[56] , GND_net) /* synthesis syn_module_defined=1 */ ;
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
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(33[19:30])
    wire [63:0]phase_accum_63__N_1;
    
    wire n2718, n2717, n2716, n2715, n2714, n2713, n2712, n2711, 
        n2710, n2709, n2708, n2707, n2706, n2705, n2704, n2703, 
        n2702, n2701, n2700, n2699, n2698, n2697, n2696, n2695, 
        n2694, n2693, n2692, n2691, n2690, n2689, n2688, n2687;
    
    FD1S3AX phase_accum_i0 (.D(phase_accum_63__N_1[0]), .CK(osc_clk), .Q(phase_accum[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i0.GSR = "ENABLED";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(\phase_accum[63] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    LUT4 phase_accum_63__I_0_13_1_lut (.A(\phase_accum[63] ), .Z(sin_out_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    LUT4 phase_accum_63__I_0_2_lut (.A(\phase_accum[63] ), .B(\phase_accum[62] ), 
         .Z(cos_out_N_66)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(37[19:54])
    defparam phase_accum_63__I_0_2_lut.init = 16'h9999;
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(\phase_accum[62] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(\phase_accum[61] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(\phase_accum[60] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(\phase_accum[59] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(\phase_accum[58] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(\phase_accum[57] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(\phase_accum[56] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i21 (.D(phase_accum_63__N_1[21]), .CK(osc_clk), 
            .Q(phase_accum[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i21.GSR = "ENABLED";
    FD1S3AX phase_accum_i20 (.D(phase_accum_63__N_1[20]), .CK(osc_clk), 
            .Q(phase_accum[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i20.GSR = "ENABLED";
    FD1S3AX phase_accum_i19 (.D(phase_accum_63__N_1[19]), .CK(osc_clk), 
            .Q(phase_accum[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i19.GSR = "ENABLED";
    FD1S3AX phase_accum_i18 (.D(phase_accum_63__N_1[18]), .CK(osc_clk), 
            .Q(phase_accum[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i18.GSR = "ENABLED";
    FD1S3AX phase_accum_i17 (.D(phase_accum_63__N_1[17]), .CK(osc_clk), 
            .Q(phase_accum[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i17.GSR = "ENABLED";
    FD1S3AX phase_accum_i16 (.D(phase_accum_63__N_1[16]), .CK(osc_clk), 
            .Q(phase_accum[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i16.GSR = "ENABLED";
    FD1S3AX phase_accum_i15 (.D(phase_accum_63__N_1[15]), .CK(osc_clk), 
            .Q(phase_accum[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i15.GSR = "ENABLED";
    FD1S3AX phase_accum_i14 (.D(phase_accum_63__N_1[14]), .CK(osc_clk), 
            .Q(phase_accum[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i14.GSR = "ENABLED";
    FD1S3AX phase_accum_i13 (.D(phase_accum_63__N_1[13]), .CK(osc_clk), 
            .Q(phase_accum[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i13.GSR = "ENABLED";
    FD1S3AX phase_accum_i12 (.D(phase_accum_63__N_1[12]), .CK(osc_clk), 
            .Q(phase_accum[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i12.GSR = "ENABLED";
    FD1S3AX phase_accum_i11 (.D(phase_accum_63__N_1[11]), .CK(osc_clk), 
            .Q(phase_accum[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i11.GSR = "ENABLED";
    FD1S3AX phase_accum_i10 (.D(phase_accum_63__N_1[10]), .CK(osc_clk), 
            .Q(phase_accum[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i10.GSR = "ENABLED";
    FD1S3AX phase_accum_i9 (.D(phase_accum_63__N_1[9]), .CK(osc_clk), .Q(phase_accum[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i9.GSR = "ENABLED";
    FD1S3AX phase_accum_i8 (.D(phase_accum_63__N_1[8]), .CK(osc_clk), .Q(phase_accum[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i8.GSR = "ENABLED";
    FD1S3AX phase_accum_i7 (.D(phase_accum_63__N_1[7]), .CK(osc_clk), .Q(phase_accum[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i7.GSR = "ENABLED";
    FD1S3AX phase_accum_i6 (.D(phase_accum_63__N_1[6]), .CK(osc_clk), .Q(phase_accum[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i6.GSR = "ENABLED";
    FD1S3AX phase_accum_i5 (.D(phase_accum_63__N_1[5]), .CK(osc_clk), .Q(phase_accum[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i5.GSR = "ENABLED";
    FD1S3AX phase_accum_i4 (.D(phase_accum_63__N_1[4]), .CK(osc_clk), .Q(phase_accum[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i4.GSR = "ENABLED";
    FD1S3AX phase_accum_i3 (.D(phase_accum_63__N_1[3]), .CK(osc_clk), .Q(phase_accum[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i3.GSR = "ENABLED";
    FD1S3AX phase_accum_i2 (.D(phase_accum_63__N_1[2]), .CK(osc_clk), .Q(phase_accum[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i2.GSR = "ENABLED";
    FD1S3AX phase_accum_i1 (.D(phase_accum_63__N_1[1]), .CK(osc_clk), .Q(phase_accum[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=84, LSE_RLINE=90 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i1.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_65 (.A0(\phase_accum[63] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2718), .S0(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_65.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_65.INIT1 = 16'h0000;
    defparam phase_accum_63__I_0_12_65.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_65.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_63 (.A0(\phase_accum[61] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[62] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2717), .COUT(n2718), .S0(phase_accum_63__N_1[61]), 
          .S1(phase_accum_63__N_1[62]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_63.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_63.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_63.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_63.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_61 (.A0(\phase_accum[59] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[60] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2716), .COUT(n2717), .S0(phase_accum_63__N_1[59]), 
          .S1(phase_accum_63__N_1[60]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_61.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_61.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_61.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_61.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_59 (.A0(\phase_accum[57] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[58] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2715), .COUT(n2716), .S0(phase_accum_63__N_1[57]), 
          .S1(phase_accum_63__N_1[58]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_59.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_59.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_59.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_59.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_57 (.A0(phase_accum[55]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[56] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2714), .COUT(n2715), .S0(phase_accum_63__N_1[55]), 
          .S1(phase_accum_63__N_1[56]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_57.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_57.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_57.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_57.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_55 (.A0(phase_accum[53]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[54]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2713), .COUT(n2714), .S0(phase_accum_63__N_1[53]), 
          .S1(phase_accum_63__N_1[54]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_55.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_55.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_55.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_55.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_53 (.A0(phase_accum[51]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[52]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2712), .COUT(n2713), .S0(phase_accum_63__N_1[51]), 
          .S1(phase_accum_63__N_1[52]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_53.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_53.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_53.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_53.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_51 (.A0(phase_accum[49]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[50]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2711), .COUT(n2712), .S0(phase_accum_63__N_1[49]), 
          .S1(phase_accum_63__N_1[50]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_51.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_51.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_51.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_51.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_49 (.A0(phase_accum[47]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[48]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2710), .COUT(n2711), .S0(phase_accum_63__N_1[47]), 
          .S1(phase_accum_63__N_1[48]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_49.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_49.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_49.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_49.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_47 (.A0(phase_accum[45]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[46]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2709), .COUT(n2710), .S0(phase_accum_63__N_1[45]), 
          .S1(phase_accum_63__N_1[46]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_47.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_47.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_47.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_47.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_45 (.A0(phase_accum[43]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[44]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2708), .COUT(n2709), .S0(phase_accum_63__N_1[43]), 
          .S1(phase_accum_63__N_1[44]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_45.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_45.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_45.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[41]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[42]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2707), .COUT(n2708), .S0(phase_accum_63__N_1[41]), 
          .S1(phase_accum_63__N_1[42]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[39]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[40]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2706), .COUT(n2707), .S0(phase_accum_63__N_1[39]), 
          .S1(phase_accum_63__N_1[40]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[37]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[38]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2705), .COUT(n2706), .S0(phase_accum_63__N_1[37]), 
          .S1(phase_accum_63__N_1[38]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[35]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[36]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2704), .COUT(n2705), .S0(phase_accum_63__N_1[35]), 
          .S1(phase_accum_63__N_1[36]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[33]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[34]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2703), .COUT(n2704), .S0(phase_accum_63__N_1[33]), 
          .S1(phase_accum_63__N_1[34]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[32]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2702), .COUT(n2703), .S0(phase_accum_63__N_1[31]), 
          .S1(phase_accum_63__N_1[32]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2701), .COUT(n2702), .S0(phase_accum_63__N_1[29]), 
          .S1(phase_accum_63__N_1[30]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2700), .COUT(n2701), .S0(phase_accum_63__N_1[27]), 
          .S1(phase_accum_63__N_1[28]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2699), .COUT(n2700), .S0(phase_accum_63__N_1[25]), 
          .S1(phase_accum_63__N_1[26]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2698), .COUT(n2699), .S0(phase_accum_63__N_1[23]), 
          .S1(phase_accum_63__N_1[24]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2697), .COUT(n2698), .S0(phase_accum_63__N_1[21]), 
          .S1(phase_accum_63__N_1[22]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2696), .COUT(n2697), .S0(phase_accum_63__N_1[19]), 
          .S1(phase_accum_63__N_1[20]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2695), .COUT(n2696), .S0(phase_accum_63__N_1[17]), 
          .S1(phase_accum_63__N_1[18]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2694), .COUT(n2695), .S0(phase_accum_63__N_1[15]), 
          .S1(phase_accum_63__N_1[16]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2693), .COUT(n2694), .S0(phase_accum_63__N_1[13]), 
          .S1(phase_accum_63__N_1[14]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2692), .COUT(n2693), .S0(phase_accum_63__N_1[11]), 
          .S1(phase_accum_63__N_1[12]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2691), .COUT(n2692), .S0(phase_accum_63__N_1[9]), 
          .S1(phase_accum_63__N_1[10]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2690), .COUT(n2691), .S0(phase_accum_63__N_1[7]), 
          .S1(phase_accum_63__N_1[8]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2689), .COUT(n2690), .S0(phase_accum_63__N_1[5]), 
          .S1(phase_accum_63__N_1[6]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2688), .COUT(n2689), .S0(phase_accum_63__N_1[3]), 
          .S1(phase_accum_63__N_1[4]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2687), .COUT(n2688), .S0(phase_accum_63__N_1[1]), 
          .S1(phase_accum_63__N_1[2]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2687), .S1(phase_accum_63__N_1[0]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (MixerOutSin_c_0, osc_clk, DiffOut_c, RFIn_c, LOSine, 
            MixerOutSin_c_1, MixerOutSin_c_2, MixerOutSin_c_3, MixerOutSin_c_4, 
            MixerOutSin_c_5, MixerOutSin_c_6, MixerOutSin_c_7, GND_net) /* synthesis syn_module_defined=1 */ ;
    output MixerOutSin_c_0;
    input osc_clk;
    output DiffOut_c;
    input RFIn_c;
    input [7:0]LOSine;
    output MixerOutSin_c_1;
    output MixerOutSin_c_2;
    output MixerOutSin_c_3;
    output MixerOutSin_c_4;
    output MixerOutSin_c_5;
    output MixerOutSin_c_6;
    output MixerOutSin_c_7;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    wire [7:0]MixerOutSin_7__N_67;
    
    wire RFInR1;
    wire [7:0]MixerOutSin_7__N_83;
    
    wire n3276, n3277, n3278, n3279;
    
    FD1S3AX MixerOutSin_i1 (.D(MixerOutSin_7__N_67[0]), .CK(osc_clk), .Q(MixerOutSin_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i1.GSR = "ENABLED";
    FD1S3AY RFInR_14 (.D(RFInR1), .CK(osc_clk), .Q(DiffOut_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR_14.GSR = "ENABLED";
    FD1S3AY RFInR1_13 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR1_13.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i6_3_lut (.A(LOSine[5]), .B(MixerOutSin_7__N_83[5]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i6_3_lut.init = 16'hcaca;
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
    LUT4 MixerOutSin_7__I_0_i1_3_lut (.A(LOSine[0]), .B(MixerOutSin_7__N_83[0]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i7_3_lut (.A(LOSine[6]), .B(MixerOutSin_7__N_83[6]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i7_3_lut.init = 16'hcaca;
    FD1S3AX MixerOutSin_i2 (.D(MixerOutSin_7__N_67[1]), .CK(osc_clk), .Q(MixerOutSin_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i2.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i8_3_lut (.A(LOSine[7]), .B(MixerOutSin_7__N_83[7]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i8_3_lut.init = 16'hcaca;
    FD1S3AX MixerOutSin_i3 (.D(MixerOutSin_7__N_67[2]), .CK(osc_clk), .Q(MixerOutSin_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i3.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i4 (.D(MixerOutSin_7__N_67[3]), .CK(osc_clk), .Q(MixerOutSin_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i4.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i5 (.D(MixerOutSin_7__N_67[4]), .CK(osc_clk), .Q(MixerOutSin_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i5.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i6 (.D(MixerOutSin_7__N_67[5]), .CK(osc_clk), .Q(MixerOutSin_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i6.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[6]), .CK(osc_clk), .Q(MixerOutSin_c_6)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i8 (.D(MixerOutSin_7__N_67[7]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=112, LSE_RLINE=120 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i8.GSR = "ENABLED";
    CCU2D unary_minus_6_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3276), .S1(MixerOutSin_7__N_83[0]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_6_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_6_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_1.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_3 (.A0(LOSine[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3276), .COUT(n3277), .S0(MixerOutSin_7__N_83[1]), 
          .S1(MixerOutSin_7__N_83[2]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_3.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_5 (.A0(LOSine[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3277), .COUT(n3278), .S0(MixerOutSin_7__N_83[3]), 
          .S1(MixerOutSin_7__N_83[4]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_5.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_7 (.A0(LOSine[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3278), .COUT(n3279), .S0(MixerOutSin_7__N_83[5]), 
          .S1(MixerOutSin_7__N_83[6]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_7.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_9 (.A0(LOSine[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3279), .S0(MixerOutSin_7__N_83[7]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_9.INIT1 = 16'h0000;
    defparam unary_minus_6_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_9.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (osc_clk, \DataInNoSign_7__N_2588[0] , PWMOut_c, MYLED_c_5, 
            \DataInNoSign_7__N_2588[1] , MYLED_c_2, MYLED_c_3, MYLED_c_4, 
            n1846, n1845, GND_net) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input \DataInNoSign_7__N_2588[0] ;
    output PWMOut_c;
    input MYLED_c_5;
    input \DataInNoSign_7__N_2588[1] ;
    input MYLED_c_2;
    input MYLED_c_3;
    input MYLED_c_4;
    input n1846;
    input n1845;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    wire [7:0]DataInNoSign;   // c:/users/user/lattice/fpgasdr/pwm.v(9[11:23])
    wire [7:0]counter;   // c:/users/user/lattice/fpgasdr/pwm.v(7[11:18])
    
    wire n3344, n3411, n3355, n12, n4, n3370, osc_clk_enable_732, 
        PWMOut_N_2597;
    wire [7:0]n37;
    
    wire n3413, n3412, n3410, n3374, n10, n3369, n3358, n6;
    wire [7:0]n164;
    
    wire n14, n10_adj_2601, n3280, n3281, n3282, n3283;
    
    LUT4 i1061_3_lut_4_lut (.A(DataInNoSign[3]), .B(counter[3]), .C(counter[2]), 
         .D(DataInNoSign[2]), .Z(n3344)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1061_3_lut_4_lut.init = 16'h9009;
    LUT4 i1086_1_lut_4_lut_4_lut (.A(n3411), .B(n3355), .C(n12), .D(n4), 
         .Z(n3370)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1086_1_lut_4_lut_4_lut.init = 16'h0b4f;
    FD1P3AX DataInNoSign_i0_i0 (.D(\DataInNoSign_7__N_2588[0] ), .SP(osc_clk_enable_732), 
            .CK(osc_clk), .Q(DataInNoSign[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i0.GSR = "ENABLED";
    FD1S3AX PWMOut_15 (.D(PWMOut_N_2597), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    FD1S3AX counter_55__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i0.GSR = "ENABLED";
    LUT4 DataInNoSign_7__I_0_i15_2_lut_rep_4 (.A(DataInNoSign[7]), .B(counter[7]), 
         .Z(n3411)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i15_2_lut_rep_4.init = 16'h6666;
    LUT4 i1090_4_lut (.A(n3413), .B(n3412), .C(n3410), .D(n3344), .Z(n3374)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1090_4_lut.init = 16'hefee;
    LUT4 DataInNoSign_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInNoSign[1]), 
         .D(DataInNoSign[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 DataInNoSign_7__I_0_i12_3_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    PFUMX DataInNoSign_7__I_0_i16 (.BLUT(n3369), .ALUT(n3370), .C0(n3358), 
          .Z(PWMOut_N_2597)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;
    LUT4 i1091_2_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), .C(n3374), 
         .Z(n3358)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1091_2_lut_3_lut.init = 16'hf6f6;
    LUT4 DataInNoSign_7__I_0_i11_2_lut_rep_5 (.A(DataInNoSign[5]), .B(counter[5]), 
         .Z(n3412)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i11_2_lut_rep_5.init = 16'h6666;
    LUT4 i1085_1_lut_3_lut_3_lut (.A(DataInNoSign[4]), .B(counter[4]), .C(n6), 
         .Z(n3369)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1085_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 i172_1_lut (.A(MYLED_c_5), .Z(n164[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(27[4:33])
    defparam i172_1_lut.init = 16'h5555;
    LUT4 DataInNoSign_7__I_0_i6_3_lut_3_lut (.A(DataInNoSign[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 DataInNoSign_7__I_0_i9_2_lut_rep_3 (.A(DataInNoSign[4]), .B(counter[4]), 
         .Z(n3410)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i9_2_lut_rep_3.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i13_2_lut_rep_6 (.A(DataInNoSign[6]), .B(counter[6]), 
         .Z(n3413)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i13_2_lut_rep_6.init = 16'h6666;
    LUT4 i1072_2_lut_3_lut_4_lut (.A(DataInNoSign[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInNoSign[5]), .Z(n3355)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1072_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 DataInNoSign_7__I_0_i10_3_lut_3_lut (.A(DataInNoSign[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX DataInNoSign_i0_i1 (.D(\DataInNoSign_7__N_2588[1] ), .SP(osc_clk_enable_732), 
            .CK(osc_clk), .Q(DataInNoSign[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i1.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i2 (.D(MYLED_c_2), .SP(osc_clk_enable_732), 
            .CK(osc_clk), .Q(DataInNoSign[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i2.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i3 (.D(MYLED_c_3), .SP(osc_clk_enable_732), 
            .CK(osc_clk), .Q(DataInNoSign[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i3.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i4 (.D(MYLED_c_4), .SP(osc_clk_enable_732), 
            .CK(osc_clk), .Q(DataInNoSign[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i4.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i5 (.D(n1846), .SP(osc_clk_enable_732), .CK(osc_clk), 
            .Q(DataInNoSign[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i5.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i6 (.D(n1845), .SP(osc_clk_enable_732), .CK(osc_clk), 
            .Q(DataInNoSign[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i6.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i7 (.D(n164[7]), .SP(osc_clk_enable_732), .CK(osc_clk), 
            .Q(DataInNoSign[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=142, LSE_RLINE=147 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i7.GSR = "ENABLED";
    FD1S3AX counter_55__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55__i1.GSR = "ENABLED";
    LUT4 i1095_4_lut (.A(counter[0]), .B(n14), .C(n10_adj_2601), .D(counter[6]), 
         .Z(osc_clk_enable_732)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i1095_4_lut.init = 16'h0001;
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
    LUT4 i6_4_lut (.A(counter[3]), .B(counter[1]), .C(counter[5]), .D(counter[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(counter[2]), .B(counter[4]), .Z(n10_adj_2601)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i2_2_lut.init = 16'heeee;
    CCU2D counter_55_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3280), .S1(n37[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_1.INIT0 = 16'hF000;
    defparam counter_55_add_4_1.INIT1 = 16'h0555;
    defparam counter_55_add_4_1.INJECT1_0 = "NO";
    defparam counter_55_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3280), .COUT(n3281), .S0(n37[1]), .S1(n37[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_55_add_4_3.INJECT1_0 = "NO";
    defparam counter_55_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3281), .COUT(n3282), .S0(n37[3]), .S1(n37[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_55_add_4_5.INJECT1_0 = "NO";
    defparam counter_55_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3282), .COUT(n3283), .S0(n37[5]), .S1(n37[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_55_add_4_7.INJECT1_0 = "NO";
    defparam counter_55_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_55_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3283), .S0(n37[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_55_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_55_add_4_9.INIT1 = 16'h0000;
    defparam counter_55_add_4_9.INJECT1_0 = "NO";
    defparam counter_55_add_4_9.INJECT1_1 = "NO";
    
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
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
    wire Sine_6_ffin, Sine_5_ffin, Sine_4_ffin, Sine_3_ffin, Sine_2_ffin, 
        Sine_1_ffin, Sine_0_ffin, Sine_7_ffin;
    
    FD1P3DX FF_14 (.D(Sine_6_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(37[13] 38[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(Sine_5_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(41[13] 42[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(Sine_4_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(45[13] 46[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(Sine_3_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(49[13] 50[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(Sine_2_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(53[13] 54[21])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(Sine_1_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(57[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(Sine_0_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(60[13:84])
    defparam FF_8.GSR = "ENABLED";
    ROM256X1A triglut_1_0_15 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_15.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_14 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_14.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000001111111111100000000000000000000000000000000000000000000000000000000000;
    FD1P3DX FF_15 (.D(Sine_7_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(33[13] 34[21])
    defparam FF_15.GSR = "ENABLED";
    ROM256X1A triglut_1_0_13 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_13.initval = 256'b1111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111000000000000000000000111111111111111111111111111111111111110000000000011111111111111111111111111111111111111000000000000000000000;
    ROM256X1A triglut_1_0_12 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_12.initval = 256'b1111111111000000000001111111111111100000000000000000000000000000000000000000000000000000000011111111111111000000000001111111111000000000011111111111000000000000001111111111111111111111110000000000011111111111111111111111100000000000000111111111110000000000;
    ROM256X1A triglut_1_0_11 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_11.initval = 256'b1111100000111111000001111110000000011111111100000000000000000000000000000000000000011111111100000000111111000001111110000011111000001111100000011111000000011111110000000011111111111111110000000000011111111111111110000000011111110000000111110000001111100000;
    ROM256X1A triglut_1_0_10 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_10.initval = 256'b1100011100111000110001110001111000011110000011111100000000000000000000000000011111100000111100001111000111000110001110011100011000110001100011100011000111100011110000111100000011111111110000000000011111111110000001111000011110001111000110001110001100011000;
    ROM256X1A triglut_1_0_9 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_9.initval = 256'b1011010010100100101101101101100110011001100011000011111000000000000000001111100001100011001100110011011011011010010010100101101011010010100101101101001001101100110011001100011100001111110000000000011111100001110001100110011001101100100101101101001010010110;
    ROM256X1A triglut_1_0_8 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\phase_accum[63] ), 
            .DO0(Sine_0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=99 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(92[8] 99[2])
    defparam triglut_1_0_8.initval = 256'b0110011000110010011001001011010101010101010010110011000111000000000001110001100110100101010101010101101001001100100110001100110001100110001100100110010010110101010101010100101100110001110000000000011100011001101001010101010101011010010011001001100011001100;
    
endmodule
//
// Verilog Description of module \CIC(width=74) 
//

module \CIC(width=74)  (GND_net, osc_clk, CIC_out_clk_c, \DataInNoSign_7__N_2588[0] , 
            MixerOutSin_c_7, \DataInNoSign_7__N_2588[1] , MYLED_c_2, MYLED_c_3, 
            MYLED_c_4, n1846, n1845, MYLED_c_5, MixerOutSin_c_0, MixerOutSin_c_1, 
            MixerOutSin_c_2, MixerOutSin_c_3, MixerOutSin_c_4, MixerOutSin_c_5, 
            MixerOutSin_c_6) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input osc_clk;
    output CIC_out_clk_c;
    output \DataInNoSign_7__N_2588[0] ;
    input MixerOutSin_c_7;
    output \DataInNoSign_7__N_2588[1] ;
    output MYLED_c_2;
    output MYLED_c_3;
    output MYLED_c_4;
    output n1846;
    output n1845;
    output MYLED_c_5;
    input MixerOutSin_c_0;
    input MixerOutSin_c_1;
    input MixerOutSin_c_2;
    input MixerOutSin_c_3;
    input MixerOutSin_c_4;
    input MixerOutSin_c_5;
    input MixerOutSin_c_6;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    wire [73:0]d2;   // c:/users/user/lattice/fpgasdr/cic.v(38[24:26])
    wire [73:0]d3;   // c:/users/user/lattice/fpgasdr/cic.v(39[24:26])
    wire [73:0]d3_73__N_1457;
    
    wire n3085;
    wire [36:0]n546;
    
    wire n3086, n2974;
    wire [73:0]d_d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(32[31:38])
    
    wire n1169;
    wire [36:0]n1170;
    wire [73:0]d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(32[24:29])
    wire [36:0]n1209;
    
    wire n3084, n3083, n3082, n3081;
    wire [73:0]d6;   // c:/users/user/lattice/fpgasdr/cic.v(45[24:26])
    
    wire osc_clk_enable_52;
    wire [36:0]n1131;
    
    wire n2973, n3080;
    wire [73:0]d2_73__N_1383;
    
    wire n2972;
    wire [73:0]d4;   // c:/users/user/lattice/fpgasdr/cic.v(40[24:26])
    wire [73:0]d4_73__N_1531;
    wire [73:0]d5;   // c:/users/user/lattice/fpgasdr/cic.v(41[24:26])
    wire [73:0]d5_73__N_1605;
    
    wire osc_clk_enable_119;
    wire [73:0]d7;   // c:/users/user/lattice/fpgasdr/cic.v(46[24:26])
    wire [36:0]n1599;
    
    wire d_clk_tmp, n1883, v_comb;
    wire [73:0]d8;   // c:/users/user/lattice/fpgasdr/cic.v(47[24:26])
    wire [36:0]n975;
    
    wire n2971, n2970, n2969, n2968, n2967, n2966;
    wire [73:0]d9;   // c:/users/user/lattice/fpgasdr/cic.v(48[24:26])
    wire [36:0]n1443;
    wire [73:0]d_d6;   // c:/users/user/lattice/fpgasdr/cic.v(45[28:32])
    wire [73:0]d_d7;   // c:/users/user/lattice/fpgasdr/cic.v(46[28:32])
    wire [73:0]d_d8;   // c:/users/user/lattice/fpgasdr/cic.v(47[28:32])
    wire [73:0]d_d9;   // c:/users/user/lattice/fpgasdr/cic.v(48[28:32])
    wire [73:0]d10;   // c:/users/user/lattice/fpgasdr/cic.v(49[24:27])
    wire [36:0]n1404;
    wire [73:0]d1;   // c:/users/user/lattice/fpgasdr/cic.v(37[24:26])
    wire [73:0]d1_73__N_1309;
    
    wire n3078, n701;
    wire [36:0]n702;
    
    wire n3077;
    wire [36:0]n234;
    
    wire n3076, n3075, n3074, n3073, n3072;
    wire [15:0]count;   // c:/users/user/lattice/fpgasdr/cic.v(52[12:17])
    
    wire n26, n22, n25, n23, n24, osc_clk_enable_159, osc_clk_enable_725, 
        osc_clk_enable_675, osc_clk_enable_625, osc_clk_enable_575, osc_clk_enable_525, 
        osc_clk_enable_475, osc_clk_enable_375, osc_clk_enable_325, osc_clk_enable_275, 
        n3218, osc_clk_enable_225, osc_clk_enable_175, n3071;
    wire [13:0]n61;
    
    wire n2965, n2964, n2963, n2962, n2961, n2960, n2959, n2958, 
        n2957, n2956, n2951;
    wire [36:0]n1326;
    
    wire n2950, n2949, n2948, n2947, n2946, n2945, n2944, n2943, 
        n2942, n2941, n2940, n2939, n2938, n2937, n2936, n2935, 
        n2934, n2932;
    wire [36:0]n1365;
    
    wire n2931, n2930, n2929, n2928, n3070, n3069, n3068, n3067, 
        n3066, n3065, n3064, n3063, n3062, n3061, n3060, n3056, 
        n545, n3055, n3054, n3053, n3052, n3051, n3050, n3049, 
        n3048, n3047, n3046, n3045, n3044, n3043, n3042, n3041, 
        n3040, n3039, n3038, n3034;
    wire [36:0]n858;
    
    wire n3033, n3032, n3031, n3030, n3029, n3028, n3027, n3026, 
        n3025, n3024, n3023, n3022, n3021, n3020, n3019, n3018, 
        n3017, n3015, n389;
    wire [36:0]n429;
    
    wire n3014, n3013, n3012, n3011, n3010, n3009, n3008, n3007, 
        n3006, n3005, n3004, n3003, n3002, n3001, n3000, n2999, 
        n2998, n2997, n2992, n2991, n2990, n2989, n2988, n2987, 
        n2986, n2985, n2984, n2983, n2982, n2981, n2980, n2979, 
        n2978, n2977, n2976, n2975, n2927, n2926, n2925, n2924, 
        n2923, n2922, n2921, n2920, n2919, n2918, n2917, n2916, 
        n2915, n2914, n857, n2913, n2912, n2911, n2910, n2909, 
        n2908, n2907, n2906, n2905, n2904, n2903, n2902, n2901, 
        n2900, n2899, n2898, n2897, n2896, n2892, n1325, d_clk_tmp_N_2537, 
        n24_adj_2599, n18, n22_adj_2600, n2891, n2890, n2889, n2888, 
        n2887, n2886, n2885, n2884, n2883, n2882, n2881, n2880, 
        n2879, n2878, n2877, n2876, n2875, n2874, n2872;
    wire [36:0]n1482;
    
    wire n2871, n2870, n2869, n2868, n2867, n2866, n2865, n2864, 
        n2863, n2862, n2861, n2860, n2859, n2858, n2857, n2856;
    wire [36:0]n1677;
    
    wire n2855, n2854, n2853, n2852, n2851, n2850, n2849, n2848, 
        n2847, n2846, n2845, n2844, n2843, n2842, n2841, n2840, 
        n2839, n2838, n2837, n2836, n2835, n1013, n2834, n2833, 
        n2832, n2831, n2830, n2829, n2828, n2827, n2826, n2825, 
        n2824, n2823, n2822, n2821, n2820, n2819, n2818, n2817, 
        n2816, n2815, n2814, n2813, n2812, n2811, n2810, n2809, 
        n2808, n2807, n2806, n2805, n2804, n2803, n2802, n2801, 
        n2800, n2799, n2797, n2796, n2795, n2794, n2793, n2792, 
        n2791, n2790, n2789, n2788, n2787, n2786, n2785, n2784, 
        n2783, n2782, n2781, n2780, n2778, n2777, n2776, n2775, 
        n2774, n2773, n2772, n2771, n2770, n2769, n2768, n2767, 
        n2766, n2765, n2764, n2763, n2762, n2761, n2759, n2758, 
        n2757, n2756, n2755, n2754, n2753, n2752, n2751, n2750, 
        n2749, n2748, n2747, n2746, n2745, n2744, n2743, n2742, 
        n2740, n1481;
    wire [36:0]n1521;
    
    wire n2739, n2738, n2737, n2736, n2735, n2734, n2733, n2732, 
        n2731, n2730, n2729, n2728, n2727, n2726, n2725, n2724, 
        n2723, n2722, n2685;
    wire [36:0]n1638;
    
    wire n2684, n2683, n2682, n2681, n2680, n2679, n2678, n2677, 
        n2676, n2675, n2674, n2673, n2672, n2671, n2670, n2669, 
        n2668, n2667, n1637, n2666, n2665, n2664, n2663, n2662, 
        n2661, n2660, n2659, n2658, n2657, n2656, n2655, n2654, 
        n2653, n2652, n2651, n2650, n2649;
    wire [36:0]n1053;
    
    wire osc_clk_enable_425, n3087, n3088, n3089, n3090, n3091, 
        n3092, n3093, n3094, n3095, n3096, n3097, n3099, n3100, 
        n3101, n3102, n3103, n3104, n3105, n3106, n3107, n3108, 
        n3109, n3110, n3111, n3112, n3113, n3114, n3115, n3116, 
        n3120;
    wire [36:0]n1014;
    
    wire n3121, n3122, n3123, n3124, n3125, n3126, n3127, n3128, 
        n3129, n3130, n3131, n3132, n3133, n3134, n3135, n3136, 
        n3137, n3138, n3139, n3140, n3141, n3142, n3143, n3144, 
        n3145, n3146, n3147, n3148, n3149, n3150, n3151, n3152, 
        n3153, n3154, n3155, n3156, n3158, n3159, n3160, n3161, 
        n3162, n3163, n3164, n3165, n3166, n3167, n3168, n3169, 
        n3170, n3171, n3172, n3173, n3174, n3175, n3176, n3177, 
        n3178, n3179, n3180, n3181, n3182, n3183, n3184, n3185, 
        n3186, n3187, n3188, n3189, n3190, n3191, n3192, n3193, 
        n3194, n3195, n233, n3199, n3200, n3201, n3202, n3203, 
        n3204, n3205, n3206, n3207, n3208, n3209, n3210, n3211, 
        n3212, n3213, n3214, n3215, n3216, n3217, n3220, n3221, 
        n3222, n3223, n3224, n3225, n3226, n3227, n3228, n3229, 
        n3230, n3231, n3232, n3233, n3234, n3235, n3236, n3237, 
        n3239, n3240, n3241, n3242, n3243, n3244, n3245, n3246, 
        n3247, n3248, n3249, n3250, n3251, n3252, n3253, n3254, 
        n3255, n3256, n3258, n3259, n3260, n3261, n3262, n3263, 
        n3264, n3265, n3266, n3267, n3268, n3269, n3270, n3271, 
        n3272, n3273, n3274, n3275, n3284, n3285, n3286, n3287, 
        n3288, n3289, n3290;
    
    LUT4 i988_2_lut (.A(d2[0]), .B(d3[0]), .Z(d3_73__N_1457[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i988_2_lut.init = 16'h6666;
    CCU2D add_71_14 (.A0(d2[49]), .B0(d3[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[50]), .B1(d3[50]), .C1(GND_net), .D1(GND_net), .CIN(n3085), 
          .COUT(n3086), .S0(n546[12]), .S1(n546[13]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_14.INIT0 = 16'h5666;
    defparam add_71_14.INIT1 = 16'h5666;
    defparam add_71_14.INJECT1_0 = "NO";
    defparam add_71_14.INJECT1_1 = "NO";
    CCU2D add_92_39 (.A0(d_d_tmp[73]), .B0(n1169), .C0(n1170[36]), .D0(d_tmp[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2974), 
          .S0(n1209[36]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_39.INIT0 = 16'hb874;
    defparam add_92_39.INIT1 = 16'h0000;
    defparam add_92_39.INJECT1_0 = "NO";
    defparam add_92_39.INJECT1_1 = "NO";
    CCU2D add_71_12 (.A0(d2[47]), .B0(d3[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[48]), .B1(d3[48]), .C1(GND_net), .D1(GND_net), .CIN(n3084), 
          .COUT(n3085), .S0(n546[10]), .S1(n546[11]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_12.INIT0 = 16'h5666;
    defparam add_71_12.INIT1 = 16'h5666;
    defparam add_71_12.INJECT1_0 = "NO";
    defparam add_71_12.INJECT1_1 = "NO";
    CCU2D add_71_10 (.A0(d2[45]), .B0(d3[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[46]), .B1(d3[46]), .C1(GND_net), .D1(GND_net), .CIN(n3083), 
          .COUT(n3084), .S0(n546[8]), .S1(n546[9]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_10.INIT0 = 16'h5666;
    defparam add_71_10.INIT1 = 16'h5666;
    defparam add_71_10.INJECT1_0 = "NO";
    defparam add_71_10.INJECT1_1 = "NO";
    CCU2D add_71_8 (.A0(d2[43]), .B0(d3[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[44]), .B1(d3[44]), .C1(GND_net), .D1(GND_net), .CIN(n3082), 
          .COUT(n3083), .S0(n546[6]), .S1(n546[7]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_8.INIT0 = 16'h5666;
    defparam add_71_8.INIT1 = 16'h5666;
    defparam add_71_8.INJECT1_0 = "NO";
    defparam add_71_8.INJECT1_1 = "NO";
    CCU2D add_71_6 (.A0(d2[41]), .B0(d3[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[42]), .B1(d3[42]), .C1(GND_net), .D1(GND_net), .CIN(n3081), 
          .COUT(n3082), .S0(n546[4]), .S1(n546[5]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_6.INIT0 = 16'h5666;
    defparam add_71_6.INIT1 = 16'h5666;
    defparam add_71_6.INJECT1_0 = "NO";
    defparam add_71_6.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i0 (.D(n1131[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    CCU2D add_92_37 (.A0(d_d_tmp[71]), .B0(n1169), .C0(n1170[34]), .D0(d_tmp[71]), 
          .A1(d_d_tmp[72]), .B1(n1169), .C1(n1170[35]), .D1(d_tmp[72]), 
          .CIN(n2973), .COUT(n2974), .S0(n1209[34]), .S1(n1209[35]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_37.INIT0 = 16'hb874;
    defparam add_92_37.INIT1 = 16'hb874;
    defparam add_92_37.INJECT1_0 = "NO";
    defparam add_92_37.INJECT1_1 = "NO";
    CCU2D add_71_4 (.A0(d2[39]), .B0(d3[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[40]), .B1(d3[40]), .C1(GND_net), .D1(GND_net), .CIN(n3080), 
          .COUT(n3081), .S0(n546[2]), .S1(n546[3]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_4.INIT0 = 16'h5666;
    defparam add_71_4.INIT1 = 16'h5666;
    defparam add_71_4.INJECT1_0 = "NO";
    defparam add_71_4.INJECT1_1 = "NO";
    FD1S3AX d2_i0 (.D(d2_73__N_1383[0]), .CK(osc_clk), .Q(d2[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i0.GSR = "ENABLED";
    CCU2D add_71_2 (.A0(d2[37]), .B0(d3[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[38]), .B1(d3[38]), .C1(GND_net), .D1(GND_net), .COUT(n3080), 
          .S1(n546[1]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_2.INIT0 = 16'h7000;
    defparam add_71_2.INIT1 = 16'h5666;
    defparam add_71_2.INJECT1_0 = "NO";
    defparam add_71_2.INJECT1_1 = "NO";
    CCU2D add_92_35 (.A0(d_d_tmp[69]), .B0(n1169), .C0(n1170[32]), .D0(d_tmp[69]), 
          .A1(d_d_tmp[70]), .B1(n1169), .C1(n1170[33]), .D1(d_tmp[70]), 
          .CIN(n2972), .COUT(n2973), .S0(n1209[32]), .S1(n1209[33]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_35.INIT0 = 16'hb874;
    defparam add_92_35.INIT1 = 16'hb874;
    defparam add_92_35.INJECT1_0 = "NO";
    defparam add_92_35.INJECT1_1 = "NO";
    FD1S3AX d3_i0 (.D(d3_73__N_1457[0]), .CK(osc_clk), .Q(d3[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i0.GSR = "ENABLED";
    FD1S3AX d4_i0 (.D(d4_73__N_1531[0]), .CK(osc_clk), .Q(d4[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i0.GSR = "ENABLED";
    FD1S3AX d5_i0 (.D(d5_73__N_1605[0]), .CK(osc_clk), .Q(d5[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(n1599[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    FD1S3JX d_clk_tmp_86 (.D(n1883), .CK(osc_clk), .PD(osc_clk_enable_119), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_clk_tmp_86.GSR = "ENABLED";
    FD1S3AX v_comb_87 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87.GSR = "ENABLED";
    FD1S3AX d_clk_88 (.D(d_clk_tmp), .CK(osc_clk), .Q(CIC_out_clk_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_clk_88.GSR = "ENABLED";
    FD1P3AX d8_i0_i0 (.D(n975[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    CCU2D add_92_33 (.A0(d_d_tmp[67]), .B0(n1169), .C0(n1170[30]), .D0(d_tmp[67]), 
          .A1(d_d_tmp[68]), .B1(n1169), .C1(n1170[31]), .D1(d_tmp[68]), 
          .CIN(n2971), .COUT(n2972), .S0(n1209[30]), .S1(n1209[31]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_33.INIT0 = 16'hb874;
    defparam add_92_33.INIT1 = 16'hb874;
    defparam add_92_33.INJECT1_0 = "NO";
    defparam add_92_33.INJECT1_1 = "NO";
    CCU2D add_92_31 (.A0(d_d_tmp[65]), .B0(n1169), .C0(n1170[28]), .D0(d_tmp[65]), 
          .A1(d_d_tmp[66]), .B1(n1169), .C1(n1170[29]), .D1(d_tmp[66]), 
          .CIN(n2970), .COUT(n2971), .S0(n1209[28]), .S1(n1209[29]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_31.INIT0 = 16'hb874;
    defparam add_92_31.INIT1 = 16'hb874;
    defparam add_92_31.INJECT1_0 = "NO";
    defparam add_92_31.INJECT1_1 = "NO";
    CCU2D add_92_29 (.A0(d_d_tmp[63]), .B0(n1169), .C0(n1170[26]), .D0(d_tmp[63]), 
          .A1(d_d_tmp[64]), .B1(n1169), .C1(n1170[27]), .D1(d_tmp[64]), 
          .CIN(n2969), .COUT(n2970), .S0(n1209[26]), .S1(n1209[27]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_29.INIT0 = 16'hb874;
    defparam add_92_29.INIT1 = 16'hb874;
    defparam add_92_29.INJECT1_0 = "NO";
    defparam add_92_29.INJECT1_1 = "NO";
    CCU2D add_92_27 (.A0(d_d_tmp[61]), .B0(n1169), .C0(n1170[24]), .D0(d_tmp[61]), 
          .A1(d_d_tmp[62]), .B1(n1169), .C1(n1170[25]), .D1(d_tmp[62]), 
          .CIN(n2968), .COUT(n2969), .S0(n1209[24]), .S1(n1209[25]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_27.INIT0 = 16'hb874;
    defparam add_92_27.INIT1 = 16'hb874;
    defparam add_92_27.INJECT1_0 = "NO";
    defparam add_92_27.INJECT1_1 = "NO";
    CCU2D add_92_25 (.A0(d_d_tmp[59]), .B0(n1169), .C0(n1170[22]), .D0(d_tmp[59]), 
          .A1(d_d_tmp[60]), .B1(n1169), .C1(n1170[23]), .D1(d_tmp[60]), 
          .CIN(n2967), .COUT(n2968), .S0(n1209[22]), .S1(n1209[23]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_25.INIT0 = 16'hb874;
    defparam add_92_25.INIT1 = 16'hb874;
    defparam add_92_25.INJECT1_0 = "NO";
    defparam add_92_25.INJECT1_1 = "NO";
    CCU2D add_92_23 (.A0(d_d_tmp[57]), .B0(n1169), .C0(n1170[20]), .D0(d_tmp[57]), 
          .A1(d_d_tmp[58]), .B1(n1169), .C1(n1170[21]), .D1(d_tmp[58]), 
          .CIN(n2966), .COUT(n2967), .S0(n1209[20]), .S1(n1209[21]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_23.INIT0 = 16'hb874;
    defparam add_92_23.INIT1 = 16'hb874;
    defparam add_92_23.INJECT1_0 = "NO";
    defparam add_92_23.INJECT1_1 = "NO";
    FD1P3AX d9_i0_i0 (.D(n1443[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[66]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(\DataInNoSign_7__N_2588[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d10__0__i1 (.D(n1404[29]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d10[66]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i1.GSR = "ENABLED";
    FD1S3AX d1_i0 (.D(d1_73__N_1309[0]), .CK(osc_clk), .Q(d1[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i0.GSR = "ENABLED";
    CCU2D add_77_39 (.A0(d4[73]), .B0(n701), .C0(n702[36]), .D0(d3[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3078), 
          .S0(d4_73__N_1531[73]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_39.INIT0 = 16'h74b8;
    defparam add_77_39.INIT1 = 16'h0000;
    defparam add_77_39.INJECT1_0 = "NO";
    defparam add_77_39.INJECT1_1 = "NO";
    CCU2D add_77_37 (.A0(d4[71]), .B0(n701), .C0(n702[34]), .D0(d3[71]), 
          .A1(d4[72]), .B1(n701), .C1(n702[35]), .D1(d3[72]), .CIN(n3077), 
          .COUT(n3078), .S0(d4_73__N_1531[71]), .S1(d4_73__N_1531[72]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_37.INIT0 = 16'h74b8;
    defparam add_77_37.INIT1 = 16'h74b8;
    defparam add_77_37.INJECT1_0 = "NO";
    defparam add_77_37.INJECT1_1 = "NO";
    LUT4 i1010_2_lut (.A(MixerOutSin_c_7), .B(d1[37]), .Z(n234[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1010_2_lut.init = 16'h6666;
    CCU2D add_77_35 (.A0(d4[69]), .B0(n701), .C0(n702[32]), .D0(d3[69]), 
          .A1(d4[70]), .B1(n701), .C1(n702[33]), .D1(d3[70]), .CIN(n3076), 
          .COUT(n3077), .S0(d4_73__N_1531[69]), .S1(d4_73__N_1531[70]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_35.INIT0 = 16'h74b8;
    defparam add_77_35.INIT1 = 16'h74b8;
    defparam add_77_35.INJECT1_0 = "NO";
    defparam add_77_35.INJECT1_1 = "NO";
    CCU2D add_77_33 (.A0(d4[67]), .B0(n701), .C0(n702[30]), .D0(d3[67]), 
          .A1(d4[68]), .B1(n701), .C1(n702[31]), .D1(d3[68]), .CIN(n3075), 
          .COUT(n3076), .S0(d4_73__N_1531[67]), .S1(d4_73__N_1531[68]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_33.INIT0 = 16'h74b8;
    defparam add_77_33.INIT1 = 16'h74b8;
    defparam add_77_33.INJECT1_0 = "NO";
    defparam add_77_33.INJECT1_1 = "NO";
    CCU2D add_77_31 (.A0(d4[65]), .B0(n701), .C0(n702[28]), .D0(d3[65]), 
          .A1(d4[66]), .B1(n701), .C1(n702[29]), .D1(d3[66]), .CIN(n3074), 
          .COUT(n3075), .S0(d4_73__N_1531[65]), .S1(d4_73__N_1531[66]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_31.INIT0 = 16'h74b8;
    defparam add_77_31.INIT1 = 16'h74b8;
    defparam add_77_31.INJECT1_0 = "NO";
    defparam add_77_31.INJECT1_1 = "NO";
    CCU2D add_77_29 (.A0(d4[63]), .B0(n701), .C0(n702[26]), .D0(d3[63]), 
          .A1(d4[64]), .B1(n701), .C1(n702[27]), .D1(d3[64]), .CIN(n3073), 
          .COUT(n3074), .S0(d4_73__N_1531[63]), .S1(d4_73__N_1531[64]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_29.INIT0 = 16'h74b8;
    defparam add_77_29.INIT1 = 16'h74b8;
    defparam add_77_29.INJECT1_0 = "NO";
    defparam add_77_29.INJECT1_1 = "NO";
    CCU2D add_77_27 (.A0(d4[61]), .B0(n701), .C0(n702[24]), .D0(d3[61]), 
          .A1(d4[62]), .B1(n701), .C1(n702[25]), .D1(d3[62]), .CIN(n3072), 
          .COUT(n3073), .S0(d4_73__N_1531[61]), .S1(d4_73__N_1531[62]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_27.INIT0 = 16'h74b8;
    defparam add_77_27.INIT1 = 16'h74b8;
    defparam add_77_27.INJECT1_0 = "NO";
    defparam add_77_27.INJECT1_1 = "NO";
    LUT4 i13_4_lut_rep_22 (.A(count[7]), .B(n26), .C(n22), .D(count[12]), 
         .Z(osc_clk_enable_119)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut_rep_22.init = 16'h8000;
    LUT4 i224_4_lut (.A(n25), .B(d_clk_tmp), .C(n23), .D(n24), .Z(n1883)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam i224_4_lut.init = 16'hccc8;
    LUT4 i13_4_lut_rep_23 (.A(count[7]), .B(n26), .C(n22), .D(count[12]), 
         .Z(osc_clk_enable_159)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut_rep_23.init = 16'h8000;
    LUT4 i989_2_lut (.A(d3[0]), .B(d4[0]), .Z(d4_73__N_1531[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i989_2_lut.init = 16'h6666;
    LUT4 i990_2_lut (.A(d4[0]), .B(d5[0]), .Z(d5_73__N_1605[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i990_2_lut.init = 16'h6666;
    FD1S3AX v_comb_87_rep_20 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_725)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_20.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_19 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_675)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_19.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_18 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_625)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_18.GSR = "ENABLED";
    LUT4 i1003_2_lut (.A(d3[37]), .B(d4[37]), .Z(n702[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1003_2_lut.init = 16'h6666;
    FD1S3AX v_comb_87_rep_17 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_575)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_17.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_16 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_525)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_16.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_15 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_475)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_15.GSR = "ENABLED";
    LUT4 i1002_2_lut (.A(d2[37]), .B(d3[37]), .Z(n546[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1002_2_lut.init = 16'h6666;
    FD1S3AX v_comb_87_rep_13 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_375)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_13.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_12 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_325)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_12.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_11 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_275)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_11.GSR = "ENABLED";
    LUT4 i1008_2_lut (.A(d1[37]), .B(d2[37]), .Z(n3218)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1008_2_lut.init = 16'h9999;
    FD1S3AX v_comb_87_rep_10 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_225)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_10.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_9 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_175)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_9.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_8 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_52)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_8.GSR = "ENABLED";
    LUT4 i987_2_lut (.A(d1[0]), .B(d2[0]), .Z(d2_73__N_1383[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i987_2_lut.init = 16'h6666;
    CCU2D add_77_25 (.A0(d4[59]), .B0(n701), .C0(n702[22]), .D0(d3[59]), 
          .A1(d4[60]), .B1(n701), .C1(n702[23]), .D1(d3[60]), .CIN(n3071), 
          .COUT(n3072), .S0(d4_73__N_1531[59]), .S1(d4_73__N_1531[60]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_25.INIT0 = 16'h74b8;
    defparam add_77_25.INIT1 = 16'h74b8;
    defparam add_77_25.INJECT1_0 = "NO";
    defparam add_77_25.INJECT1_1 = "NO";
    FD1S3IX count_53_54__i1 (.D(n61[0]), .CK(osc_clk), .CD(osc_clk_enable_119), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i1.GSR = "ENABLED";
    CCU2D add_92_21 (.A0(d_d_tmp[55]), .B0(n1169), .C0(n1170[18]), .D0(d_tmp[55]), 
          .A1(d_d_tmp[56]), .B1(n1169), .C1(n1170[19]), .D1(d_tmp[56]), 
          .CIN(n2965), .COUT(n2966), .S0(n1209[18]), .S1(n1209[19]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_21.INIT0 = 16'hb874;
    defparam add_92_21.INIT1 = 16'hb874;
    defparam add_92_21.INJECT1_0 = "NO";
    defparam add_92_21.INJECT1_1 = "NO";
    CCU2D add_92_19 (.A0(d_d_tmp[53]), .B0(n1169), .C0(n1170[16]), .D0(d_tmp[53]), 
          .A1(d_d_tmp[54]), .B1(n1169), .C1(n1170[17]), .D1(d_tmp[54]), 
          .CIN(n2964), .COUT(n2965), .S0(n1209[16]), .S1(n1209[17]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_19.INIT0 = 16'hb874;
    defparam add_92_19.INIT1 = 16'hb874;
    defparam add_92_19.INJECT1_0 = "NO";
    defparam add_92_19.INJECT1_1 = "NO";
    CCU2D add_92_17 (.A0(d_d_tmp[51]), .B0(n1169), .C0(n1170[14]), .D0(d_tmp[51]), 
          .A1(d_d_tmp[52]), .B1(n1169), .C1(n1170[15]), .D1(d_tmp[52]), 
          .CIN(n2963), .COUT(n2964), .S0(n1209[14]), .S1(n1209[15]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_17.INIT0 = 16'hb874;
    defparam add_92_17.INIT1 = 16'hb874;
    defparam add_92_17.INJECT1_0 = "NO";
    defparam add_92_17.INJECT1_1 = "NO";
    CCU2D add_92_15 (.A0(d_d_tmp[49]), .B0(n1169), .C0(n1170[12]), .D0(d_tmp[49]), 
          .A1(d_d_tmp[50]), .B1(n1169), .C1(n1170[13]), .D1(d_tmp[50]), 
          .CIN(n2962), .COUT(n2963), .S0(n1209[12]), .S1(n1209[13]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_15.INIT0 = 16'hb874;
    defparam add_92_15.INIT1 = 16'hb874;
    defparam add_92_15.INJECT1_0 = "NO";
    defparam add_92_15.INJECT1_1 = "NO";
    CCU2D add_92_13 (.A0(d_d_tmp[47]), .B0(n1169), .C0(n1170[10]), .D0(d_tmp[47]), 
          .A1(d_d_tmp[48]), .B1(n1169), .C1(n1170[11]), .D1(d_tmp[48]), 
          .CIN(n2961), .COUT(n2962), .S0(n1209[10]), .S1(n1209[11]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_13.INIT0 = 16'hb874;
    defparam add_92_13.INIT1 = 16'hb874;
    defparam add_92_13.INJECT1_0 = "NO";
    defparam add_92_13.INJECT1_1 = "NO";
    CCU2D add_92_11 (.A0(d_d_tmp[45]), .B0(n1169), .C0(n1170[8]), .D0(d_tmp[45]), 
          .A1(d_d_tmp[46]), .B1(n1169), .C1(n1170[9]), .D1(d_tmp[46]), 
          .CIN(n2960), .COUT(n2961), .S0(n1209[8]), .S1(n1209[9]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_11.INIT0 = 16'hb874;
    defparam add_92_11.INIT1 = 16'hb874;
    defparam add_92_11.INJECT1_0 = "NO";
    defparam add_92_11.INJECT1_1 = "NO";
    CCU2D add_92_9 (.A0(d_d_tmp[43]), .B0(n1169), .C0(n1170[6]), .D0(d_tmp[43]), 
          .A1(d_d_tmp[44]), .B1(n1169), .C1(n1170[7]), .D1(d_tmp[44]), 
          .CIN(n2959), .COUT(n2960), .S0(n1209[6]), .S1(n1209[7]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_9.INIT0 = 16'hb874;
    defparam add_92_9.INIT1 = 16'hb874;
    defparam add_92_9.INJECT1_0 = "NO";
    defparam add_92_9.INJECT1_1 = "NO";
    CCU2D add_92_7 (.A0(d_d_tmp[41]), .B0(n1169), .C0(n1170[4]), .D0(d_tmp[41]), 
          .A1(d_d_tmp[42]), .B1(n1169), .C1(n1170[5]), .D1(d_tmp[42]), 
          .CIN(n2958), .COUT(n2959), .S0(n1209[4]), .S1(n1209[5]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_7.INIT0 = 16'hb874;
    defparam add_92_7.INIT1 = 16'hb874;
    defparam add_92_7.INJECT1_0 = "NO";
    defparam add_92_7.INJECT1_1 = "NO";
    CCU2D add_92_5 (.A0(d_d_tmp[39]), .B0(n1169), .C0(n1170[2]), .D0(d_tmp[39]), 
          .A1(d_d_tmp[40]), .B1(n1169), .C1(n1170[3]), .D1(d_tmp[40]), 
          .CIN(n2957), .COUT(n2958), .S0(n1209[2]), .S1(n1209[3]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_5.INIT0 = 16'hb874;
    defparam add_92_5.INIT1 = 16'hb874;
    defparam add_92_5.INJECT1_0 = "NO";
    defparam add_92_5.INJECT1_1 = "NO";
    CCU2D add_92_3 (.A0(d_d_tmp[37]), .B0(n1169), .C0(n1170[0]), .D0(d_tmp[37]), 
          .A1(d_d_tmp[38]), .B1(n1169), .C1(n1170[1]), .D1(d_tmp[38]), 
          .CIN(n2956), .COUT(n2957), .S0(n1209[0]), .S1(n1209[1]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_3.INIT0 = 16'hb874;
    defparam add_92_3.INIT1 = 16'hb874;
    defparam add_92_3.INJECT1_0 = "NO";
    defparam add_92_3.INJECT1_1 = "NO";
    CCU2D add_92_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1169), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2956));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_92_1.INIT0 = 16'hF000;
    defparam add_92_1.INIT1 = 16'h0555;
    defparam add_92_1.INJECT1_0 = "NO";
    defparam add_92_1.INJECT1_1 = "NO";
    CCU2D add_96_37 (.A0(d9[72]), .B0(d_d9[72]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[73]), .B1(d_d9[73]), .C1(GND_net), .D1(GND_net), .CIN(n2951), 
          .S0(n1326[35]), .S1(n1326[36]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_37.INIT0 = 16'h5999;
    defparam add_96_37.INIT1 = 16'h5999;
    defparam add_96_37.INJECT1_0 = "NO";
    defparam add_96_37.INJECT1_1 = "NO";
    CCU2D add_96_35 (.A0(d9[70]), .B0(d_d9[70]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[71]), .B1(d_d9[71]), .C1(GND_net), .D1(GND_net), .CIN(n2950), 
          .COUT(n2951), .S0(n1326[33]), .S1(n1326[34]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_35.INIT0 = 16'h5999;
    defparam add_96_35.INIT1 = 16'h5999;
    defparam add_96_35.INJECT1_0 = "NO";
    defparam add_96_35.INJECT1_1 = "NO";
    CCU2D add_96_33 (.A0(d9[68]), .B0(d_d9[68]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[69]), .B1(d_d9[69]), .C1(GND_net), .D1(GND_net), .CIN(n2949), 
          .COUT(n2950), .S0(n1326[31]), .S1(n1326[32]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_33.INIT0 = 16'h5999;
    defparam add_96_33.INIT1 = 16'h5999;
    defparam add_96_33.INJECT1_0 = "NO";
    defparam add_96_33.INJECT1_1 = "NO";
    CCU2D add_96_31 (.A0(d9[66]), .B0(d_d9[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[67]), .B1(d_d9[67]), .C1(GND_net), .D1(GND_net), .CIN(n2948), 
          .COUT(n2949), .S0(n1326[29]), .S1(n1326[30]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_31.INIT0 = 16'h5999;
    defparam add_96_31.INIT1 = 16'h5999;
    defparam add_96_31.INJECT1_0 = "NO";
    defparam add_96_31.INJECT1_1 = "NO";
    CCU2D add_96_29 (.A0(d9[64]), .B0(d_d9[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[65]), .B1(d_d9[65]), .C1(GND_net), .D1(GND_net), .CIN(n2947), 
          .COUT(n2948));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_29.INIT0 = 16'h5999;
    defparam add_96_29.INIT1 = 16'h5999;
    defparam add_96_29.INJECT1_0 = "NO";
    defparam add_96_29.INJECT1_1 = "NO";
    CCU2D add_96_27 (.A0(d9[62]), .B0(d_d9[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[63]), .B1(d_d9[63]), .C1(GND_net), .D1(GND_net), .CIN(n2946), 
          .COUT(n2947));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_27.INIT0 = 16'h5999;
    defparam add_96_27.INIT1 = 16'h5999;
    defparam add_96_27.INJECT1_0 = "NO";
    defparam add_96_27.INJECT1_1 = "NO";
    CCU2D add_96_25 (.A0(d9[60]), .B0(d_d9[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[61]), .B1(d_d9[61]), .C1(GND_net), .D1(GND_net), .CIN(n2945), 
          .COUT(n2946));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_25.INIT0 = 16'h5999;
    defparam add_96_25.INIT1 = 16'h5999;
    defparam add_96_25.INJECT1_0 = "NO";
    defparam add_96_25.INJECT1_1 = "NO";
    CCU2D add_96_23 (.A0(d9[58]), .B0(d_d9[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[59]), .B1(d_d9[59]), .C1(GND_net), .D1(GND_net), .CIN(n2944), 
          .COUT(n2945));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_23.INIT0 = 16'h5999;
    defparam add_96_23.INIT1 = 16'h5999;
    defparam add_96_23.INJECT1_0 = "NO";
    defparam add_96_23.INJECT1_1 = "NO";
    CCU2D add_96_21 (.A0(d9[56]), .B0(d_d9[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[57]), .B1(d_d9[57]), .C1(GND_net), .D1(GND_net), .CIN(n2943), 
          .COUT(n2944));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_21.INIT0 = 16'h5999;
    defparam add_96_21.INIT1 = 16'h5999;
    defparam add_96_21.INJECT1_0 = "NO";
    defparam add_96_21.INJECT1_1 = "NO";
    CCU2D add_96_19 (.A0(d9[54]), .B0(d_d9[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[55]), .B1(d_d9[55]), .C1(GND_net), .D1(GND_net), .CIN(n2942), 
          .COUT(n2943));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_19.INIT0 = 16'h5999;
    defparam add_96_19.INIT1 = 16'h5999;
    defparam add_96_19.INJECT1_0 = "NO";
    defparam add_96_19.INJECT1_1 = "NO";
    CCU2D add_96_17 (.A0(d9[52]), .B0(d_d9[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[53]), .B1(d_d9[53]), .C1(GND_net), .D1(GND_net), .CIN(n2941), 
          .COUT(n2942));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_17.INIT0 = 16'h5999;
    defparam add_96_17.INIT1 = 16'h5999;
    defparam add_96_17.INJECT1_0 = "NO";
    defparam add_96_17.INJECT1_1 = "NO";
    CCU2D add_96_15 (.A0(d9[50]), .B0(d_d9[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[51]), .B1(d_d9[51]), .C1(GND_net), .D1(GND_net), .CIN(n2940), 
          .COUT(n2941));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_15.INIT0 = 16'h5999;
    defparam add_96_15.INIT1 = 16'h5999;
    defparam add_96_15.INJECT1_0 = "NO";
    defparam add_96_15.INJECT1_1 = "NO";
    CCU2D add_96_13 (.A0(d9[48]), .B0(d_d9[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[49]), .B1(d_d9[49]), .C1(GND_net), .D1(GND_net), .CIN(n2939), 
          .COUT(n2940));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_13.INIT0 = 16'h5999;
    defparam add_96_13.INIT1 = 16'h5999;
    defparam add_96_13.INJECT1_0 = "NO";
    defparam add_96_13.INJECT1_1 = "NO";
    CCU2D add_96_11 (.A0(d9[46]), .B0(d_d9[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[47]), .B1(d_d9[47]), .C1(GND_net), .D1(GND_net), .CIN(n2938), 
          .COUT(n2939));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_11.INIT0 = 16'h5999;
    defparam add_96_11.INIT1 = 16'h5999;
    defparam add_96_11.INJECT1_0 = "NO";
    defparam add_96_11.INJECT1_1 = "NO";
    CCU2D add_96_9 (.A0(d9[44]), .B0(d_d9[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[45]), .B1(d_d9[45]), .C1(GND_net), .D1(GND_net), .CIN(n2937), 
          .COUT(n2938));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_9.INIT0 = 16'h5999;
    defparam add_96_9.INIT1 = 16'h5999;
    defparam add_96_9.INJECT1_0 = "NO";
    defparam add_96_9.INJECT1_1 = "NO";
    CCU2D add_96_7 (.A0(d9[42]), .B0(d_d9[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[43]), .B1(d_d9[43]), .C1(GND_net), .D1(GND_net), .CIN(n2936), 
          .COUT(n2937));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_7.INIT0 = 16'h5999;
    defparam add_96_7.INIT1 = 16'h5999;
    defparam add_96_7.INJECT1_0 = "NO";
    defparam add_96_7.INJECT1_1 = "NO";
    CCU2D add_96_5 (.A0(d9[40]), .B0(d_d9[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[41]), .B1(d_d9[41]), .C1(GND_net), .D1(GND_net), .CIN(n2935), 
          .COUT(n2936));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_5.INIT0 = 16'h5999;
    defparam add_96_5.INIT1 = 16'h5999;
    defparam add_96_5.INJECT1_0 = "NO";
    defparam add_96_5.INJECT1_1 = "NO";
    CCU2D add_96_3 (.A0(d9[38]), .B0(d_d9[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[39]), .B1(d_d9[39]), .C1(GND_net), .D1(GND_net), .CIN(n2934), 
          .COUT(n2935));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_3.INIT0 = 16'h5999;
    defparam add_96_3.INIT1 = 16'h5999;
    defparam add_96_3.INJECT1_0 = "NO";
    defparam add_96_3.INJECT1_1 = "NO";
    CCU2D add_96_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[37]), .B1(d_d9[37]), .C1(GND_net), .D1(GND_net), .COUT(n2934));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_96_1.INIT0 = 16'hF000;
    defparam add_96_1.INIT1 = 16'h5999;
    defparam add_96_1.INJECT1_0 = "NO";
    defparam add_96_1.INJECT1_1 = "NO";
    CCU2D add_97_37 (.A0(d9[72]), .B0(d_d9[72]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[73]), .B1(d_d9[73]), .C1(GND_net), .D1(GND_net), .CIN(n2932), 
          .S0(n1365[35]), .S1(n1365[36]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_37.INIT0 = 16'h5999;
    defparam add_97_37.INIT1 = 16'h5999;
    defparam add_97_37.INJECT1_0 = "NO";
    defparam add_97_37.INJECT1_1 = "NO";
    CCU2D add_97_35 (.A0(d9[70]), .B0(d_d9[70]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[71]), .B1(d_d9[71]), .C1(GND_net), .D1(GND_net), .CIN(n2931), 
          .COUT(n2932), .S0(n1365[33]), .S1(n1365[34]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_35.INIT0 = 16'h5999;
    defparam add_97_35.INIT1 = 16'h5999;
    defparam add_97_35.INJECT1_0 = "NO";
    defparam add_97_35.INJECT1_1 = "NO";
    CCU2D add_97_33 (.A0(d9[68]), .B0(d_d9[68]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[69]), .B1(d_d9[69]), .C1(GND_net), .D1(GND_net), .CIN(n2930), 
          .COUT(n2931), .S0(n1365[31]), .S1(n1365[32]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_33.INIT0 = 16'h5999;
    defparam add_97_33.INIT1 = 16'h5999;
    defparam add_97_33.INJECT1_0 = "NO";
    defparam add_97_33.INJECT1_1 = "NO";
    CCU2D add_97_31 (.A0(d9[66]), .B0(d_d9[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[67]), .B1(d_d9[67]), .C1(GND_net), .D1(GND_net), .CIN(n2929), 
          .COUT(n2930), .S0(n1365[29]), .S1(n1365[30]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_31.INIT0 = 16'h5999;
    defparam add_97_31.INIT1 = 16'h5999;
    defparam add_97_31.INJECT1_0 = "NO";
    defparam add_97_31.INJECT1_1 = "NO";
    CCU2D add_97_29 (.A0(d9[64]), .B0(d_d9[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[65]), .B1(d_d9[65]), .C1(GND_net), .D1(GND_net), .CIN(n2928), 
          .COUT(n2929));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_29.INIT0 = 16'h5999;
    defparam add_97_29.INIT1 = 16'h5999;
    defparam add_97_29.INJECT1_0 = "NO";
    defparam add_97_29.INJECT1_1 = "NO";
    CCU2D add_77_23 (.A0(d4[57]), .B0(n701), .C0(n702[20]), .D0(d3[57]), 
          .A1(d4[58]), .B1(n701), .C1(n702[21]), .D1(d3[58]), .CIN(n3070), 
          .COUT(n3071), .S0(d4_73__N_1531[57]), .S1(d4_73__N_1531[58]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_23.INIT0 = 16'h74b8;
    defparam add_77_23.INIT1 = 16'h74b8;
    defparam add_77_23.INJECT1_0 = "NO";
    defparam add_77_23.INJECT1_1 = "NO";
    CCU2D add_77_21 (.A0(d4[55]), .B0(n701), .C0(n702[18]), .D0(d3[55]), 
          .A1(d4[56]), .B1(n701), .C1(n702[19]), .D1(d3[56]), .CIN(n3069), 
          .COUT(n3070), .S0(d4_73__N_1531[55]), .S1(d4_73__N_1531[56]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_21.INIT0 = 16'h74b8;
    defparam add_77_21.INIT1 = 16'h74b8;
    defparam add_77_21.INJECT1_0 = "NO";
    defparam add_77_21.INJECT1_1 = "NO";
    CCU2D add_77_19 (.A0(d4[53]), .B0(n701), .C0(n702[16]), .D0(d3[53]), 
          .A1(d4[54]), .B1(n701), .C1(n702[17]), .D1(d3[54]), .CIN(n3068), 
          .COUT(n3069), .S0(d4_73__N_1531[53]), .S1(d4_73__N_1531[54]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_19.INIT0 = 16'h74b8;
    defparam add_77_19.INIT1 = 16'h74b8;
    defparam add_77_19.INJECT1_0 = "NO";
    defparam add_77_19.INJECT1_1 = "NO";
    CCU2D add_77_17 (.A0(d4[51]), .B0(n701), .C0(n702[14]), .D0(d3[51]), 
          .A1(d4[52]), .B1(n701), .C1(n702[15]), .D1(d3[52]), .CIN(n3067), 
          .COUT(n3068), .S0(d4_73__N_1531[51]), .S1(d4_73__N_1531[52]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_17.INIT0 = 16'h74b8;
    defparam add_77_17.INIT1 = 16'h74b8;
    defparam add_77_17.INJECT1_0 = "NO";
    defparam add_77_17.INJECT1_1 = "NO";
    CCU2D add_77_15 (.A0(d4[49]), .B0(n701), .C0(n702[12]), .D0(d3[49]), 
          .A1(d4[50]), .B1(n701), .C1(n702[13]), .D1(d3[50]), .CIN(n3066), 
          .COUT(n3067), .S0(d4_73__N_1531[49]), .S1(d4_73__N_1531[50]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_15.INIT0 = 16'h74b8;
    defparam add_77_15.INIT1 = 16'h74b8;
    defparam add_77_15.INJECT1_0 = "NO";
    defparam add_77_15.INJECT1_1 = "NO";
    CCU2D add_77_13 (.A0(d4[47]), .B0(n701), .C0(n702[10]), .D0(d3[47]), 
          .A1(d4[48]), .B1(n701), .C1(n702[11]), .D1(d3[48]), .CIN(n3065), 
          .COUT(n3066), .S0(d4_73__N_1531[47]), .S1(d4_73__N_1531[48]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_13.INIT0 = 16'h74b8;
    defparam add_77_13.INIT1 = 16'h74b8;
    defparam add_77_13.INJECT1_0 = "NO";
    defparam add_77_13.INJECT1_1 = "NO";
    CCU2D add_77_11 (.A0(d4[45]), .B0(n701), .C0(n702[8]), .D0(d3[45]), 
          .A1(d4[46]), .B1(n701), .C1(n702[9]), .D1(d3[46]), .CIN(n3064), 
          .COUT(n3065), .S0(d4_73__N_1531[45]), .S1(d4_73__N_1531[46]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_11.INIT0 = 16'h74b8;
    defparam add_77_11.INIT1 = 16'h74b8;
    defparam add_77_11.INJECT1_0 = "NO";
    defparam add_77_11.INJECT1_1 = "NO";
    CCU2D add_77_9 (.A0(d4[43]), .B0(n701), .C0(n702[6]), .D0(d3[43]), 
          .A1(d4[44]), .B1(n701), .C1(n702[7]), .D1(d3[44]), .CIN(n3063), 
          .COUT(n3064), .S0(d4_73__N_1531[43]), .S1(d4_73__N_1531[44]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_9.INIT0 = 16'h74b8;
    defparam add_77_9.INIT1 = 16'h74b8;
    defparam add_77_9.INJECT1_0 = "NO";
    defparam add_77_9.INJECT1_1 = "NO";
    CCU2D add_77_7 (.A0(d4[41]), .B0(n701), .C0(n702[4]), .D0(d3[41]), 
          .A1(d4[42]), .B1(n701), .C1(n702[5]), .D1(d3[42]), .CIN(n3062), 
          .COUT(n3063), .S0(d4_73__N_1531[41]), .S1(d4_73__N_1531[42]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_7.INIT0 = 16'h74b8;
    defparam add_77_7.INIT1 = 16'h74b8;
    defparam add_77_7.INJECT1_0 = "NO";
    defparam add_77_7.INJECT1_1 = "NO";
    CCU2D add_77_5 (.A0(d4[39]), .B0(n701), .C0(n702[2]), .D0(d3[39]), 
          .A1(d4[40]), .B1(n701), .C1(n702[3]), .D1(d3[40]), .CIN(n3061), 
          .COUT(n3062), .S0(d4_73__N_1531[39]), .S1(d4_73__N_1531[40]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_5.INIT0 = 16'h74b8;
    defparam add_77_5.INIT1 = 16'h74b8;
    defparam add_77_5.INJECT1_0 = "NO";
    defparam add_77_5.INJECT1_1 = "NO";
    CCU2D add_77_3 (.A0(d4[37]), .B0(n701), .C0(n702[0]), .D0(d3[37]), 
          .A1(d4[38]), .B1(n701), .C1(n702[1]), .D1(d3[38]), .CIN(n3060), 
          .COUT(n3061), .S0(d4_73__N_1531[37]), .S1(d4_73__N_1531[38]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_3.INIT0 = 16'h74b8;
    defparam add_77_3.INIT1 = 16'h74b8;
    defparam add_77_3.INJECT1_0 = "NO";
    defparam add_77_3.INJECT1_1 = "NO";
    CCU2D add_77_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n701), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3060));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_77_1.INIT0 = 16'hF000;
    defparam add_77_1.INIT1 = 16'h0555;
    defparam add_77_1.INJECT1_0 = "NO";
    defparam add_77_1.INJECT1_1 = "NO";
    CCU2D add_72_39 (.A0(d3[73]), .B0(n545), .C0(n546[36]), .D0(d2[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3056), 
          .S0(d3_73__N_1457[73]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_39.INIT0 = 16'h74b8;
    defparam add_72_39.INIT1 = 16'h0000;
    defparam add_72_39.INJECT1_0 = "NO";
    defparam add_72_39.INJECT1_1 = "NO";
    CCU2D add_72_37 (.A0(d3[71]), .B0(n545), .C0(n546[34]), .D0(d2[71]), 
          .A1(d3[72]), .B1(n545), .C1(n546[35]), .D1(d2[72]), .CIN(n3055), 
          .COUT(n3056), .S0(d3_73__N_1457[71]), .S1(d3_73__N_1457[72]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_37.INIT0 = 16'h74b8;
    defparam add_72_37.INIT1 = 16'h74b8;
    defparam add_72_37.INJECT1_0 = "NO";
    defparam add_72_37.INJECT1_1 = "NO";
    CCU2D add_72_35 (.A0(d3[69]), .B0(n545), .C0(n546[32]), .D0(d2[69]), 
          .A1(d3[70]), .B1(n545), .C1(n546[33]), .D1(d2[70]), .CIN(n3054), 
          .COUT(n3055), .S0(d3_73__N_1457[69]), .S1(d3_73__N_1457[70]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_35.INIT0 = 16'h74b8;
    defparam add_72_35.INIT1 = 16'h74b8;
    defparam add_72_35.INJECT1_0 = "NO";
    defparam add_72_35.INJECT1_1 = "NO";
    CCU2D add_72_33 (.A0(d3[67]), .B0(n545), .C0(n546[30]), .D0(d2[67]), 
          .A1(d3[68]), .B1(n545), .C1(n546[31]), .D1(d2[68]), .CIN(n3053), 
          .COUT(n3054), .S0(d3_73__N_1457[67]), .S1(d3_73__N_1457[68]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_33.INIT0 = 16'h74b8;
    defparam add_72_33.INIT1 = 16'h74b8;
    defparam add_72_33.INJECT1_0 = "NO";
    defparam add_72_33.INJECT1_1 = "NO";
    CCU2D add_72_31 (.A0(d3[65]), .B0(n545), .C0(n546[28]), .D0(d2[65]), 
          .A1(d3[66]), .B1(n545), .C1(n546[29]), .D1(d2[66]), .CIN(n3052), 
          .COUT(n3053), .S0(d3_73__N_1457[65]), .S1(d3_73__N_1457[66]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_31.INIT0 = 16'h74b8;
    defparam add_72_31.INIT1 = 16'h74b8;
    defparam add_72_31.INJECT1_0 = "NO";
    defparam add_72_31.INJECT1_1 = "NO";
    CCU2D add_72_29 (.A0(d3[63]), .B0(n545), .C0(n546[26]), .D0(d2[63]), 
          .A1(d3[64]), .B1(n545), .C1(n546[27]), .D1(d2[64]), .CIN(n3051), 
          .COUT(n3052), .S0(d3_73__N_1457[63]), .S1(d3_73__N_1457[64]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_29.INIT0 = 16'h74b8;
    defparam add_72_29.INIT1 = 16'h74b8;
    defparam add_72_29.INJECT1_0 = "NO";
    defparam add_72_29.INJECT1_1 = "NO";
    CCU2D add_72_27 (.A0(d3[61]), .B0(n545), .C0(n546[24]), .D0(d2[61]), 
          .A1(d3[62]), .B1(n545), .C1(n546[25]), .D1(d2[62]), .CIN(n3050), 
          .COUT(n3051), .S0(d3_73__N_1457[61]), .S1(d3_73__N_1457[62]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_27.INIT0 = 16'h74b8;
    defparam add_72_27.INIT1 = 16'h74b8;
    defparam add_72_27.INJECT1_0 = "NO";
    defparam add_72_27.INJECT1_1 = "NO";
    CCU2D add_72_25 (.A0(d3[59]), .B0(n545), .C0(n546[22]), .D0(d2[59]), 
          .A1(d3[60]), .B1(n545), .C1(n546[23]), .D1(d2[60]), .CIN(n3049), 
          .COUT(n3050), .S0(d3_73__N_1457[59]), .S1(d3_73__N_1457[60]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_25.INIT0 = 16'h74b8;
    defparam add_72_25.INIT1 = 16'h74b8;
    defparam add_72_25.INJECT1_0 = "NO";
    defparam add_72_25.INJECT1_1 = "NO";
    CCU2D add_72_23 (.A0(d3[57]), .B0(n545), .C0(n546[20]), .D0(d2[57]), 
          .A1(d3[58]), .B1(n545), .C1(n546[21]), .D1(d2[58]), .CIN(n3048), 
          .COUT(n3049), .S0(d3_73__N_1457[57]), .S1(d3_73__N_1457[58]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_23.INIT0 = 16'h74b8;
    defparam add_72_23.INIT1 = 16'h74b8;
    defparam add_72_23.INJECT1_0 = "NO";
    defparam add_72_23.INJECT1_1 = "NO";
    CCU2D add_72_21 (.A0(d3[55]), .B0(n545), .C0(n546[18]), .D0(d2[55]), 
          .A1(d3[56]), .B1(n545), .C1(n546[19]), .D1(d2[56]), .CIN(n3047), 
          .COUT(n3048), .S0(d3_73__N_1457[55]), .S1(d3_73__N_1457[56]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_21.INIT0 = 16'h74b8;
    defparam add_72_21.INIT1 = 16'h74b8;
    defparam add_72_21.INJECT1_0 = "NO";
    defparam add_72_21.INJECT1_1 = "NO";
    CCU2D add_72_19 (.A0(d3[53]), .B0(n545), .C0(n546[16]), .D0(d2[53]), 
          .A1(d3[54]), .B1(n545), .C1(n546[17]), .D1(d2[54]), .CIN(n3046), 
          .COUT(n3047), .S0(d3_73__N_1457[53]), .S1(d3_73__N_1457[54]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_19.INIT0 = 16'h74b8;
    defparam add_72_19.INIT1 = 16'h74b8;
    defparam add_72_19.INJECT1_0 = "NO";
    defparam add_72_19.INJECT1_1 = "NO";
    CCU2D add_72_17 (.A0(d3[51]), .B0(n545), .C0(n546[14]), .D0(d2[51]), 
          .A1(d3[52]), .B1(n545), .C1(n546[15]), .D1(d2[52]), .CIN(n3045), 
          .COUT(n3046), .S0(d3_73__N_1457[51]), .S1(d3_73__N_1457[52]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_17.INIT0 = 16'h74b8;
    defparam add_72_17.INIT1 = 16'h74b8;
    defparam add_72_17.INJECT1_0 = "NO";
    defparam add_72_17.INJECT1_1 = "NO";
    CCU2D add_72_15 (.A0(d3[49]), .B0(n545), .C0(n546[12]), .D0(d2[49]), 
          .A1(d3[50]), .B1(n545), .C1(n546[13]), .D1(d2[50]), .CIN(n3044), 
          .COUT(n3045), .S0(d3_73__N_1457[49]), .S1(d3_73__N_1457[50]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_15.INIT0 = 16'h74b8;
    defparam add_72_15.INIT1 = 16'h74b8;
    defparam add_72_15.INJECT1_0 = "NO";
    defparam add_72_15.INJECT1_1 = "NO";
    CCU2D add_72_13 (.A0(d3[47]), .B0(n545), .C0(n546[10]), .D0(d2[47]), 
          .A1(d3[48]), .B1(n545), .C1(n546[11]), .D1(d2[48]), .CIN(n3043), 
          .COUT(n3044), .S0(d3_73__N_1457[47]), .S1(d3_73__N_1457[48]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_13.INIT0 = 16'h74b8;
    defparam add_72_13.INIT1 = 16'h74b8;
    defparam add_72_13.INJECT1_0 = "NO";
    defparam add_72_13.INJECT1_1 = "NO";
    CCU2D add_72_11 (.A0(d3[45]), .B0(n545), .C0(n546[8]), .D0(d2[45]), 
          .A1(d3[46]), .B1(n545), .C1(n546[9]), .D1(d2[46]), .CIN(n3042), 
          .COUT(n3043), .S0(d3_73__N_1457[45]), .S1(d3_73__N_1457[46]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_11.INIT0 = 16'h74b8;
    defparam add_72_11.INIT1 = 16'h74b8;
    defparam add_72_11.INJECT1_0 = "NO";
    defparam add_72_11.INJECT1_1 = "NO";
    CCU2D add_72_9 (.A0(d3[43]), .B0(n545), .C0(n546[6]), .D0(d2[43]), 
          .A1(d3[44]), .B1(n545), .C1(n546[7]), .D1(d2[44]), .CIN(n3041), 
          .COUT(n3042), .S0(d3_73__N_1457[43]), .S1(d3_73__N_1457[44]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_9.INIT0 = 16'h74b8;
    defparam add_72_9.INIT1 = 16'h74b8;
    defparam add_72_9.INJECT1_0 = "NO";
    defparam add_72_9.INJECT1_1 = "NO";
    CCU2D add_72_7 (.A0(d3[41]), .B0(n545), .C0(n546[4]), .D0(d2[41]), 
          .A1(d3[42]), .B1(n545), .C1(n546[5]), .D1(d2[42]), .CIN(n3040), 
          .COUT(n3041), .S0(d3_73__N_1457[41]), .S1(d3_73__N_1457[42]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_7.INIT0 = 16'h74b8;
    defparam add_72_7.INIT1 = 16'h74b8;
    defparam add_72_7.INJECT1_0 = "NO";
    defparam add_72_7.INJECT1_1 = "NO";
    CCU2D add_72_5 (.A0(d3[39]), .B0(n545), .C0(n546[2]), .D0(d2[39]), 
          .A1(d3[40]), .B1(n545), .C1(n546[3]), .D1(d2[40]), .CIN(n3039), 
          .COUT(n3040), .S0(d3_73__N_1457[39]), .S1(d3_73__N_1457[40]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_5.INIT0 = 16'h74b8;
    defparam add_72_5.INIT1 = 16'h74b8;
    defparam add_72_5.INJECT1_0 = "NO";
    defparam add_72_5.INJECT1_1 = "NO";
    CCU2D add_72_3 (.A0(d3[37]), .B0(n545), .C0(n546[0]), .D0(d2[37]), 
          .A1(d3[38]), .B1(n545), .C1(n546[1]), .D1(d2[38]), .CIN(n3038), 
          .COUT(n3039), .S0(d3_73__N_1457[37]), .S1(d3_73__N_1457[38]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_3.INIT0 = 16'h74b8;
    defparam add_72_3.INIT1 = 16'h74b8;
    defparam add_72_3.INJECT1_0 = "NO";
    defparam add_72_3.INJECT1_1 = "NO";
    CCU2D add_72_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n545), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3038));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_72_1.INIT0 = 16'hF000;
    defparam add_72_1.INIT1 = 16'h0555;
    defparam add_72_1.INJECT1_0 = "NO";
    defparam add_72_1.INJECT1_1 = "NO";
    CCU2D add_81_38 (.A0(d4[73]), .B0(d5[73]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3034), 
          .S0(n858[36]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_38.INIT0 = 16'h5666;
    defparam add_81_38.INIT1 = 16'h0000;
    defparam add_81_38.INJECT1_0 = "NO";
    defparam add_81_38.INJECT1_1 = "NO";
    CCU2D add_81_36 (.A0(d4[71]), .B0(d5[71]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[72]), .B1(d5[72]), .C1(GND_net), .D1(GND_net), .CIN(n3033), 
          .COUT(n3034), .S0(n858[34]), .S1(n858[35]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_36.INIT0 = 16'h5666;
    defparam add_81_36.INIT1 = 16'h5666;
    defparam add_81_36.INJECT1_0 = "NO";
    defparam add_81_36.INJECT1_1 = "NO";
    CCU2D add_81_34 (.A0(d4[69]), .B0(d5[69]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[70]), .B1(d5[70]), .C1(GND_net), .D1(GND_net), .CIN(n3032), 
          .COUT(n3033), .S0(n858[32]), .S1(n858[33]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_34.INIT0 = 16'h5666;
    defparam add_81_34.INIT1 = 16'h5666;
    defparam add_81_34.INJECT1_0 = "NO";
    defparam add_81_34.INJECT1_1 = "NO";
    CCU2D add_81_32 (.A0(d4[67]), .B0(d5[67]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[68]), .B1(d5[68]), .C1(GND_net), .D1(GND_net), .CIN(n3031), 
          .COUT(n3032), .S0(n858[30]), .S1(n858[31]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_32.INIT0 = 16'h5666;
    defparam add_81_32.INIT1 = 16'h5666;
    defparam add_81_32.INJECT1_0 = "NO";
    defparam add_81_32.INJECT1_1 = "NO";
    CCU2D add_81_30 (.A0(d4[65]), .B0(d5[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[66]), .B1(d5[66]), .C1(GND_net), .D1(GND_net), .CIN(n3030), 
          .COUT(n3031), .S0(n858[28]), .S1(n858[29]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_30.INIT0 = 16'h5666;
    defparam add_81_30.INIT1 = 16'h5666;
    defparam add_81_30.INJECT1_0 = "NO";
    defparam add_81_30.INJECT1_1 = "NO";
    CCU2D add_81_28 (.A0(d4[63]), .B0(d5[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[64]), .B1(d5[64]), .C1(GND_net), .D1(GND_net), .CIN(n3029), 
          .COUT(n3030), .S0(n858[26]), .S1(n858[27]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_28.INIT0 = 16'h5666;
    defparam add_81_28.INIT1 = 16'h5666;
    defparam add_81_28.INJECT1_0 = "NO";
    defparam add_81_28.INJECT1_1 = "NO";
    CCU2D add_81_26 (.A0(d4[61]), .B0(d5[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[62]), .B1(d5[62]), .C1(GND_net), .D1(GND_net), .CIN(n3028), 
          .COUT(n3029), .S0(n858[24]), .S1(n858[25]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_26.INIT0 = 16'h5666;
    defparam add_81_26.INIT1 = 16'h5666;
    defparam add_81_26.INJECT1_0 = "NO";
    defparam add_81_26.INJECT1_1 = "NO";
    CCU2D add_81_24 (.A0(d4[59]), .B0(d5[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[60]), .B1(d5[60]), .C1(GND_net), .D1(GND_net), .CIN(n3027), 
          .COUT(n3028), .S0(n858[22]), .S1(n858[23]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_24.INIT0 = 16'h5666;
    defparam add_81_24.INIT1 = 16'h5666;
    defparam add_81_24.INJECT1_0 = "NO";
    defparam add_81_24.INJECT1_1 = "NO";
    CCU2D add_81_22 (.A0(d4[57]), .B0(d5[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[58]), .B1(d5[58]), .C1(GND_net), .D1(GND_net), .CIN(n3026), 
          .COUT(n3027), .S0(n858[20]), .S1(n858[21]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_22.INIT0 = 16'h5666;
    defparam add_81_22.INIT1 = 16'h5666;
    defparam add_81_22.INJECT1_0 = "NO";
    defparam add_81_22.INJECT1_1 = "NO";
    CCU2D add_81_20 (.A0(d4[55]), .B0(d5[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[56]), .B1(d5[56]), .C1(GND_net), .D1(GND_net), .CIN(n3025), 
          .COUT(n3026), .S0(n858[18]), .S1(n858[19]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_20.INIT0 = 16'h5666;
    defparam add_81_20.INIT1 = 16'h5666;
    defparam add_81_20.INJECT1_0 = "NO";
    defparam add_81_20.INJECT1_1 = "NO";
    CCU2D add_81_18 (.A0(d4[53]), .B0(d5[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[54]), .B1(d5[54]), .C1(GND_net), .D1(GND_net), .CIN(n3024), 
          .COUT(n3025), .S0(n858[16]), .S1(n858[17]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_18.INIT0 = 16'h5666;
    defparam add_81_18.INIT1 = 16'h5666;
    defparam add_81_18.INJECT1_0 = "NO";
    defparam add_81_18.INJECT1_1 = "NO";
    CCU2D add_81_16 (.A0(d4[51]), .B0(d5[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[52]), .B1(d5[52]), .C1(GND_net), .D1(GND_net), .CIN(n3023), 
          .COUT(n3024), .S0(n858[14]), .S1(n858[15]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_16.INIT0 = 16'h5666;
    defparam add_81_16.INIT1 = 16'h5666;
    defparam add_81_16.INJECT1_0 = "NO";
    defparam add_81_16.INJECT1_1 = "NO";
    CCU2D add_81_14 (.A0(d4[49]), .B0(d5[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[50]), .B1(d5[50]), .C1(GND_net), .D1(GND_net), .CIN(n3022), 
          .COUT(n3023), .S0(n858[12]), .S1(n858[13]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_14.INIT0 = 16'h5666;
    defparam add_81_14.INIT1 = 16'h5666;
    defparam add_81_14.INJECT1_0 = "NO";
    defparam add_81_14.INJECT1_1 = "NO";
    CCU2D add_81_12 (.A0(d4[47]), .B0(d5[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[48]), .B1(d5[48]), .C1(GND_net), .D1(GND_net), .CIN(n3021), 
          .COUT(n3022), .S0(n858[10]), .S1(n858[11]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_12.INIT0 = 16'h5666;
    defparam add_81_12.INIT1 = 16'h5666;
    defparam add_81_12.INJECT1_0 = "NO";
    defparam add_81_12.INJECT1_1 = "NO";
    CCU2D add_81_10 (.A0(d4[45]), .B0(d5[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[46]), .B1(d5[46]), .C1(GND_net), .D1(GND_net), .CIN(n3020), 
          .COUT(n3021), .S0(n858[8]), .S1(n858[9]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_10.INIT0 = 16'h5666;
    defparam add_81_10.INIT1 = 16'h5666;
    defparam add_81_10.INJECT1_0 = "NO";
    defparam add_81_10.INJECT1_1 = "NO";
    CCU2D add_81_8 (.A0(d4[43]), .B0(d5[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[44]), .B1(d5[44]), .C1(GND_net), .D1(GND_net), .CIN(n3019), 
          .COUT(n3020), .S0(n858[6]), .S1(n858[7]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_8.INIT0 = 16'h5666;
    defparam add_81_8.INIT1 = 16'h5666;
    defparam add_81_8.INJECT1_0 = "NO";
    defparam add_81_8.INJECT1_1 = "NO";
    CCU2D add_81_6 (.A0(d4[41]), .B0(d5[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[42]), .B1(d5[42]), .C1(GND_net), .D1(GND_net), .CIN(n3018), 
          .COUT(n3019), .S0(n858[4]), .S1(n858[5]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_6.INIT0 = 16'h5666;
    defparam add_81_6.INIT1 = 16'h5666;
    defparam add_81_6.INJECT1_0 = "NO";
    defparam add_81_6.INJECT1_1 = "NO";
    CCU2D add_81_4 (.A0(d4[39]), .B0(d5[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[40]), .B1(d5[40]), .C1(GND_net), .D1(GND_net), .CIN(n3017), 
          .COUT(n3018), .S0(n858[2]), .S1(n858[3]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_4.INIT0 = 16'h5666;
    defparam add_81_4.INIT1 = 16'h5666;
    defparam add_81_4.INJECT1_0 = "NO";
    defparam add_81_4.INJECT1_1 = "NO";
    CCU2D add_81_2 (.A0(d4[37]), .B0(d5[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[38]), .B1(d5[38]), .C1(GND_net), .D1(GND_net), .COUT(n3017), 
          .S1(n858[1]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_81_2.INIT0 = 16'h7000;
    defparam add_81_2.INIT1 = 16'h5666;
    defparam add_81_2.INJECT1_0 = "NO";
    defparam add_81_2.INJECT1_1 = "NO";
    CCU2D add_66_39 (.A0(d2[73]), .B0(n389), .C0(n429[36]), .D0(d1[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3015), 
          .S0(d2_73__N_1383[73]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_39.INIT0 = 16'hd1e2;
    defparam add_66_39.INIT1 = 16'h0000;
    defparam add_66_39.INJECT1_0 = "NO";
    defparam add_66_39.INJECT1_1 = "NO";
    CCU2D add_66_37 (.A0(d2[71]), .B0(n389), .C0(n429[34]), .D0(d1[71]), 
          .A1(d2[72]), .B1(n389), .C1(n429[35]), .D1(d1[72]), .CIN(n3014), 
          .COUT(n3015), .S0(d2_73__N_1383[71]), .S1(d2_73__N_1383[72]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_37.INIT0 = 16'hd1e2;
    defparam add_66_37.INIT1 = 16'hd1e2;
    defparam add_66_37.INJECT1_0 = "NO";
    defparam add_66_37.INJECT1_1 = "NO";
    CCU2D add_66_35 (.A0(d2[69]), .B0(n389), .C0(n429[32]), .D0(d1[69]), 
          .A1(d2[70]), .B1(n389), .C1(n429[33]), .D1(d1[70]), .CIN(n3013), 
          .COUT(n3014), .S0(d2_73__N_1383[69]), .S1(d2_73__N_1383[70]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_35.INIT0 = 16'hd1e2;
    defparam add_66_35.INIT1 = 16'hd1e2;
    defparam add_66_35.INJECT1_0 = "NO";
    defparam add_66_35.INJECT1_1 = "NO";
    CCU2D add_66_33 (.A0(d2[67]), .B0(n389), .C0(n429[30]), .D0(d1[67]), 
          .A1(d2[68]), .B1(n389), .C1(n429[31]), .D1(d1[68]), .CIN(n3012), 
          .COUT(n3013), .S0(d2_73__N_1383[67]), .S1(d2_73__N_1383[68]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_33.INIT0 = 16'hd1e2;
    defparam add_66_33.INIT1 = 16'hd1e2;
    defparam add_66_33.INJECT1_0 = "NO";
    defparam add_66_33.INJECT1_1 = "NO";
    CCU2D add_66_31 (.A0(d2[65]), .B0(n389), .C0(n429[28]), .D0(d1[65]), 
          .A1(d2[66]), .B1(n389), .C1(n429[29]), .D1(d1[66]), .CIN(n3011), 
          .COUT(n3012), .S0(d2_73__N_1383[65]), .S1(d2_73__N_1383[66]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_31.INIT0 = 16'hd1e2;
    defparam add_66_31.INIT1 = 16'hd1e2;
    defparam add_66_31.INJECT1_0 = "NO";
    defparam add_66_31.INJECT1_1 = "NO";
    CCU2D add_66_29 (.A0(d2[63]), .B0(n389), .C0(n429[26]), .D0(d1[63]), 
          .A1(d2[64]), .B1(n389), .C1(n429[27]), .D1(d1[64]), .CIN(n3010), 
          .COUT(n3011), .S0(d2_73__N_1383[63]), .S1(d2_73__N_1383[64]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_29.INIT0 = 16'hd1e2;
    defparam add_66_29.INIT1 = 16'hd1e2;
    defparam add_66_29.INJECT1_0 = "NO";
    defparam add_66_29.INJECT1_1 = "NO";
    CCU2D add_66_27 (.A0(d2[61]), .B0(n389), .C0(n429[24]), .D0(d1[61]), 
          .A1(d2[62]), .B1(n389), .C1(n429[25]), .D1(d1[62]), .CIN(n3009), 
          .COUT(n3010), .S0(d2_73__N_1383[61]), .S1(d2_73__N_1383[62]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_27.INIT0 = 16'hd1e2;
    defparam add_66_27.INIT1 = 16'hd1e2;
    defparam add_66_27.INJECT1_0 = "NO";
    defparam add_66_27.INJECT1_1 = "NO";
    CCU2D add_66_25 (.A0(d2[59]), .B0(n389), .C0(n429[22]), .D0(d1[59]), 
          .A1(d2[60]), .B1(n389), .C1(n429[23]), .D1(d1[60]), .CIN(n3008), 
          .COUT(n3009), .S0(d2_73__N_1383[59]), .S1(d2_73__N_1383[60]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_25.INIT0 = 16'hd1e2;
    defparam add_66_25.INIT1 = 16'hd1e2;
    defparam add_66_25.INJECT1_0 = "NO";
    defparam add_66_25.INJECT1_1 = "NO";
    CCU2D add_66_23 (.A0(d2[57]), .B0(n389), .C0(n429[20]), .D0(d1[57]), 
          .A1(d2[58]), .B1(n389), .C1(n429[21]), .D1(d1[58]), .CIN(n3007), 
          .COUT(n3008), .S0(d2_73__N_1383[57]), .S1(d2_73__N_1383[58]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_23.INIT0 = 16'hd1e2;
    defparam add_66_23.INIT1 = 16'hd1e2;
    defparam add_66_23.INJECT1_0 = "NO";
    defparam add_66_23.INJECT1_1 = "NO";
    CCU2D add_66_21 (.A0(d2[55]), .B0(n389), .C0(n429[18]), .D0(d1[55]), 
          .A1(d2[56]), .B1(n389), .C1(n429[19]), .D1(d1[56]), .CIN(n3006), 
          .COUT(n3007), .S0(d2_73__N_1383[55]), .S1(d2_73__N_1383[56]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_21.INIT0 = 16'hd1e2;
    defparam add_66_21.INIT1 = 16'hd1e2;
    defparam add_66_21.INJECT1_0 = "NO";
    defparam add_66_21.INJECT1_1 = "NO";
    CCU2D add_66_19 (.A0(d2[53]), .B0(n389), .C0(n429[16]), .D0(d1[53]), 
          .A1(d2[54]), .B1(n389), .C1(n429[17]), .D1(d1[54]), .CIN(n3005), 
          .COUT(n3006), .S0(d2_73__N_1383[53]), .S1(d2_73__N_1383[54]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_19.INIT0 = 16'hd1e2;
    defparam add_66_19.INIT1 = 16'hd1e2;
    defparam add_66_19.INJECT1_0 = "NO";
    defparam add_66_19.INJECT1_1 = "NO";
    CCU2D add_66_17 (.A0(d2[51]), .B0(n389), .C0(n429[14]), .D0(d1[51]), 
          .A1(d2[52]), .B1(n389), .C1(n429[15]), .D1(d1[52]), .CIN(n3004), 
          .COUT(n3005), .S0(d2_73__N_1383[51]), .S1(d2_73__N_1383[52]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_17.INIT0 = 16'hd1e2;
    defparam add_66_17.INIT1 = 16'hd1e2;
    defparam add_66_17.INJECT1_0 = "NO";
    defparam add_66_17.INJECT1_1 = "NO";
    CCU2D add_66_15 (.A0(d2[49]), .B0(n389), .C0(n429[12]), .D0(d1[49]), 
          .A1(d2[50]), .B1(n389), .C1(n429[13]), .D1(d1[50]), .CIN(n3003), 
          .COUT(n3004), .S0(d2_73__N_1383[49]), .S1(d2_73__N_1383[50]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_15.INIT0 = 16'hd1e2;
    defparam add_66_15.INIT1 = 16'hd1e2;
    defparam add_66_15.INJECT1_0 = "NO";
    defparam add_66_15.INJECT1_1 = "NO";
    CCU2D add_66_13 (.A0(d2[47]), .B0(n389), .C0(n429[10]), .D0(d1[47]), 
          .A1(d2[48]), .B1(n389), .C1(n429[11]), .D1(d1[48]), .CIN(n3002), 
          .COUT(n3003), .S0(d2_73__N_1383[47]), .S1(d2_73__N_1383[48]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_13.INIT0 = 16'hd1e2;
    defparam add_66_13.INIT1 = 16'hd1e2;
    defparam add_66_13.INJECT1_0 = "NO";
    defparam add_66_13.INJECT1_1 = "NO";
    CCU2D add_66_11 (.A0(d2[45]), .B0(n389), .C0(n429[8]), .D0(d1[45]), 
          .A1(d2[46]), .B1(n389), .C1(n429[9]), .D1(d1[46]), .CIN(n3001), 
          .COUT(n3002), .S0(d2_73__N_1383[45]), .S1(d2_73__N_1383[46]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_11.INIT0 = 16'hd1e2;
    defparam add_66_11.INIT1 = 16'hd1e2;
    defparam add_66_11.INJECT1_0 = "NO";
    defparam add_66_11.INJECT1_1 = "NO";
    CCU2D add_66_9 (.A0(d2[43]), .B0(n389), .C0(n429[6]), .D0(d1[43]), 
          .A1(d2[44]), .B1(n389), .C1(n429[7]), .D1(d1[44]), .CIN(n3000), 
          .COUT(n3001), .S0(d2_73__N_1383[43]), .S1(d2_73__N_1383[44]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_9.INIT0 = 16'hd1e2;
    defparam add_66_9.INIT1 = 16'hd1e2;
    defparam add_66_9.INJECT1_0 = "NO";
    defparam add_66_9.INJECT1_1 = "NO";
    CCU2D add_66_7 (.A0(d2[41]), .B0(n389), .C0(n429[4]), .D0(d1[41]), 
          .A1(d2[42]), .B1(n389), .C1(n429[5]), .D1(d1[42]), .CIN(n2999), 
          .COUT(n3000), .S0(d2_73__N_1383[41]), .S1(d2_73__N_1383[42]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_7.INIT0 = 16'hd1e2;
    defparam add_66_7.INIT1 = 16'hd1e2;
    defparam add_66_7.INJECT1_0 = "NO";
    defparam add_66_7.INJECT1_1 = "NO";
    CCU2D add_66_5 (.A0(d2[39]), .B0(n389), .C0(n429[2]), .D0(d1[39]), 
          .A1(d2[40]), .B1(n389), .C1(n429[3]), .D1(d1[40]), .CIN(n2998), 
          .COUT(n2999), .S0(d2_73__N_1383[39]), .S1(d2_73__N_1383[40]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_5.INIT0 = 16'hd1e2;
    defparam add_66_5.INIT1 = 16'hd1e2;
    defparam add_66_5.INJECT1_0 = "NO";
    defparam add_66_5.INJECT1_1 = "NO";
    CCU2D add_66_3 (.A0(d2[37]), .B0(n389), .C0(n3218), .D0(d1[37]), 
          .A1(d2[38]), .B1(n389), .C1(n429[1]), .D1(d1[38]), .CIN(n2997), 
          .COUT(n2998), .S0(d2_73__N_1383[37]), .S1(d2_73__N_1383[38]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_3.INIT0 = 16'hd1e2;
    defparam add_66_3.INIT1 = 16'hd1e2;
    defparam add_66_3.INJECT1_0 = "NO";
    defparam add_66_3.INJECT1_1 = "NO";
    CCU2D add_66_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n389), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2997));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_66_1.INIT0 = 16'hF000;
    defparam add_66_1.INIT1 = 16'h0fff;
    defparam add_66_1.INJECT1_0 = "NO";
    defparam add_66_1.INJECT1_1 = "NO";
    CCU2D add_91_37 (.A0(d_tmp[72]), .B0(d_d_tmp[72]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[73]), .B1(d_d_tmp[73]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2992), .S0(n1170[35]), .S1(n1170[36]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_37.INIT0 = 16'h5999;
    defparam add_91_37.INIT1 = 16'h5999;
    defparam add_91_37.INJECT1_0 = "NO";
    defparam add_91_37.INJECT1_1 = "NO";
    CCU2D add_91_35 (.A0(d_tmp[70]), .B0(d_d_tmp[70]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[71]), .B1(d_d_tmp[71]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2991), .COUT(n2992), .S0(n1170[33]), .S1(n1170[34]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_35.INIT0 = 16'h5999;
    defparam add_91_35.INIT1 = 16'h5999;
    defparam add_91_35.INJECT1_0 = "NO";
    defparam add_91_35.INJECT1_1 = "NO";
    CCU2D add_91_33 (.A0(d_tmp[68]), .B0(d_d_tmp[68]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[69]), .B1(d_d_tmp[69]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2990), .COUT(n2991), .S0(n1170[31]), .S1(n1170[32]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_33.INIT0 = 16'h5999;
    defparam add_91_33.INIT1 = 16'h5999;
    defparam add_91_33.INJECT1_0 = "NO";
    defparam add_91_33.INJECT1_1 = "NO";
    CCU2D add_91_31 (.A0(d_tmp[66]), .B0(d_d_tmp[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[67]), .B1(d_d_tmp[67]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2989), .COUT(n2990), .S0(n1170[29]), .S1(n1170[30]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_31.INIT0 = 16'h5999;
    defparam add_91_31.INIT1 = 16'h5999;
    defparam add_91_31.INJECT1_0 = "NO";
    defparam add_91_31.INJECT1_1 = "NO";
    CCU2D add_91_29 (.A0(d_tmp[64]), .B0(d_d_tmp[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[65]), .B1(d_d_tmp[65]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2988), .COUT(n2989), .S0(n1170[27]), .S1(n1170[28]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_29.INIT0 = 16'h5999;
    defparam add_91_29.INIT1 = 16'h5999;
    defparam add_91_29.INJECT1_0 = "NO";
    defparam add_91_29.INJECT1_1 = "NO";
    CCU2D add_91_27 (.A0(d_tmp[62]), .B0(d_d_tmp[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[63]), .B1(d_d_tmp[63]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2987), .COUT(n2988), .S0(n1170[25]), .S1(n1170[26]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_27.INIT0 = 16'h5999;
    defparam add_91_27.INIT1 = 16'h5999;
    defparam add_91_27.INJECT1_0 = "NO";
    defparam add_91_27.INJECT1_1 = "NO";
    CCU2D add_91_25 (.A0(d_tmp[60]), .B0(d_d_tmp[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[61]), .B1(d_d_tmp[61]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2986), .COUT(n2987), .S0(n1170[23]), .S1(n1170[24]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_25.INIT0 = 16'h5999;
    defparam add_91_25.INIT1 = 16'h5999;
    defparam add_91_25.INJECT1_0 = "NO";
    defparam add_91_25.INJECT1_1 = "NO";
    CCU2D add_91_23 (.A0(d_tmp[58]), .B0(d_d_tmp[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[59]), .B1(d_d_tmp[59]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2985), .COUT(n2986), .S0(n1170[21]), .S1(n1170[22]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_23.INIT0 = 16'h5999;
    defparam add_91_23.INIT1 = 16'h5999;
    defparam add_91_23.INJECT1_0 = "NO";
    defparam add_91_23.INJECT1_1 = "NO";
    CCU2D add_91_21 (.A0(d_tmp[56]), .B0(d_d_tmp[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[57]), .B1(d_d_tmp[57]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2984), .COUT(n2985), .S0(n1170[19]), .S1(n1170[20]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_21.INIT0 = 16'h5999;
    defparam add_91_21.INIT1 = 16'h5999;
    defparam add_91_21.INJECT1_0 = "NO";
    defparam add_91_21.INJECT1_1 = "NO";
    CCU2D add_91_19 (.A0(d_tmp[54]), .B0(d_d_tmp[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[55]), .B1(d_d_tmp[55]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2983), .COUT(n2984), .S0(n1170[17]), .S1(n1170[18]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_19.INIT0 = 16'h5999;
    defparam add_91_19.INIT1 = 16'h5999;
    defparam add_91_19.INJECT1_0 = "NO";
    defparam add_91_19.INJECT1_1 = "NO";
    CCU2D add_91_17 (.A0(d_tmp[52]), .B0(d_d_tmp[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[53]), .B1(d_d_tmp[53]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2982), .COUT(n2983), .S0(n1170[15]), .S1(n1170[16]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_17.INIT0 = 16'h5999;
    defparam add_91_17.INIT1 = 16'h5999;
    defparam add_91_17.INJECT1_0 = "NO";
    defparam add_91_17.INJECT1_1 = "NO";
    CCU2D add_91_15 (.A0(d_tmp[50]), .B0(d_d_tmp[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[51]), .B1(d_d_tmp[51]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2981), .COUT(n2982), .S0(n1170[13]), .S1(n1170[14]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_15.INIT0 = 16'h5999;
    defparam add_91_15.INIT1 = 16'h5999;
    defparam add_91_15.INJECT1_0 = "NO";
    defparam add_91_15.INJECT1_1 = "NO";
    CCU2D add_91_13 (.A0(d_tmp[48]), .B0(d_d_tmp[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[49]), .B1(d_d_tmp[49]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2980), .COUT(n2981), .S0(n1170[11]), .S1(n1170[12]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_13.INIT0 = 16'h5999;
    defparam add_91_13.INIT1 = 16'h5999;
    defparam add_91_13.INJECT1_0 = "NO";
    defparam add_91_13.INJECT1_1 = "NO";
    CCU2D add_91_11 (.A0(d_tmp[46]), .B0(d_d_tmp[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[47]), .B1(d_d_tmp[47]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2979), .COUT(n2980), .S0(n1170[9]), .S1(n1170[10]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_11.INIT0 = 16'h5999;
    defparam add_91_11.INIT1 = 16'h5999;
    defparam add_91_11.INJECT1_0 = "NO";
    defparam add_91_11.INJECT1_1 = "NO";
    CCU2D add_91_9 (.A0(d_tmp[44]), .B0(d_d_tmp[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[45]), .B1(d_d_tmp[45]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2978), .COUT(n2979), .S0(n1170[7]), .S1(n1170[8]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_9.INIT0 = 16'h5999;
    defparam add_91_9.INIT1 = 16'h5999;
    defparam add_91_9.INJECT1_0 = "NO";
    defparam add_91_9.INJECT1_1 = "NO";
    CCU2D add_91_7 (.A0(d_tmp[42]), .B0(d_d_tmp[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[43]), .B1(d_d_tmp[43]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2977), .COUT(n2978), .S0(n1170[5]), .S1(n1170[6]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_7.INIT0 = 16'h5999;
    defparam add_91_7.INIT1 = 16'h5999;
    defparam add_91_7.INJECT1_0 = "NO";
    defparam add_91_7.INJECT1_1 = "NO";
    CCU2D add_91_5 (.A0(d_tmp[40]), .B0(d_d_tmp[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[41]), .B1(d_d_tmp[41]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2976), .COUT(n2977), .S0(n1170[3]), .S1(n1170[4]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_5.INIT0 = 16'h5999;
    defparam add_91_5.INIT1 = 16'h5999;
    defparam add_91_5.INJECT1_0 = "NO";
    defparam add_91_5.INJECT1_1 = "NO";
    CCU2D add_91_3 (.A0(d_tmp[38]), .B0(d_d_tmp[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[39]), .B1(d_d_tmp[39]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2975), .COUT(n2976), .S0(n1170[1]), .S1(n1170[2]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_3.INIT0 = 16'h5999;
    defparam add_91_3.INIT1 = 16'h5999;
    defparam add_91_3.INJECT1_0 = "NO";
    defparam add_91_3.INJECT1_1 = "NO";
    CCU2D add_91_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[37]), .B1(d_d_tmp[37]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2975), .S1(n1170[0]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_91_1.INIT0 = 16'hF000;
    defparam add_91_1.INIT1 = 16'h5999;
    defparam add_91_1.INJECT1_0 = "NO";
    defparam add_91_1.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i1 (.D(n1131[1]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    CCU2D add_97_27 (.A0(d9[62]), .B0(d_d9[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[63]), .B1(d_d9[63]), .C1(GND_net), .D1(GND_net), .CIN(n2927), 
          .COUT(n2928));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_27.INIT0 = 16'h5999;
    defparam add_97_27.INIT1 = 16'h5999;
    defparam add_97_27.INJECT1_0 = "NO";
    defparam add_97_27.INJECT1_1 = "NO";
    CCU2D add_97_25 (.A0(d9[60]), .B0(d_d9[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[61]), .B1(d_d9[61]), .C1(GND_net), .D1(GND_net), .CIN(n2926), 
          .COUT(n2927));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_25.INIT0 = 16'h5999;
    defparam add_97_25.INIT1 = 16'h5999;
    defparam add_97_25.INJECT1_0 = "NO";
    defparam add_97_25.INJECT1_1 = "NO";
    CCU2D add_97_23 (.A0(d9[58]), .B0(d_d9[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[59]), .B1(d_d9[59]), .C1(GND_net), .D1(GND_net), .CIN(n2925), 
          .COUT(n2926));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_23.INIT0 = 16'h5999;
    defparam add_97_23.INIT1 = 16'h5999;
    defparam add_97_23.INJECT1_0 = "NO";
    defparam add_97_23.INJECT1_1 = "NO";
    CCU2D add_97_21 (.A0(d9[56]), .B0(d_d9[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[57]), .B1(d_d9[57]), .C1(GND_net), .D1(GND_net), .CIN(n2924), 
          .COUT(n2925));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_21.INIT0 = 16'h5999;
    defparam add_97_21.INIT1 = 16'h5999;
    defparam add_97_21.INJECT1_0 = "NO";
    defparam add_97_21.INJECT1_1 = "NO";
    CCU2D add_97_19 (.A0(d9[54]), .B0(d_d9[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[55]), .B1(d_d9[55]), .C1(GND_net), .D1(GND_net), .CIN(n2923), 
          .COUT(n2924));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_19.INIT0 = 16'h5999;
    defparam add_97_19.INIT1 = 16'h5999;
    defparam add_97_19.INJECT1_0 = "NO";
    defparam add_97_19.INJECT1_1 = "NO";
    CCU2D add_97_17 (.A0(d9[52]), .B0(d_d9[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[53]), .B1(d_d9[53]), .C1(GND_net), .D1(GND_net), .CIN(n2922), 
          .COUT(n2923));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_17.INIT0 = 16'h5999;
    defparam add_97_17.INIT1 = 16'h5999;
    defparam add_97_17.INJECT1_0 = "NO";
    defparam add_97_17.INJECT1_1 = "NO";
    CCU2D add_97_15 (.A0(d9[50]), .B0(d_d9[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[51]), .B1(d_d9[51]), .C1(GND_net), .D1(GND_net), .CIN(n2921), 
          .COUT(n2922));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_15.INIT0 = 16'h5999;
    defparam add_97_15.INIT1 = 16'h5999;
    defparam add_97_15.INJECT1_0 = "NO";
    defparam add_97_15.INJECT1_1 = "NO";
    CCU2D add_97_13 (.A0(d9[48]), .B0(d_d9[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[49]), .B1(d_d9[49]), .C1(GND_net), .D1(GND_net), .CIN(n2920), 
          .COUT(n2921));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_13.INIT0 = 16'h5999;
    defparam add_97_13.INIT1 = 16'h5999;
    defparam add_97_13.INJECT1_0 = "NO";
    defparam add_97_13.INJECT1_1 = "NO";
    CCU2D add_97_11 (.A0(d9[46]), .B0(d_d9[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[47]), .B1(d_d9[47]), .C1(GND_net), .D1(GND_net), .CIN(n2919), 
          .COUT(n2920));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_11.INIT0 = 16'h5999;
    defparam add_97_11.INIT1 = 16'h5999;
    defparam add_97_11.INJECT1_0 = "NO";
    defparam add_97_11.INJECT1_1 = "NO";
    CCU2D add_97_9 (.A0(d9[44]), .B0(d_d9[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[45]), .B1(d_d9[45]), .C1(GND_net), .D1(GND_net), .CIN(n2918), 
          .COUT(n2919));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_9.INIT0 = 16'h5999;
    defparam add_97_9.INIT1 = 16'h5999;
    defparam add_97_9.INJECT1_0 = "NO";
    defparam add_97_9.INJECT1_1 = "NO";
    CCU2D add_97_7 (.A0(d9[42]), .B0(d_d9[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[43]), .B1(d_d9[43]), .C1(GND_net), .D1(GND_net), .CIN(n2917), 
          .COUT(n2918));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_7.INIT0 = 16'h5999;
    defparam add_97_7.INIT1 = 16'h5999;
    defparam add_97_7.INJECT1_0 = "NO";
    defparam add_97_7.INJECT1_1 = "NO";
    CCU2D add_97_5 (.A0(d9[40]), .B0(d_d9[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[41]), .B1(d_d9[41]), .C1(GND_net), .D1(GND_net), .CIN(n2916), 
          .COUT(n2917));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_5.INIT0 = 16'h5999;
    defparam add_97_5.INIT1 = 16'h5999;
    defparam add_97_5.INJECT1_0 = "NO";
    defparam add_97_5.INJECT1_1 = "NO";
    CCU2D add_97_3 (.A0(d9[38]), .B0(d_d9[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[39]), .B1(d_d9[39]), .C1(GND_net), .D1(GND_net), .CIN(n2915), 
          .COUT(n2916));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_3.INIT0 = 16'h5999;
    defparam add_97_3.INIT1 = 16'h5999;
    defparam add_97_3.INJECT1_0 = "NO";
    defparam add_97_3.INJECT1_1 = "NO";
    CCU2D add_97_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[37]), .B1(d_d9[37]), .C1(GND_net), .D1(GND_net), .COUT(n2915));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_97_1.INIT0 = 16'h0000;
    defparam add_97_1.INIT1 = 16'h5999;
    defparam add_97_1.INJECT1_0 = "NO";
    defparam add_97_1.INJECT1_1 = "NO";
    CCU2D add_82_39 (.A0(d5[73]), .B0(n857), .C0(n858[36]), .D0(d4[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2914), 
          .S0(d5_73__N_1605[73]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_39.INIT0 = 16'h74b8;
    defparam add_82_39.INIT1 = 16'h0000;
    defparam add_82_39.INJECT1_0 = "NO";
    defparam add_82_39.INJECT1_1 = "NO";
    CCU2D add_82_37 (.A0(d5[71]), .B0(n857), .C0(n858[34]), .D0(d4[71]), 
          .A1(d5[72]), .B1(n857), .C1(n858[35]), .D1(d4[72]), .CIN(n2913), 
          .COUT(n2914), .S0(d5_73__N_1605[71]), .S1(d5_73__N_1605[72]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_37.INIT0 = 16'h74b8;
    defparam add_82_37.INIT1 = 16'h74b8;
    defparam add_82_37.INJECT1_0 = "NO";
    defparam add_82_37.INJECT1_1 = "NO";
    CCU2D add_82_35 (.A0(d5[69]), .B0(n857), .C0(n858[32]), .D0(d4[69]), 
          .A1(d5[70]), .B1(n857), .C1(n858[33]), .D1(d4[70]), .CIN(n2912), 
          .COUT(n2913), .S0(d5_73__N_1605[69]), .S1(d5_73__N_1605[70]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_35.INIT0 = 16'h74b8;
    defparam add_82_35.INIT1 = 16'h74b8;
    defparam add_82_35.INJECT1_0 = "NO";
    defparam add_82_35.INJECT1_1 = "NO";
    CCU2D add_82_33 (.A0(d5[67]), .B0(n857), .C0(n858[30]), .D0(d4[67]), 
          .A1(d5[68]), .B1(n857), .C1(n858[31]), .D1(d4[68]), .CIN(n2911), 
          .COUT(n2912), .S0(d5_73__N_1605[67]), .S1(d5_73__N_1605[68]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_33.INIT0 = 16'h74b8;
    defparam add_82_33.INIT1 = 16'h74b8;
    defparam add_82_33.INJECT1_0 = "NO";
    defparam add_82_33.INJECT1_1 = "NO";
    CCU2D add_82_31 (.A0(d5[65]), .B0(n857), .C0(n858[28]), .D0(d4[65]), 
          .A1(d5[66]), .B1(n857), .C1(n858[29]), .D1(d4[66]), .CIN(n2910), 
          .COUT(n2911), .S0(d5_73__N_1605[65]), .S1(d5_73__N_1605[66]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_31.INIT0 = 16'h74b8;
    defparam add_82_31.INIT1 = 16'h74b8;
    defparam add_82_31.INJECT1_0 = "NO";
    defparam add_82_31.INJECT1_1 = "NO";
    CCU2D add_82_29 (.A0(d5[63]), .B0(n857), .C0(n858[26]), .D0(d4[63]), 
          .A1(d5[64]), .B1(n857), .C1(n858[27]), .D1(d4[64]), .CIN(n2909), 
          .COUT(n2910), .S0(d5_73__N_1605[63]), .S1(d5_73__N_1605[64]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_29.INIT0 = 16'h74b8;
    defparam add_82_29.INIT1 = 16'h74b8;
    defparam add_82_29.INJECT1_0 = "NO";
    defparam add_82_29.INJECT1_1 = "NO";
    CCU2D add_82_27 (.A0(d5[61]), .B0(n857), .C0(n858[24]), .D0(d4[61]), 
          .A1(d5[62]), .B1(n857), .C1(n858[25]), .D1(d4[62]), .CIN(n2908), 
          .COUT(n2909), .S0(d5_73__N_1605[61]), .S1(d5_73__N_1605[62]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_27.INIT0 = 16'h74b8;
    defparam add_82_27.INIT1 = 16'h74b8;
    defparam add_82_27.INJECT1_0 = "NO";
    defparam add_82_27.INJECT1_1 = "NO";
    CCU2D add_82_25 (.A0(d5[59]), .B0(n857), .C0(n858[22]), .D0(d4[59]), 
          .A1(d5[60]), .B1(n857), .C1(n858[23]), .D1(d4[60]), .CIN(n2907), 
          .COUT(n2908), .S0(d5_73__N_1605[59]), .S1(d5_73__N_1605[60]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_25.INIT0 = 16'h74b8;
    defparam add_82_25.INIT1 = 16'h74b8;
    defparam add_82_25.INJECT1_0 = "NO";
    defparam add_82_25.INJECT1_1 = "NO";
    CCU2D add_82_23 (.A0(d5[57]), .B0(n857), .C0(n858[20]), .D0(d4[57]), 
          .A1(d5[58]), .B1(n857), .C1(n858[21]), .D1(d4[58]), .CIN(n2906), 
          .COUT(n2907), .S0(d5_73__N_1605[57]), .S1(d5_73__N_1605[58]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_23.INIT0 = 16'h74b8;
    defparam add_82_23.INIT1 = 16'h74b8;
    defparam add_82_23.INJECT1_0 = "NO";
    defparam add_82_23.INJECT1_1 = "NO";
    CCU2D add_82_21 (.A0(d5[55]), .B0(n857), .C0(n858[18]), .D0(d4[55]), 
          .A1(d5[56]), .B1(n857), .C1(n858[19]), .D1(d4[56]), .CIN(n2905), 
          .COUT(n2906), .S0(d5_73__N_1605[55]), .S1(d5_73__N_1605[56]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_21.INIT0 = 16'h74b8;
    defparam add_82_21.INIT1 = 16'h74b8;
    defparam add_82_21.INJECT1_0 = "NO";
    defparam add_82_21.INJECT1_1 = "NO";
    CCU2D add_82_19 (.A0(d5[53]), .B0(n857), .C0(n858[16]), .D0(d4[53]), 
          .A1(d5[54]), .B1(n857), .C1(n858[17]), .D1(d4[54]), .CIN(n2904), 
          .COUT(n2905), .S0(d5_73__N_1605[53]), .S1(d5_73__N_1605[54]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_19.INIT0 = 16'h74b8;
    defparam add_82_19.INIT1 = 16'h74b8;
    defparam add_82_19.INJECT1_0 = "NO";
    defparam add_82_19.INJECT1_1 = "NO";
    CCU2D add_82_17 (.A0(d5[51]), .B0(n857), .C0(n858[14]), .D0(d4[51]), 
          .A1(d5[52]), .B1(n857), .C1(n858[15]), .D1(d4[52]), .CIN(n2903), 
          .COUT(n2904), .S0(d5_73__N_1605[51]), .S1(d5_73__N_1605[52]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_17.INIT0 = 16'h74b8;
    defparam add_82_17.INIT1 = 16'h74b8;
    defparam add_82_17.INJECT1_0 = "NO";
    defparam add_82_17.INJECT1_1 = "NO";
    CCU2D add_82_15 (.A0(d5[49]), .B0(n857), .C0(n858[12]), .D0(d4[49]), 
          .A1(d5[50]), .B1(n857), .C1(n858[13]), .D1(d4[50]), .CIN(n2902), 
          .COUT(n2903), .S0(d5_73__N_1605[49]), .S1(d5_73__N_1605[50]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_15.INIT0 = 16'h74b8;
    defparam add_82_15.INIT1 = 16'h74b8;
    defparam add_82_15.INJECT1_0 = "NO";
    defparam add_82_15.INJECT1_1 = "NO";
    CCU2D add_82_13 (.A0(d5[47]), .B0(n857), .C0(n858[10]), .D0(d4[47]), 
          .A1(d5[48]), .B1(n857), .C1(n858[11]), .D1(d4[48]), .CIN(n2901), 
          .COUT(n2902), .S0(d5_73__N_1605[47]), .S1(d5_73__N_1605[48]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_13.INIT0 = 16'h74b8;
    defparam add_82_13.INIT1 = 16'h74b8;
    defparam add_82_13.INJECT1_0 = "NO";
    defparam add_82_13.INJECT1_1 = "NO";
    CCU2D add_82_11 (.A0(d5[45]), .B0(n857), .C0(n858[8]), .D0(d4[45]), 
          .A1(d5[46]), .B1(n857), .C1(n858[9]), .D1(d4[46]), .CIN(n2900), 
          .COUT(n2901), .S0(d5_73__N_1605[45]), .S1(d5_73__N_1605[46]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_11.INIT0 = 16'h74b8;
    defparam add_82_11.INIT1 = 16'h74b8;
    defparam add_82_11.INJECT1_0 = "NO";
    defparam add_82_11.INJECT1_1 = "NO";
    CCU2D add_82_9 (.A0(d5[43]), .B0(n857), .C0(n858[6]), .D0(d4[43]), 
          .A1(d5[44]), .B1(n857), .C1(n858[7]), .D1(d4[44]), .CIN(n2899), 
          .COUT(n2900), .S0(d5_73__N_1605[43]), .S1(d5_73__N_1605[44]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_9.INIT0 = 16'h74b8;
    defparam add_82_9.INIT1 = 16'h74b8;
    defparam add_82_9.INJECT1_0 = "NO";
    defparam add_82_9.INJECT1_1 = "NO";
    CCU2D add_82_7 (.A0(d5[41]), .B0(n857), .C0(n858[4]), .D0(d4[41]), 
          .A1(d5[42]), .B1(n857), .C1(n858[5]), .D1(d4[42]), .CIN(n2898), 
          .COUT(n2899), .S0(d5_73__N_1605[41]), .S1(d5_73__N_1605[42]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_7.INIT0 = 16'h74b8;
    defparam add_82_7.INIT1 = 16'h74b8;
    defparam add_82_7.INJECT1_0 = "NO";
    defparam add_82_7.INJECT1_1 = "NO";
    CCU2D add_82_5 (.A0(d5[39]), .B0(n857), .C0(n858[2]), .D0(d4[39]), 
          .A1(d5[40]), .B1(n857), .C1(n858[3]), .D1(d4[40]), .CIN(n2897), 
          .COUT(n2898), .S0(d5_73__N_1605[39]), .S1(d5_73__N_1605[40]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_5.INIT0 = 16'h74b8;
    defparam add_82_5.INIT1 = 16'h74b8;
    defparam add_82_5.INJECT1_0 = "NO";
    defparam add_82_5.INJECT1_1 = "NO";
    CCU2D add_82_3 (.A0(d5[37]), .B0(n857), .C0(n858[0]), .D0(d4[37]), 
          .A1(d5[38]), .B1(n857), .C1(n858[1]), .D1(d4[38]), .CIN(n2896), 
          .COUT(n2897), .S0(d5_73__N_1605[37]), .S1(d5_73__N_1605[38]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_3.INIT0 = 16'h74b8;
    defparam add_82_3.INIT1 = 16'h74b8;
    defparam add_82_3.INJECT1_0 = "NO";
    defparam add_82_3.INJECT1_1 = "NO";
    CCU2D add_82_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n857), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2896));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_82_1.INIT0 = 16'hF000;
    defparam add_82_1.INIT1 = 16'h0555;
    defparam add_82_1.INJECT1_0 = "NO";
    defparam add_82_1.INJECT1_1 = "NO";
    CCU2D add_95_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2892), 
          .S0(n1325));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_cout.INIT0 = 16'h0000;
    defparam add_95_cout.INIT1 = 16'h0000;
    defparam add_95_cout.INJECT1_0 = "NO";
    defparam add_95_cout.INJECT1_1 = "NO";
    LUT4 i997_2_lut (.A(d4[37]), .B(d5[37]), .Z(n858[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i997_2_lut.init = 16'h6666;
    LUT4 mux_114_i2_3_lut (.A(n1326[30]), .B(n1365[30]), .C(n1325), .Z(n1404[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i2_3_lut.init = 16'hcaca;
    LUT4 i13_4_lut (.A(count[7]), .B(n26), .C(n22), .D(count[12]), .Z(d_clk_tmp_N_2537)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    FD1P3AX d6_i0_i2 (.D(n1131[2]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(n1131[3]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(n1131[4]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(n1131[5]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(n1131[6]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(n1131[7]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(n1131[8]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(n1131[9]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(n1131[10]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i11 (.D(n1131[11]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i12 (.D(n1131[12]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d6_i0_i13 (.D(n1131[13]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d6_i0_i14 (.D(n1131[14]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d6_i0_i15 (.D(n1131[15]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d6_i0_i16 (.D(n1131[16]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d6_i0_i17 (.D(n1131[17]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d6_i0_i18 (.D(n1131[18]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d6_i0_i19 (.D(n1131[19]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d6_i0_i20 (.D(n1131[20]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d6_i0_i21 (.D(n1131[21]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d6_i0_i22 (.D(n1131[22]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d6_i0_i23 (.D(n1131[23]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d6_i0_i24 (.D(n1131[24]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d6_i0_i25 (.D(n1131[25]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d6_i0_i26 (.D(n1131[26]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d6_i0_i27 (.D(n1131[27]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d6_i0_i28 (.D(n1131[28]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d6_i0_i29 (.D(n1131[29]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d6_i0_i30 (.D(n1131[30]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d6_i0_i31 (.D(n1131[31]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d6_i0_i32 (.D(n1131[32]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d6_i0_i33 (.D(n1131[33]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d6_i0_i34 (.D(n1131[34]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d6_i0_i35 (.D(n1131[35]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d6_i0_i36 (.D(n1131[36]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d6_i0_i37 (.D(n1209[0]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d6_i0_i38 (.D(n1209[1]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d6_i0_i39 (.D(n1209[2]), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d6_i0_i40 (.D(n1209[3]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d6_i0_i41 (.D(n1209[4]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d6_i0_i42 (.D(n1209[5]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d6_i0_i43 (.D(n1209[6]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d6_i0_i44 (.D(n1209[7]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d6_i0_i45 (.D(n1209[8]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d6_i0_i46 (.D(n1209[9]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d6_i0_i47 (.D(n1209[10]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d6_i0_i48 (.D(n1209[11]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d6_i0_i49 (.D(n1209[12]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d6_i0_i50 (.D(n1209[13]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d6_i0_i51 (.D(n1209[14]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d6_i0_i52 (.D(n1209[15]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d6_i0_i53 (.D(n1209[16]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d6_i0_i54 (.D(n1209[17]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d6_i0_i55 (.D(n1209[18]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d6_i0_i56 (.D(n1209[19]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d6_i0_i57 (.D(n1209[20]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d6_i0_i58 (.D(n1209[21]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d6_i0_i59 (.D(n1209[22]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d6_i0_i60 (.D(n1209[23]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d6_i0_i61 (.D(n1209[24]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d6_i0_i62 (.D(n1209[25]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d6_i0_i63 (.D(n1209[26]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i63.GSR = "ENABLED";
    FD1P3AX d6_i0_i64 (.D(n1209[27]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i64.GSR = "ENABLED";
    FD1P3AX d6_i0_i65 (.D(n1209[28]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i65.GSR = "ENABLED";
    FD1P3AX d6_i0_i66 (.D(n1209[29]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i66.GSR = "ENABLED";
    FD1P3AX d6_i0_i67 (.D(n1209[30]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i67.GSR = "ENABLED";
    FD1P3AX d6_i0_i68 (.D(n1209[31]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i68.GSR = "ENABLED";
    FD1P3AX d6_i0_i69 (.D(n1209[32]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i69.GSR = "ENABLED";
    FD1P3AX d6_i0_i70 (.D(n1209[33]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i70.GSR = "ENABLED";
    FD1P3AX d6_i0_i71 (.D(n1209[34]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i71.GSR = "ENABLED";
    FD1P3AX d6_i0_i72 (.D(n1209[35]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i72.GSR = "ENABLED";
    FD1P3AX d6_i0_i73 (.D(n1209[36]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d6[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i73.GSR = "ENABLED";
    FD1S3AX d2_i1 (.D(d2_73__N_1383[1]), .CK(osc_clk), .Q(d2[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i1.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(count[9]), .B(n24_adj_2599), .C(n18), .D(count[5]), 
         .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i8_4_lut (.A(count[13]), .B(count[3]), .C(count[11]), .D(count[6]), 
         .Z(n22)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(count[0]), .B(count[4]), .C(count[2]), .D(count[8]), 
         .Z(n24_adj_2599)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 i11_3_lut (.A(count[1]), .B(n22_adj_2600), .C(count[9]), .Z(n25)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i11_3_lut.init = 16'hfefe;
    CCU2D add_95_37 (.A0(d9[35]), .B0(d_d9[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[36]), .B1(d_d9[36]), .C1(GND_net), .D1(GND_net), .CIN(n2891), 
          .COUT(n2892));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_37.INIT0 = 16'h5999;
    defparam add_95_37.INIT1 = 16'h5999;
    defparam add_95_37.INJECT1_0 = "NO";
    defparam add_95_37.INJECT1_1 = "NO";
    CCU2D add_95_35 (.A0(d9[33]), .B0(d_d9[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[34]), .B1(d_d9[34]), .C1(GND_net), .D1(GND_net), .CIN(n2890), 
          .COUT(n2891));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_35.INIT0 = 16'h5999;
    defparam add_95_35.INIT1 = 16'h5999;
    defparam add_95_35.INJECT1_0 = "NO";
    defparam add_95_35.INJECT1_1 = "NO";
    CCU2D add_95_33 (.A0(d9[31]), .B0(d_d9[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[32]), .B1(d_d9[32]), .C1(GND_net), .D1(GND_net), .CIN(n2889), 
          .COUT(n2890));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_33.INIT0 = 16'h5999;
    defparam add_95_33.INIT1 = 16'h5999;
    defparam add_95_33.INJECT1_0 = "NO";
    defparam add_95_33.INJECT1_1 = "NO";
    CCU2D add_95_31 (.A0(d9[29]), .B0(d_d9[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[30]), .B1(d_d9[30]), .C1(GND_net), .D1(GND_net), .CIN(n2888), 
          .COUT(n2889));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_31.INIT0 = 16'h5999;
    defparam add_95_31.INIT1 = 16'h5999;
    defparam add_95_31.INJECT1_0 = "NO";
    defparam add_95_31.INJECT1_1 = "NO";
    CCU2D add_95_29 (.A0(d9[27]), .B0(d_d9[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[28]), .B1(d_d9[28]), .C1(GND_net), .D1(GND_net), .CIN(n2887), 
          .COUT(n2888));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_29.INIT0 = 16'h5999;
    defparam add_95_29.INIT1 = 16'h5999;
    defparam add_95_29.INJECT1_0 = "NO";
    defparam add_95_29.INJECT1_1 = "NO";
    CCU2D add_95_27 (.A0(d9[25]), .B0(d_d9[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[26]), .B1(d_d9[26]), .C1(GND_net), .D1(GND_net), .CIN(n2886), 
          .COUT(n2887));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_27.INIT0 = 16'h5999;
    defparam add_95_27.INIT1 = 16'h5999;
    defparam add_95_27.INJECT1_0 = "NO";
    defparam add_95_27.INJECT1_1 = "NO";
    CCU2D add_95_25 (.A0(d9[23]), .B0(d_d9[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[24]), .B1(d_d9[24]), .C1(GND_net), .D1(GND_net), .CIN(n2885), 
          .COUT(n2886));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_25.INIT0 = 16'h5999;
    defparam add_95_25.INIT1 = 16'h5999;
    defparam add_95_25.INJECT1_0 = "NO";
    defparam add_95_25.INJECT1_1 = "NO";
    CCU2D add_95_23 (.A0(d9[21]), .B0(d_d9[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[22]), .B1(d_d9[22]), .C1(GND_net), .D1(GND_net), .CIN(n2884), 
          .COUT(n2885));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_23.INIT0 = 16'h5999;
    defparam add_95_23.INIT1 = 16'h5999;
    defparam add_95_23.INJECT1_0 = "NO";
    defparam add_95_23.INJECT1_1 = "NO";
    CCU2D add_95_21 (.A0(d9[19]), .B0(d_d9[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[20]), .B1(d_d9[20]), .C1(GND_net), .D1(GND_net), .CIN(n2883), 
          .COUT(n2884));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_21.INIT0 = 16'h5999;
    defparam add_95_21.INIT1 = 16'h5999;
    defparam add_95_21.INJECT1_0 = "NO";
    defparam add_95_21.INJECT1_1 = "NO";
    CCU2D add_95_19 (.A0(d9[17]), .B0(d_d9[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[18]), .B1(d_d9[18]), .C1(GND_net), .D1(GND_net), .CIN(n2882), 
          .COUT(n2883));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_19.INIT0 = 16'h5999;
    defparam add_95_19.INIT1 = 16'h5999;
    defparam add_95_19.INJECT1_0 = "NO";
    defparam add_95_19.INJECT1_1 = "NO";
    CCU2D add_95_17 (.A0(d9[15]), .B0(d_d9[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[16]), .B1(d_d9[16]), .C1(GND_net), .D1(GND_net), .CIN(n2881), 
          .COUT(n2882));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_17.INIT0 = 16'h5999;
    defparam add_95_17.INIT1 = 16'h5999;
    defparam add_95_17.INJECT1_0 = "NO";
    defparam add_95_17.INJECT1_1 = "NO";
    CCU2D add_95_15 (.A0(d9[13]), .B0(d_d9[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[14]), .B1(d_d9[14]), .C1(GND_net), .D1(GND_net), .CIN(n2880), 
          .COUT(n2881));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_15.INIT0 = 16'h5999;
    defparam add_95_15.INIT1 = 16'h5999;
    defparam add_95_15.INJECT1_0 = "NO";
    defparam add_95_15.INJECT1_1 = "NO";
    CCU2D add_95_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[12]), .B1(d_d9[12]), .C1(GND_net), .D1(GND_net), .CIN(n2879), 
          .COUT(n2880));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_13.INIT0 = 16'h5999;
    defparam add_95_13.INIT1 = 16'h5999;
    defparam add_95_13.INJECT1_0 = "NO";
    defparam add_95_13.INJECT1_1 = "NO";
    CCU2D add_95_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n2878), 
          .COUT(n2879));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_11.INIT0 = 16'h5999;
    defparam add_95_11.INIT1 = 16'h5999;
    defparam add_95_11.INJECT1_0 = "NO";
    defparam add_95_11.INJECT1_1 = "NO";
    CCU2D add_95_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n2877), 
          .COUT(n2878));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_9.INIT0 = 16'h5999;
    defparam add_95_9.INIT1 = 16'h5999;
    defparam add_95_9.INJECT1_0 = "NO";
    defparam add_95_9.INJECT1_1 = "NO";
    CCU2D add_95_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n2876), 
          .COUT(n2877));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_7.INIT0 = 16'h5999;
    defparam add_95_7.INIT1 = 16'h5999;
    defparam add_95_7.INJECT1_0 = "NO";
    defparam add_95_7.INJECT1_1 = "NO";
    CCU2D add_95_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n2875), 
          .COUT(n2876));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_5.INIT0 = 16'h5999;
    defparam add_95_5.INIT1 = 16'h5999;
    defparam add_95_5.INJECT1_0 = "NO";
    defparam add_95_5.INJECT1_1 = "NO";
    CCU2D add_95_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n2874), 
          .COUT(n2875));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_3.INIT0 = 16'h5999;
    defparam add_95_3.INIT1 = 16'h5999;
    defparam add_95_3.INJECT1_0 = "NO";
    defparam add_95_3.INJECT1_1 = "NO";
    CCU2D add_95_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n2874));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam add_95_1.INIT0 = 16'h0000;
    defparam add_95_1.INIT1 = 16'h5999;
    defparam add_95_1.INJECT1_0 = "NO";
    defparam add_95_1.INJECT1_1 = "NO";
    CCU2D add_101_37 (.A0(d8[72]), .B0(d_d8[72]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[73]), .B1(d_d8[73]), .C1(GND_net), .D1(GND_net), .CIN(n2872), 
          .S0(n1482[35]), .S1(n1482[36]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_37.INIT0 = 16'h5999;
    defparam add_101_37.INIT1 = 16'h5999;
    defparam add_101_37.INJECT1_0 = "NO";
    defparam add_101_37.INJECT1_1 = "NO";
    CCU2D add_101_35 (.A0(d8[70]), .B0(d_d8[70]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[71]), .B1(d_d8[71]), .C1(GND_net), .D1(GND_net), .CIN(n2871), 
          .COUT(n2872), .S0(n1482[33]), .S1(n1482[34]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_35.INIT0 = 16'h5999;
    defparam add_101_35.INIT1 = 16'h5999;
    defparam add_101_35.INJECT1_0 = "NO";
    defparam add_101_35.INJECT1_1 = "NO";
    CCU2D add_101_33 (.A0(d8[68]), .B0(d_d8[68]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[69]), .B1(d_d8[69]), .C1(GND_net), .D1(GND_net), .CIN(n2870), 
          .COUT(n2871), .S0(n1482[31]), .S1(n1482[32]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_33.INIT0 = 16'h5999;
    defparam add_101_33.INIT1 = 16'h5999;
    defparam add_101_33.INJECT1_0 = "NO";
    defparam add_101_33.INJECT1_1 = "NO";
    CCU2D add_101_31 (.A0(d8[66]), .B0(d_d8[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[67]), .B1(d_d8[67]), .C1(GND_net), .D1(GND_net), .CIN(n2869), 
          .COUT(n2870), .S0(n1482[29]), .S1(n1482[30]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_31.INIT0 = 16'h5999;
    defparam add_101_31.INIT1 = 16'h5999;
    defparam add_101_31.INJECT1_0 = "NO";
    defparam add_101_31.INJECT1_1 = "NO";
    CCU2D add_101_29 (.A0(d8[64]), .B0(d_d8[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[65]), .B1(d_d8[65]), .C1(GND_net), .D1(GND_net), .CIN(n2868), 
          .COUT(n2869), .S0(n1482[27]), .S1(n1482[28]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_29.INIT0 = 16'h5999;
    defparam add_101_29.INIT1 = 16'h5999;
    defparam add_101_29.INJECT1_0 = "NO";
    defparam add_101_29.INJECT1_1 = "NO";
    CCU2D add_101_27 (.A0(d8[62]), .B0(d_d8[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[63]), .B1(d_d8[63]), .C1(GND_net), .D1(GND_net), .CIN(n2867), 
          .COUT(n2868), .S0(n1482[25]), .S1(n1482[26]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_27.INIT0 = 16'h5999;
    defparam add_101_27.INIT1 = 16'h5999;
    defparam add_101_27.INJECT1_0 = "NO";
    defparam add_101_27.INJECT1_1 = "NO";
    CCU2D add_101_25 (.A0(d8[60]), .B0(d_d8[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[61]), .B1(d_d8[61]), .C1(GND_net), .D1(GND_net), .CIN(n2866), 
          .COUT(n2867), .S0(n1482[23]), .S1(n1482[24]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_25.INIT0 = 16'h5999;
    defparam add_101_25.INIT1 = 16'h5999;
    defparam add_101_25.INJECT1_0 = "NO";
    defparam add_101_25.INJECT1_1 = "NO";
    CCU2D add_101_23 (.A0(d8[58]), .B0(d_d8[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[59]), .B1(d_d8[59]), .C1(GND_net), .D1(GND_net), .CIN(n2865), 
          .COUT(n2866), .S0(n1482[21]), .S1(n1482[22]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_23.INIT0 = 16'h5999;
    defparam add_101_23.INIT1 = 16'h5999;
    defparam add_101_23.INJECT1_0 = "NO";
    defparam add_101_23.INJECT1_1 = "NO";
    CCU2D add_101_21 (.A0(d8[56]), .B0(d_d8[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[57]), .B1(d_d8[57]), .C1(GND_net), .D1(GND_net), .CIN(n2864), 
          .COUT(n2865), .S0(n1482[19]), .S1(n1482[20]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_21.INIT0 = 16'h5999;
    defparam add_101_21.INIT1 = 16'h5999;
    defparam add_101_21.INJECT1_0 = "NO";
    defparam add_101_21.INJECT1_1 = "NO";
    CCU2D add_101_19 (.A0(d8[54]), .B0(d_d8[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[55]), .B1(d_d8[55]), .C1(GND_net), .D1(GND_net), .CIN(n2863), 
          .COUT(n2864), .S0(n1482[17]), .S1(n1482[18]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_19.INIT0 = 16'h5999;
    defparam add_101_19.INIT1 = 16'h5999;
    defparam add_101_19.INJECT1_0 = "NO";
    defparam add_101_19.INJECT1_1 = "NO";
    CCU2D add_101_17 (.A0(d8[52]), .B0(d_d8[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[53]), .B1(d_d8[53]), .C1(GND_net), .D1(GND_net), .CIN(n2862), 
          .COUT(n2863), .S0(n1482[15]), .S1(n1482[16]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_17.INIT0 = 16'h5999;
    defparam add_101_17.INIT1 = 16'h5999;
    defparam add_101_17.INJECT1_0 = "NO";
    defparam add_101_17.INJECT1_1 = "NO";
    CCU2D add_101_15 (.A0(d8[50]), .B0(d_d8[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[51]), .B1(d_d8[51]), .C1(GND_net), .D1(GND_net), .CIN(n2861), 
          .COUT(n2862), .S0(n1482[13]), .S1(n1482[14]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_15.INIT0 = 16'h5999;
    defparam add_101_15.INIT1 = 16'h5999;
    defparam add_101_15.INJECT1_0 = "NO";
    defparam add_101_15.INJECT1_1 = "NO";
    CCU2D add_101_13 (.A0(d8[48]), .B0(d_d8[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[49]), .B1(d_d8[49]), .C1(GND_net), .D1(GND_net), .CIN(n2860), 
          .COUT(n2861), .S0(n1482[11]), .S1(n1482[12]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_13.INIT0 = 16'h5999;
    defparam add_101_13.INIT1 = 16'h5999;
    defparam add_101_13.INJECT1_0 = "NO";
    defparam add_101_13.INJECT1_1 = "NO";
    CCU2D add_101_11 (.A0(d8[46]), .B0(d_d8[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[47]), .B1(d_d8[47]), .C1(GND_net), .D1(GND_net), .CIN(n2859), 
          .COUT(n2860), .S0(n1482[9]), .S1(n1482[10]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_11.INIT0 = 16'h5999;
    defparam add_101_11.INIT1 = 16'h5999;
    defparam add_101_11.INJECT1_0 = "NO";
    defparam add_101_11.INJECT1_1 = "NO";
    CCU2D add_101_9 (.A0(d8[44]), .B0(d_d8[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[45]), .B1(d_d8[45]), .C1(GND_net), .D1(GND_net), .CIN(n2858), 
          .COUT(n2859), .S0(n1482[7]), .S1(n1482[8]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_9.INIT0 = 16'h5999;
    defparam add_101_9.INIT1 = 16'h5999;
    defparam add_101_9.INJECT1_0 = "NO";
    defparam add_101_9.INJECT1_1 = "NO";
    CCU2D add_101_7 (.A0(d8[42]), .B0(d_d8[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[43]), .B1(d_d8[43]), .C1(GND_net), .D1(GND_net), .CIN(n2857), 
          .COUT(n2858), .S0(n1482[5]), .S1(n1482[6]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_7.INIT0 = 16'h5999;
    defparam add_101_7.INIT1 = 16'h5999;
    defparam add_101_7.INJECT1_0 = "NO";
    defparam add_101_7.INJECT1_1 = "NO";
    CCU2D add_101_5 (.A0(d8[40]), .B0(d_d8[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[41]), .B1(d_d8[41]), .C1(GND_net), .D1(GND_net), .CIN(n2856), 
          .COUT(n2857), .S0(n1482[3]), .S1(n1482[4]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_5.INIT0 = 16'h5999;
    defparam add_101_5.INIT1 = 16'h5999;
    defparam add_101_5.INJECT1_0 = "NO";
    defparam add_101_5.INJECT1_1 = "NO";
    FD1S3AX d2_i2 (.D(d2_73__N_1383[2]), .CK(osc_clk), .Q(d2[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i2.GSR = "ENABLED";
    FD1S3AX d2_i3 (.D(d2_73__N_1383[3]), .CK(osc_clk), .Q(d2[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i3.GSR = "ENABLED";
    FD1S3AX d2_i4 (.D(d2_73__N_1383[4]), .CK(osc_clk), .Q(d2[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i4.GSR = "ENABLED";
    FD1S3AX d2_i5 (.D(d2_73__N_1383[5]), .CK(osc_clk), .Q(d2[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i5.GSR = "ENABLED";
    FD1S3AX d2_i6 (.D(d2_73__N_1383[6]), .CK(osc_clk), .Q(d2[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i6.GSR = "ENABLED";
    FD1S3AX d2_i7 (.D(d2_73__N_1383[7]), .CK(osc_clk), .Q(d2[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i7.GSR = "ENABLED";
    FD1S3AX d2_i8 (.D(d2_73__N_1383[8]), .CK(osc_clk), .Q(d2[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i8.GSR = "ENABLED";
    FD1S3AX d2_i9 (.D(d2_73__N_1383[9]), .CK(osc_clk), .Q(d2[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i9.GSR = "ENABLED";
    FD1S3AX d2_i10 (.D(d2_73__N_1383[10]), .CK(osc_clk), .Q(d2[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i10.GSR = "ENABLED";
    FD1S3AX d2_i11 (.D(d2_73__N_1383[11]), .CK(osc_clk), .Q(d2[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i11.GSR = "ENABLED";
    FD1S3AX d2_i12 (.D(d2_73__N_1383[12]), .CK(osc_clk), .Q(d2[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i12.GSR = "ENABLED";
    FD1S3AX d2_i13 (.D(d2_73__N_1383[13]), .CK(osc_clk), .Q(d2[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i13.GSR = "ENABLED";
    FD1S3AX d2_i14 (.D(d2_73__N_1383[14]), .CK(osc_clk), .Q(d2[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i14.GSR = "ENABLED";
    FD1S3AX d2_i15 (.D(d2_73__N_1383[15]), .CK(osc_clk), .Q(d2[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i15.GSR = "ENABLED";
    FD1S3AX d2_i16 (.D(d2_73__N_1383[16]), .CK(osc_clk), .Q(d2[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i16.GSR = "ENABLED";
    FD1S3AX d2_i17 (.D(d2_73__N_1383[17]), .CK(osc_clk), .Q(d2[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i17.GSR = "ENABLED";
    FD1S3AX d2_i18 (.D(d2_73__N_1383[18]), .CK(osc_clk), .Q(d2[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i18.GSR = "ENABLED";
    FD1S3AX d2_i19 (.D(d2_73__N_1383[19]), .CK(osc_clk), .Q(d2[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i19.GSR = "ENABLED";
    FD1S3AX d2_i20 (.D(d2_73__N_1383[20]), .CK(osc_clk), .Q(d2[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i20.GSR = "ENABLED";
    FD1S3AX d2_i21 (.D(d2_73__N_1383[21]), .CK(osc_clk), .Q(d2[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i21.GSR = "ENABLED";
    FD1S3AX d2_i22 (.D(d2_73__N_1383[22]), .CK(osc_clk), .Q(d2[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i22.GSR = "ENABLED";
    FD1S3AX d2_i23 (.D(d2_73__N_1383[23]), .CK(osc_clk), .Q(d2[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i23.GSR = "ENABLED";
    FD1S3AX d2_i24 (.D(d2_73__N_1383[24]), .CK(osc_clk), .Q(d2[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i24.GSR = "ENABLED";
    FD1S3AX d2_i25 (.D(d2_73__N_1383[25]), .CK(osc_clk), .Q(d2[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i25.GSR = "ENABLED";
    FD1S3AX d2_i26 (.D(d2_73__N_1383[26]), .CK(osc_clk), .Q(d2[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i26.GSR = "ENABLED";
    FD1S3AX d2_i27 (.D(d2_73__N_1383[27]), .CK(osc_clk), .Q(d2[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i27.GSR = "ENABLED";
    FD1S3AX d2_i28 (.D(d2_73__N_1383[28]), .CK(osc_clk), .Q(d2[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i28.GSR = "ENABLED";
    FD1S3AX d2_i29 (.D(d2_73__N_1383[29]), .CK(osc_clk), .Q(d2[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i29.GSR = "ENABLED";
    FD1S3AX d2_i30 (.D(d2_73__N_1383[30]), .CK(osc_clk), .Q(d2[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i30.GSR = "ENABLED";
    FD1S3AX d2_i31 (.D(d2_73__N_1383[31]), .CK(osc_clk), .Q(d2[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i31.GSR = "ENABLED";
    FD1S3AX d2_i32 (.D(d2_73__N_1383[32]), .CK(osc_clk), .Q(d2[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i32.GSR = "ENABLED";
    FD1S3AX d2_i33 (.D(d2_73__N_1383[33]), .CK(osc_clk), .Q(d2[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i33.GSR = "ENABLED";
    FD1S3AX d2_i34 (.D(d2_73__N_1383[34]), .CK(osc_clk), .Q(d2[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i34.GSR = "ENABLED";
    FD1S3AX d2_i35 (.D(d2_73__N_1383[35]), .CK(osc_clk), .Q(d2[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i35.GSR = "ENABLED";
    FD1S3AX d2_i36 (.D(d2_73__N_1383[36]), .CK(osc_clk), .Q(d2[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i36.GSR = "ENABLED";
    FD1S3AX d2_i37 (.D(d2_73__N_1383[37]), .CK(osc_clk), .Q(d2[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i37.GSR = "ENABLED";
    FD1S3AX d2_i38 (.D(d2_73__N_1383[38]), .CK(osc_clk), .Q(d2[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i38.GSR = "ENABLED";
    FD1S3AX d2_i39 (.D(d2_73__N_1383[39]), .CK(osc_clk), .Q(d2[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i39.GSR = "ENABLED";
    FD1S3AX d2_i40 (.D(d2_73__N_1383[40]), .CK(osc_clk), .Q(d2[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i40.GSR = "ENABLED";
    FD1S3AX d2_i41 (.D(d2_73__N_1383[41]), .CK(osc_clk), .Q(d2[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i41.GSR = "ENABLED";
    FD1S3AX d2_i42 (.D(d2_73__N_1383[42]), .CK(osc_clk), .Q(d2[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i42.GSR = "ENABLED";
    FD1S3AX d2_i43 (.D(d2_73__N_1383[43]), .CK(osc_clk), .Q(d2[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i43.GSR = "ENABLED";
    FD1S3AX d2_i44 (.D(d2_73__N_1383[44]), .CK(osc_clk), .Q(d2[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i44.GSR = "ENABLED";
    FD1S3AX d2_i45 (.D(d2_73__N_1383[45]), .CK(osc_clk), .Q(d2[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i45.GSR = "ENABLED";
    FD1S3AX d2_i46 (.D(d2_73__N_1383[46]), .CK(osc_clk), .Q(d2[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i46.GSR = "ENABLED";
    FD1S3AX d2_i47 (.D(d2_73__N_1383[47]), .CK(osc_clk), .Q(d2[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i47.GSR = "ENABLED";
    FD1S3AX d2_i48 (.D(d2_73__N_1383[48]), .CK(osc_clk), .Q(d2[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i48.GSR = "ENABLED";
    FD1S3AX d2_i49 (.D(d2_73__N_1383[49]), .CK(osc_clk), .Q(d2[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i49.GSR = "ENABLED";
    FD1S3AX d2_i50 (.D(d2_73__N_1383[50]), .CK(osc_clk), .Q(d2[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i50.GSR = "ENABLED";
    FD1S3AX d2_i51 (.D(d2_73__N_1383[51]), .CK(osc_clk), .Q(d2[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i51.GSR = "ENABLED";
    FD1S3AX d2_i52 (.D(d2_73__N_1383[52]), .CK(osc_clk), .Q(d2[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i52.GSR = "ENABLED";
    FD1S3AX d2_i53 (.D(d2_73__N_1383[53]), .CK(osc_clk), .Q(d2[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i53.GSR = "ENABLED";
    FD1S3AX d2_i54 (.D(d2_73__N_1383[54]), .CK(osc_clk), .Q(d2[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i54.GSR = "ENABLED";
    FD1S3AX d2_i55 (.D(d2_73__N_1383[55]), .CK(osc_clk), .Q(d2[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i55.GSR = "ENABLED";
    FD1S3AX d2_i56 (.D(d2_73__N_1383[56]), .CK(osc_clk), .Q(d2[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i56.GSR = "ENABLED";
    FD1S3AX d2_i57 (.D(d2_73__N_1383[57]), .CK(osc_clk), .Q(d2[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i57.GSR = "ENABLED";
    FD1S3AX d2_i58 (.D(d2_73__N_1383[58]), .CK(osc_clk), .Q(d2[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i58.GSR = "ENABLED";
    FD1S3AX d2_i59 (.D(d2_73__N_1383[59]), .CK(osc_clk), .Q(d2[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i59.GSR = "ENABLED";
    FD1S3AX d2_i60 (.D(d2_73__N_1383[60]), .CK(osc_clk), .Q(d2[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i60.GSR = "ENABLED";
    FD1S3AX d2_i61 (.D(d2_73__N_1383[61]), .CK(osc_clk), .Q(d2[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i61.GSR = "ENABLED";
    FD1S3AX d2_i62 (.D(d2_73__N_1383[62]), .CK(osc_clk), .Q(d2[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i62.GSR = "ENABLED";
    FD1S3AX d2_i63 (.D(d2_73__N_1383[63]), .CK(osc_clk), .Q(d2[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i63.GSR = "ENABLED";
    FD1S3AX d2_i64 (.D(d2_73__N_1383[64]), .CK(osc_clk), .Q(d2[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i64.GSR = "ENABLED";
    FD1S3AX d2_i65 (.D(d2_73__N_1383[65]), .CK(osc_clk), .Q(d2[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i65.GSR = "ENABLED";
    FD1S3AX d2_i66 (.D(d2_73__N_1383[66]), .CK(osc_clk), .Q(d2[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i66.GSR = "ENABLED";
    FD1S3AX d2_i67 (.D(d2_73__N_1383[67]), .CK(osc_clk), .Q(d2[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i67.GSR = "ENABLED";
    FD1S3AX d2_i68 (.D(d2_73__N_1383[68]), .CK(osc_clk), .Q(d2[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i68.GSR = "ENABLED";
    FD1S3AX d2_i69 (.D(d2_73__N_1383[69]), .CK(osc_clk), .Q(d2[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i69.GSR = "ENABLED";
    FD1S3AX d2_i70 (.D(d2_73__N_1383[70]), .CK(osc_clk), .Q(d2[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i70.GSR = "ENABLED";
    FD1S3AX d2_i71 (.D(d2_73__N_1383[71]), .CK(osc_clk), .Q(d2[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i71.GSR = "ENABLED";
    FD1S3AX d2_i72 (.D(d2_73__N_1383[72]), .CK(osc_clk), .Q(d2[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i72.GSR = "ENABLED";
    FD1S3AX d2_i73 (.D(d2_73__N_1383[73]), .CK(osc_clk), .Q(d2[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i73.GSR = "ENABLED";
    FD1S3AX d3_i1 (.D(d3_73__N_1457[1]), .CK(osc_clk), .Q(d3[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i1.GSR = "ENABLED";
    FD1S3AX d3_i2 (.D(d3_73__N_1457[2]), .CK(osc_clk), .Q(d3[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i2.GSR = "ENABLED";
    FD1S3AX d3_i3 (.D(d3_73__N_1457[3]), .CK(osc_clk), .Q(d3[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i3.GSR = "ENABLED";
    FD1S3AX d3_i4 (.D(d3_73__N_1457[4]), .CK(osc_clk), .Q(d3[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i4.GSR = "ENABLED";
    FD1S3AX d3_i5 (.D(d3_73__N_1457[5]), .CK(osc_clk), .Q(d3[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i5.GSR = "ENABLED";
    FD1S3AX d3_i6 (.D(d3_73__N_1457[6]), .CK(osc_clk), .Q(d3[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i6.GSR = "ENABLED";
    FD1S3AX d3_i7 (.D(d3_73__N_1457[7]), .CK(osc_clk), .Q(d3[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i7.GSR = "ENABLED";
    FD1S3AX d3_i8 (.D(d3_73__N_1457[8]), .CK(osc_clk), .Q(d3[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i8.GSR = "ENABLED";
    FD1S3AX d3_i9 (.D(d3_73__N_1457[9]), .CK(osc_clk), .Q(d3[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i9.GSR = "ENABLED";
    FD1S3AX d3_i10 (.D(d3_73__N_1457[10]), .CK(osc_clk), .Q(d3[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i10.GSR = "ENABLED";
    FD1S3AX d3_i11 (.D(d3_73__N_1457[11]), .CK(osc_clk), .Q(d3[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i11.GSR = "ENABLED";
    FD1S3AX d3_i12 (.D(d3_73__N_1457[12]), .CK(osc_clk), .Q(d3[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i12.GSR = "ENABLED";
    FD1S3AX d3_i13 (.D(d3_73__N_1457[13]), .CK(osc_clk), .Q(d3[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i13.GSR = "ENABLED";
    FD1S3AX d3_i14 (.D(d3_73__N_1457[14]), .CK(osc_clk), .Q(d3[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i14.GSR = "ENABLED";
    FD1S3AX d3_i15 (.D(d3_73__N_1457[15]), .CK(osc_clk), .Q(d3[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i15.GSR = "ENABLED";
    FD1S3AX d3_i16 (.D(d3_73__N_1457[16]), .CK(osc_clk), .Q(d3[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i16.GSR = "ENABLED";
    FD1S3AX d3_i17 (.D(d3_73__N_1457[17]), .CK(osc_clk), .Q(d3[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i17.GSR = "ENABLED";
    FD1S3AX d3_i18 (.D(d3_73__N_1457[18]), .CK(osc_clk), .Q(d3[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i18.GSR = "ENABLED";
    FD1S3AX d3_i19 (.D(d3_73__N_1457[19]), .CK(osc_clk), .Q(d3[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i19.GSR = "ENABLED";
    FD1S3AX d3_i20 (.D(d3_73__N_1457[20]), .CK(osc_clk), .Q(d3[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i20.GSR = "ENABLED";
    FD1S3AX d3_i21 (.D(d3_73__N_1457[21]), .CK(osc_clk), .Q(d3[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i21.GSR = "ENABLED";
    FD1S3AX d3_i22 (.D(d3_73__N_1457[22]), .CK(osc_clk), .Q(d3[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i22.GSR = "ENABLED";
    FD1S3AX d3_i23 (.D(d3_73__N_1457[23]), .CK(osc_clk), .Q(d3[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i23.GSR = "ENABLED";
    FD1S3AX d3_i24 (.D(d3_73__N_1457[24]), .CK(osc_clk), .Q(d3[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i24.GSR = "ENABLED";
    FD1S3AX d3_i25 (.D(d3_73__N_1457[25]), .CK(osc_clk), .Q(d3[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i25.GSR = "ENABLED";
    FD1S3AX d3_i26 (.D(d3_73__N_1457[26]), .CK(osc_clk), .Q(d3[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i26.GSR = "ENABLED";
    FD1S3AX d3_i27 (.D(d3_73__N_1457[27]), .CK(osc_clk), .Q(d3[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i27.GSR = "ENABLED";
    FD1S3AX d3_i28 (.D(d3_73__N_1457[28]), .CK(osc_clk), .Q(d3[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i28.GSR = "ENABLED";
    FD1S3AX d3_i29 (.D(d3_73__N_1457[29]), .CK(osc_clk), .Q(d3[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i29.GSR = "ENABLED";
    FD1S3AX d3_i30 (.D(d3_73__N_1457[30]), .CK(osc_clk), .Q(d3[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i30.GSR = "ENABLED";
    FD1S3AX d3_i31 (.D(d3_73__N_1457[31]), .CK(osc_clk), .Q(d3[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i31.GSR = "ENABLED";
    FD1S3AX d3_i32 (.D(d3_73__N_1457[32]), .CK(osc_clk), .Q(d3[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i32.GSR = "ENABLED";
    FD1S3AX d3_i33 (.D(d3_73__N_1457[33]), .CK(osc_clk), .Q(d3[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i33.GSR = "ENABLED";
    FD1S3AX d3_i34 (.D(d3_73__N_1457[34]), .CK(osc_clk), .Q(d3[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i34.GSR = "ENABLED";
    FD1S3AX d3_i35 (.D(d3_73__N_1457[35]), .CK(osc_clk), .Q(d3[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i35.GSR = "ENABLED";
    FD1S3AX d3_i36 (.D(d3_73__N_1457[36]), .CK(osc_clk), .Q(d3[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i36.GSR = "ENABLED";
    FD1S3AX d3_i37 (.D(d3_73__N_1457[37]), .CK(osc_clk), .Q(d3[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i37.GSR = "ENABLED";
    FD1S3AX d3_i38 (.D(d3_73__N_1457[38]), .CK(osc_clk), .Q(d3[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i38.GSR = "ENABLED";
    FD1S3AX d3_i39 (.D(d3_73__N_1457[39]), .CK(osc_clk), .Q(d3[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i39.GSR = "ENABLED";
    FD1S3AX d3_i40 (.D(d3_73__N_1457[40]), .CK(osc_clk), .Q(d3[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i40.GSR = "ENABLED";
    FD1S3AX d3_i41 (.D(d3_73__N_1457[41]), .CK(osc_clk), .Q(d3[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i41.GSR = "ENABLED";
    FD1S3AX d3_i42 (.D(d3_73__N_1457[42]), .CK(osc_clk), .Q(d3[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i42.GSR = "ENABLED";
    FD1S3AX d3_i43 (.D(d3_73__N_1457[43]), .CK(osc_clk), .Q(d3[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i43.GSR = "ENABLED";
    FD1S3AX d3_i44 (.D(d3_73__N_1457[44]), .CK(osc_clk), .Q(d3[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i44.GSR = "ENABLED";
    FD1S3AX d3_i45 (.D(d3_73__N_1457[45]), .CK(osc_clk), .Q(d3[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i45.GSR = "ENABLED";
    FD1S3AX d3_i46 (.D(d3_73__N_1457[46]), .CK(osc_clk), .Q(d3[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i46.GSR = "ENABLED";
    FD1S3AX d3_i47 (.D(d3_73__N_1457[47]), .CK(osc_clk), .Q(d3[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i47.GSR = "ENABLED";
    FD1S3AX d3_i48 (.D(d3_73__N_1457[48]), .CK(osc_clk), .Q(d3[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i48.GSR = "ENABLED";
    FD1S3AX d3_i49 (.D(d3_73__N_1457[49]), .CK(osc_clk), .Q(d3[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i49.GSR = "ENABLED";
    FD1S3AX d3_i50 (.D(d3_73__N_1457[50]), .CK(osc_clk), .Q(d3[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i50.GSR = "ENABLED";
    FD1S3AX d3_i51 (.D(d3_73__N_1457[51]), .CK(osc_clk), .Q(d3[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i51.GSR = "ENABLED";
    FD1S3AX d3_i52 (.D(d3_73__N_1457[52]), .CK(osc_clk), .Q(d3[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i52.GSR = "ENABLED";
    FD1S3AX d3_i53 (.D(d3_73__N_1457[53]), .CK(osc_clk), .Q(d3[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i53.GSR = "ENABLED";
    FD1S3AX d3_i54 (.D(d3_73__N_1457[54]), .CK(osc_clk), .Q(d3[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i54.GSR = "ENABLED";
    FD1S3AX d3_i55 (.D(d3_73__N_1457[55]), .CK(osc_clk), .Q(d3[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i55.GSR = "ENABLED";
    FD1S3AX d3_i56 (.D(d3_73__N_1457[56]), .CK(osc_clk), .Q(d3[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i56.GSR = "ENABLED";
    FD1S3AX d3_i57 (.D(d3_73__N_1457[57]), .CK(osc_clk), .Q(d3[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i57.GSR = "ENABLED";
    FD1S3AX d3_i58 (.D(d3_73__N_1457[58]), .CK(osc_clk), .Q(d3[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i58.GSR = "ENABLED";
    FD1S3AX d3_i59 (.D(d3_73__N_1457[59]), .CK(osc_clk), .Q(d3[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i59.GSR = "ENABLED";
    FD1S3AX d3_i60 (.D(d3_73__N_1457[60]), .CK(osc_clk), .Q(d3[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i60.GSR = "ENABLED";
    FD1S3AX d3_i61 (.D(d3_73__N_1457[61]), .CK(osc_clk), .Q(d3[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i61.GSR = "ENABLED";
    FD1S3AX d3_i62 (.D(d3_73__N_1457[62]), .CK(osc_clk), .Q(d3[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i62.GSR = "ENABLED";
    FD1S3AX d3_i63 (.D(d3_73__N_1457[63]), .CK(osc_clk), .Q(d3[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i63.GSR = "ENABLED";
    FD1S3AX d3_i64 (.D(d3_73__N_1457[64]), .CK(osc_clk), .Q(d3[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i64.GSR = "ENABLED";
    FD1S3AX d3_i65 (.D(d3_73__N_1457[65]), .CK(osc_clk), .Q(d3[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i65.GSR = "ENABLED";
    FD1S3AX d3_i66 (.D(d3_73__N_1457[66]), .CK(osc_clk), .Q(d3[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i66.GSR = "ENABLED";
    FD1S3AX d3_i67 (.D(d3_73__N_1457[67]), .CK(osc_clk), .Q(d3[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i67.GSR = "ENABLED";
    FD1S3AX d3_i68 (.D(d3_73__N_1457[68]), .CK(osc_clk), .Q(d3[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i68.GSR = "ENABLED";
    FD1S3AX d3_i69 (.D(d3_73__N_1457[69]), .CK(osc_clk), .Q(d3[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i69.GSR = "ENABLED";
    FD1S3AX d3_i70 (.D(d3_73__N_1457[70]), .CK(osc_clk), .Q(d3[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i70.GSR = "ENABLED";
    FD1S3AX d3_i71 (.D(d3_73__N_1457[71]), .CK(osc_clk), .Q(d3[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i71.GSR = "ENABLED";
    FD1S3AX d3_i72 (.D(d3_73__N_1457[72]), .CK(osc_clk), .Q(d3[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i72.GSR = "ENABLED";
    FD1S3AX d3_i73 (.D(d3_73__N_1457[73]), .CK(osc_clk), .Q(d3[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i73.GSR = "ENABLED";
    FD1S3AX d4_i1 (.D(d4_73__N_1531[1]), .CK(osc_clk), .Q(d4[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i1.GSR = "ENABLED";
    FD1S3AX d4_i2 (.D(d4_73__N_1531[2]), .CK(osc_clk), .Q(d4[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i2.GSR = "ENABLED";
    FD1S3AX d4_i3 (.D(d4_73__N_1531[3]), .CK(osc_clk), .Q(d4[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i3.GSR = "ENABLED";
    FD1S3AX d4_i4 (.D(d4_73__N_1531[4]), .CK(osc_clk), .Q(d4[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i4.GSR = "ENABLED";
    FD1S3AX d4_i5 (.D(d4_73__N_1531[5]), .CK(osc_clk), .Q(d4[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i5.GSR = "ENABLED";
    FD1S3AX d4_i6 (.D(d4_73__N_1531[6]), .CK(osc_clk), .Q(d4[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i6.GSR = "ENABLED";
    FD1S3AX d4_i7 (.D(d4_73__N_1531[7]), .CK(osc_clk), .Q(d4[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i7.GSR = "ENABLED";
    FD1S3AX d4_i8 (.D(d4_73__N_1531[8]), .CK(osc_clk), .Q(d4[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i8.GSR = "ENABLED";
    FD1S3AX d4_i9 (.D(d4_73__N_1531[9]), .CK(osc_clk), .Q(d4[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i9.GSR = "ENABLED";
    FD1S3AX d4_i10 (.D(d4_73__N_1531[10]), .CK(osc_clk), .Q(d4[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i10.GSR = "ENABLED";
    FD1S3AX d4_i11 (.D(d4_73__N_1531[11]), .CK(osc_clk), .Q(d4[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i11.GSR = "ENABLED";
    FD1S3AX d4_i12 (.D(d4_73__N_1531[12]), .CK(osc_clk), .Q(d4[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i12.GSR = "ENABLED";
    FD1S3AX d4_i13 (.D(d4_73__N_1531[13]), .CK(osc_clk), .Q(d4[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i13.GSR = "ENABLED";
    FD1S3AX d4_i14 (.D(d4_73__N_1531[14]), .CK(osc_clk), .Q(d4[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i14.GSR = "ENABLED";
    FD1S3AX d4_i15 (.D(d4_73__N_1531[15]), .CK(osc_clk), .Q(d4[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i15.GSR = "ENABLED";
    FD1S3AX d4_i16 (.D(d4_73__N_1531[16]), .CK(osc_clk), .Q(d4[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i16.GSR = "ENABLED";
    FD1S3AX d4_i17 (.D(d4_73__N_1531[17]), .CK(osc_clk), .Q(d4[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i17.GSR = "ENABLED";
    FD1S3AX d4_i18 (.D(d4_73__N_1531[18]), .CK(osc_clk), .Q(d4[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i18.GSR = "ENABLED";
    FD1S3AX d4_i19 (.D(d4_73__N_1531[19]), .CK(osc_clk), .Q(d4[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i19.GSR = "ENABLED";
    FD1S3AX d4_i20 (.D(d4_73__N_1531[20]), .CK(osc_clk), .Q(d4[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i20.GSR = "ENABLED";
    FD1S3AX d4_i21 (.D(d4_73__N_1531[21]), .CK(osc_clk), .Q(d4[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i21.GSR = "ENABLED";
    FD1S3AX d4_i22 (.D(d4_73__N_1531[22]), .CK(osc_clk), .Q(d4[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i22.GSR = "ENABLED";
    FD1S3AX d4_i23 (.D(d4_73__N_1531[23]), .CK(osc_clk), .Q(d4[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i23.GSR = "ENABLED";
    FD1S3AX d4_i24 (.D(d4_73__N_1531[24]), .CK(osc_clk), .Q(d4[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i24.GSR = "ENABLED";
    FD1S3AX d4_i25 (.D(d4_73__N_1531[25]), .CK(osc_clk), .Q(d4[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i25.GSR = "ENABLED";
    FD1S3AX d4_i26 (.D(d4_73__N_1531[26]), .CK(osc_clk), .Q(d4[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i26.GSR = "ENABLED";
    FD1S3AX d4_i27 (.D(d4_73__N_1531[27]), .CK(osc_clk), .Q(d4[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i27.GSR = "ENABLED";
    FD1S3AX d4_i28 (.D(d4_73__N_1531[28]), .CK(osc_clk), .Q(d4[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i28.GSR = "ENABLED";
    FD1S3AX d4_i29 (.D(d4_73__N_1531[29]), .CK(osc_clk), .Q(d4[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i29.GSR = "ENABLED";
    FD1S3AX d4_i30 (.D(d4_73__N_1531[30]), .CK(osc_clk), .Q(d4[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i30.GSR = "ENABLED";
    FD1S3AX d4_i31 (.D(d4_73__N_1531[31]), .CK(osc_clk), .Q(d4[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i31.GSR = "ENABLED";
    FD1S3AX d4_i32 (.D(d4_73__N_1531[32]), .CK(osc_clk), .Q(d4[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i32.GSR = "ENABLED";
    FD1S3AX d4_i33 (.D(d4_73__N_1531[33]), .CK(osc_clk), .Q(d4[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i33.GSR = "ENABLED";
    FD1S3AX d4_i34 (.D(d4_73__N_1531[34]), .CK(osc_clk), .Q(d4[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i34.GSR = "ENABLED";
    FD1S3AX d4_i35 (.D(d4_73__N_1531[35]), .CK(osc_clk), .Q(d4[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i35.GSR = "ENABLED";
    FD1S3AX d4_i36 (.D(d4_73__N_1531[36]), .CK(osc_clk), .Q(d4[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i36.GSR = "ENABLED";
    FD1S3AX d4_i37 (.D(d4_73__N_1531[37]), .CK(osc_clk), .Q(d4[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i37.GSR = "ENABLED";
    FD1S3AX d4_i38 (.D(d4_73__N_1531[38]), .CK(osc_clk), .Q(d4[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i38.GSR = "ENABLED";
    FD1S3AX d4_i39 (.D(d4_73__N_1531[39]), .CK(osc_clk), .Q(d4[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i39.GSR = "ENABLED";
    FD1S3AX d4_i40 (.D(d4_73__N_1531[40]), .CK(osc_clk), .Q(d4[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i40.GSR = "ENABLED";
    FD1S3AX d4_i41 (.D(d4_73__N_1531[41]), .CK(osc_clk), .Q(d4[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i41.GSR = "ENABLED";
    FD1S3AX d4_i42 (.D(d4_73__N_1531[42]), .CK(osc_clk), .Q(d4[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i42.GSR = "ENABLED";
    FD1S3AX d4_i43 (.D(d4_73__N_1531[43]), .CK(osc_clk), .Q(d4[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i43.GSR = "ENABLED";
    FD1S3AX d4_i44 (.D(d4_73__N_1531[44]), .CK(osc_clk), .Q(d4[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i44.GSR = "ENABLED";
    FD1S3AX d4_i45 (.D(d4_73__N_1531[45]), .CK(osc_clk), .Q(d4[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i45.GSR = "ENABLED";
    FD1S3AX d4_i46 (.D(d4_73__N_1531[46]), .CK(osc_clk), .Q(d4[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i46.GSR = "ENABLED";
    FD1S3AX d4_i47 (.D(d4_73__N_1531[47]), .CK(osc_clk), .Q(d4[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i47.GSR = "ENABLED";
    FD1S3AX d4_i48 (.D(d4_73__N_1531[48]), .CK(osc_clk), .Q(d4[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i48.GSR = "ENABLED";
    FD1S3AX d4_i49 (.D(d4_73__N_1531[49]), .CK(osc_clk), .Q(d4[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i49.GSR = "ENABLED";
    FD1S3AX d4_i50 (.D(d4_73__N_1531[50]), .CK(osc_clk), .Q(d4[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i50.GSR = "ENABLED";
    FD1S3AX d4_i51 (.D(d4_73__N_1531[51]), .CK(osc_clk), .Q(d4[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i51.GSR = "ENABLED";
    FD1S3AX d4_i52 (.D(d4_73__N_1531[52]), .CK(osc_clk), .Q(d4[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i52.GSR = "ENABLED";
    FD1S3AX d4_i53 (.D(d4_73__N_1531[53]), .CK(osc_clk), .Q(d4[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i53.GSR = "ENABLED";
    FD1S3AX d4_i54 (.D(d4_73__N_1531[54]), .CK(osc_clk), .Q(d4[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i54.GSR = "ENABLED";
    FD1S3AX d4_i55 (.D(d4_73__N_1531[55]), .CK(osc_clk), .Q(d4[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i55.GSR = "ENABLED";
    FD1S3AX d4_i56 (.D(d4_73__N_1531[56]), .CK(osc_clk), .Q(d4[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i56.GSR = "ENABLED";
    FD1S3AX d4_i57 (.D(d4_73__N_1531[57]), .CK(osc_clk), .Q(d4[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i57.GSR = "ENABLED";
    FD1S3AX d4_i58 (.D(d4_73__N_1531[58]), .CK(osc_clk), .Q(d4[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i58.GSR = "ENABLED";
    FD1S3AX d4_i59 (.D(d4_73__N_1531[59]), .CK(osc_clk), .Q(d4[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i59.GSR = "ENABLED";
    FD1S3AX d4_i60 (.D(d4_73__N_1531[60]), .CK(osc_clk), .Q(d4[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i60.GSR = "ENABLED";
    FD1S3AX d4_i61 (.D(d4_73__N_1531[61]), .CK(osc_clk), .Q(d4[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i61.GSR = "ENABLED";
    FD1S3AX d4_i62 (.D(d4_73__N_1531[62]), .CK(osc_clk), .Q(d4[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i62.GSR = "ENABLED";
    FD1S3AX d4_i63 (.D(d4_73__N_1531[63]), .CK(osc_clk), .Q(d4[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i63.GSR = "ENABLED";
    FD1S3AX d4_i64 (.D(d4_73__N_1531[64]), .CK(osc_clk), .Q(d4[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i64.GSR = "ENABLED";
    FD1S3AX d4_i65 (.D(d4_73__N_1531[65]), .CK(osc_clk), .Q(d4[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i65.GSR = "ENABLED";
    FD1S3AX d4_i66 (.D(d4_73__N_1531[66]), .CK(osc_clk), .Q(d4[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i66.GSR = "ENABLED";
    FD1S3AX d4_i67 (.D(d4_73__N_1531[67]), .CK(osc_clk), .Q(d4[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i67.GSR = "ENABLED";
    FD1S3AX d4_i68 (.D(d4_73__N_1531[68]), .CK(osc_clk), .Q(d4[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i68.GSR = "ENABLED";
    FD1S3AX d4_i69 (.D(d4_73__N_1531[69]), .CK(osc_clk), .Q(d4[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i69.GSR = "ENABLED";
    FD1S3AX d4_i70 (.D(d4_73__N_1531[70]), .CK(osc_clk), .Q(d4[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i70.GSR = "ENABLED";
    FD1S3AX d4_i71 (.D(d4_73__N_1531[71]), .CK(osc_clk), .Q(d4[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i71.GSR = "ENABLED";
    FD1S3AX d4_i72 (.D(d4_73__N_1531[72]), .CK(osc_clk), .Q(d4[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i72.GSR = "ENABLED";
    FD1S3AX d4_i73 (.D(d4_73__N_1531[73]), .CK(osc_clk), .Q(d4[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i73.GSR = "ENABLED";
    FD1S3AX d5_i1 (.D(d5_73__N_1605[1]), .CK(osc_clk), .Q(d5[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i1.GSR = "ENABLED";
    FD1S3AX d5_i2 (.D(d5_73__N_1605[2]), .CK(osc_clk), .Q(d5[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i2.GSR = "ENABLED";
    FD1S3AX d5_i3 (.D(d5_73__N_1605[3]), .CK(osc_clk), .Q(d5[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i3.GSR = "ENABLED";
    FD1S3AX d5_i4 (.D(d5_73__N_1605[4]), .CK(osc_clk), .Q(d5[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i4.GSR = "ENABLED";
    FD1S3AX d5_i5 (.D(d5_73__N_1605[5]), .CK(osc_clk), .Q(d5[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i5.GSR = "ENABLED";
    FD1S3AX d5_i6 (.D(d5_73__N_1605[6]), .CK(osc_clk), .Q(d5[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i6.GSR = "ENABLED";
    FD1S3AX d5_i7 (.D(d5_73__N_1605[7]), .CK(osc_clk), .Q(d5[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i7.GSR = "ENABLED";
    FD1S3AX d5_i8 (.D(d5_73__N_1605[8]), .CK(osc_clk), .Q(d5[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i8.GSR = "ENABLED";
    FD1S3AX d5_i9 (.D(d5_73__N_1605[9]), .CK(osc_clk), .Q(d5[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i9.GSR = "ENABLED";
    FD1S3AX d5_i10 (.D(d5_73__N_1605[10]), .CK(osc_clk), .Q(d5[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i10.GSR = "ENABLED";
    FD1S3AX d5_i11 (.D(d5_73__N_1605[11]), .CK(osc_clk), .Q(d5[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i11.GSR = "ENABLED";
    FD1S3AX d5_i12 (.D(d5_73__N_1605[12]), .CK(osc_clk), .Q(d5[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i12.GSR = "ENABLED";
    FD1S3AX d5_i13 (.D(d5_73__N_1605[13]), .CK(osc_clk), .Q(d5[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i13.GSR = "ENABLED";
    FD1S3AX d5_i14 (.D(d5_73__N_1605[14]), .CK(osc_clk), .Q(d5[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i14.GSR = "ENABLED";
    FD1S3AX d5_i15 (.D(d5_73__N_1605[15]), .CK(osc_clk), .Q(d5[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i15.GSR = "ENABLED";
    FD1S3AX d5_i16 (.D(d5_73__N_1605[16]), .CK(osc_clk), .Q(d5[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i16.GSR = "ENABLED";
    FD1S3AX d5_i17 (.D(d5_73__N_1605[17]), .CK(osc_clk), .Q(d5[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i17.GSR = "ENABLED";
    FD1S3AX d5_i18 (.D(d5_73__N_1605[18]), .CK(osc_clk), .Q(d5[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i18.GSR = "ENABLED";
    FD1S3AX d5_i19 (.D(d5_73__N_1605[19]), .CK(osc_clk), .Q(d5[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i19.GSR = "ENABLED";
    FD1S3AX d5_i20 (.D(d5_73__N_1605[20]), .CK(osc_clk), .Q(d5[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i20.GSR = "ENABLED";
    FD1S3AX d5_i21 (.D(d5_73__N_1605[21]), .CK(osc_clk), .Q(d5[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i21.GSR = "ENABLED";
    FD1S3AX d5_i22 (.D(d5_73__N_1605[22]), .CK(osc_clk), .Q(d5[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i22.GSR = "ENABLED";
    FD1S3AX d5_i23 (.D(d5_73__N_1605[23]), .CK(osc_clk), .Q(d5[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i23.GSR = "ENABLED";
    FD1S3AX d5_i24 (.D(d5_73__N_1605[24]), .CK(osc_clk), .Q(d5[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i24.GSR = "ENABLED";
    FD1S3AX d5_i25 (.D(d5_73__N_1605[25]), .CK(osc_clk), .Q(d5[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i25.GSR = "ENABLED";
    FD1S3AX d5_i26 (.D(d5_73__N_1605[26]), .CK(osc_clk), .Q(d5[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i26.GSR = "ENABLED";
    FD1S3AX d5_i27 (.D(d5_73__N_1605[27]), .CK(osc_clk), .Q(d5[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i27.GSR = "ENABLED";
    FD1S3AX d5_i28 (.D(d5_73__N_1605[28]), .CK(osc_clk), .Q(d5[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i28.GSR = "ENABLED";
    FD1S3AX d5_i29 (.D(d5_73__N_1605[29]), .CK(osc_clk), .Q(d5[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i29.GSR = "ENABLED";
    FD1S3AX d5_i30 (.D(d5_73__N_1605[30]), .CK(osc_clk), .Q(d5[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i30.GSR = "ENABLED";
    FD1S3AX d5_i31 (.D(d5_73__N_1605[31]), .CK(osc_clk), .Q(d5[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i31.GSR = "ENABLED";
    FD1S3AX d5_i32 (.D(d5_73__N_1605[32]), .CK(osc_clk), .Q(d5[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i32.GSR = "ENABLED";
    FD1S3AX d5_i33 (.D(d5_73__N_1605[33]), .CK(osc_clk), .Q(d5[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i33.GSR = "ENABLED";
    FD1S3AX d5_i34 (.D(d5_73__N_1605[34]), .CK(osc_clk), .Q(d5[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i34.GSR = "ENABLED";
    FD1S3AX d5_i35 (.D(d5_73__N_1605[35]), .CK(osc_clk), .Q(d5[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i35.GSR = "ENABLED";
    FD1S3AX d5_i36 (.D(d5_73__N_1605[36]), .CK(osc_clk), .Q(d5[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i36.GSR = "ENABLED";
    FD1S3AX d5_i37 (.D(d5_73__N_1605[37]), .CK(osc_clk), .Q(d5[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i37.GSR = "ENABLED";
    FD1S3AX d5_i38 (.D(d5_73__N_1605[38]), .CK(osc_clk), .Q(d5[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i38.GSR = "ENABLED";
    FD1S3AX d5_i39 (.D(d5_73__N_1605[39]), .CK(osc_clk), .Q(d5[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i39.GSR = "ENABLED";
    FD1S3AX d5_i40 (.D(d5_73__N_1605[40]), .CK(osc_clk), .Q(d5[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i40.GSR = "ENABLED";
    FD1S3AX d5_i41 (.D(d5_73__N_1605[41]), .CK(osc_clk), .Q(d5[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i41.GSR = "ENABLED";
    FD1S3AX d5_i42 (.D(d5_73__N_1605[42]), .CK(osc_clk), .Q(d5[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i42.GSR = "ENABLED";
    FD1S3AX d5_i43 (.D(d5_73__N_1605[43]), .CK(osc_clk), .Q(d5[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i43.GSR = "ENABLED";
    FD1S3AX d5_i44 (.D(d5_73__N_1605[44]), .CK(osc_clk), .Q(d5[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i44.GSR = "ENABLED";
    FD1S3AX d5_i45 (.D(d5_73__N_1605[45]), .CK(osc_clk), .Q(d5[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i45.GSR = "ENABLED";
    FD1S3AX d5_i46 (.D(d5_73__N_1605[46]), .CK(osc_clk), .Q(d5[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i46.GSR = "ENABLED";
    FD1S3AX d5_i47 (.D(d5_73__N_1605[47]), .CK(osc_clk), .Q(d5[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i47.GSR = "ENABLED";
    FD1S3AX d5_i48 (.D(d5_73__N_1605[48]), .CK(osc_clk), .Q(d5[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i48.GSR = "ENABLED";
    FD1S3AX d5_i49 (.D(d5_73__N_1605[49]), .CK(osc_clk), .Q(d5[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i49.GSR = "ENABLED";
    FD1S3AX d5_i50 (.D(d5_73__N_1605[50]), .CK(osc_clk), .Q(d5[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i50.GSR = "ENABLED";
    FD1S3AX d5_i51 (.D(d5_73__N_1605[51]), .CK(osc_clk), .Q(d5[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i51.GSR = "ENABLED";
    FD1S3AX d5_i52 (.D(d5_73__N_1605[52]), .CK(osc_clk), .Q(d5[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i52.GSR = "ENABLED";
    FD1S3AX d5_i53 (.D(d5_73__N_1605[53]), .CK(osc_clk), .Q(d5[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i53.GSR = "ENABLED";
    FD1S3AX d5_i54 (.D(d5_73__N_1605[54]), .CK(osc_clk), .Q(d5[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i54.GSR = "ENABLED";
    FD1S3AX d5_i55 (.D(d5_73__N_1605[55]), .CK(osc_clk), .Q(d5[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i55.GSR = "ENABLED";
    FD1S3AX d5_i56 (.D(d5_73__N_1605[56]), .CK(osc_clk), .Q(d5[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i56.GSR = "ENABLED";
    FD1S3AX d5_i57 (.D(d5_73__N_1605[57]), .CK(osc_clk), .Q(d5[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i57.GSR = "ENABLED";
    FD1S3AX d5_i58 (.D(d5_73__N_1605[58]), .CK(osc_clk), .Q(d5[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i58.GSR = "ENABLED";
    FD1S3AX d5_i59 (.D(d5_73__N_1605[59]), .CK(osc_clk), .Q(d5[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i59.GSR = "ENABLED";
    FD1S3AX d5_i60 (.D(d5_73__N_1605[60]), .CK(osc_clk), .Q(d5[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i60.GSR = "ENABLED";
    FD1S3AX d5_i61 (.D(d5_73__N_1605[61]), .CK(osc_clk), .Q(d5[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i61.GSR = "ENABLED";
    FD1S3AX d5_i62 (.D(d5_73__N_1605[62]), .CK(osc_clk), .Q(d5[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i62.GSR = "ENABLED";
    FD1S3AX d5_i63 (.D(d5_73__N_1605[63]), .CK(osc_clk), .Q(d5[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i63.GSR = "ENABLED";
    FD1S3AX d5_i64 (.D(d5_73__N_1605[64]), .CK(osc_clk), .Q(d5[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i64.GSR = "ENABLED";
    FD1S3AX d5_i65 (.D(d5_73__N_1605[65]), .CK(osc_clk), .Q(d5[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i65.GSR = "ENABLED";
    FD1S3AX d5_i66 (.D(d5_73__N_1605[66]), .CK(osc_clk), .Q(d5[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i66.GSR = "ENABLED";
    FD1S3AX d5_i67 (.D(d5_73__N_1605[67]), .CK(osc_clk), .Q(d5[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i67.GSR = "ENABLED";
    FD1S3AX d5_i68 (.D(d5_73__N_1605[68]), .CK(osc_clk), .Q(d5[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i68.GSR = "ENABLED";
    FD1S3AX d5_i69 (.D(d5_73__N_1605[69]), .CK(osc_clk), .Q(d5[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i69.GSR = "ENABLED";
    FD1S3AX d5_i70 (.D(d5_73__N_1605[70]), .CK(osc_clk), .Q(d5[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i70.GSR = "ENABLED";
    FD1S3AX d5_i71 (.D(d5_73__N_1605[71]), .CK(osc_clk), .Q(d5[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i71.GSR = "ENABLED";
    FD1S3AX d5_i72 (.D(d5_73__N_1605[72]), .CK(osc_clk), .Q(d5[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i72.GSR = "ENABLED";
    FD1S3AX d5_i73 (.D(d5_73__N_1605[73]), .CK(osc_clk), .Q(d5[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i73.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i12 (.D(d5[12]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i13 (.D(d5[13]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i14 (.D(d5[14]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i15 (.D(d5[15]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i16 (.D(d5[16]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i17 (.D(d5[17]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i18 (.D(d5[18]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i19 (.D(d5[19]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i20 (.D(d5[20]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i21 (.D(d5[21]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i22 (.D(d5[22]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i23 (.D(d5[23]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i24 (.D(d5[24]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i25 (.D(d5[25]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i26 (.D(d5[26]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i27 (.D(d5[27]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i28 (.D(d5[28]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i29 (.D(d5[29]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i30 (.D(d5[30]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i31 (.D(d5[31]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i32 (.D(d5[32]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i33 (.D(d5[33]), .SP(osc_clk_enable_119), .CK(osc_clk), 
            .Q(d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i34 (.D(d5[34]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i35 (.D(d5[35]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i36 (.D(d5[36]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i37 (.D(d5[37]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i38 (.D(d5[38]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i39 (.D(d5[39]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i40 (.D(d5[40]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i41 (.D(d5[41]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i42 (.D(d5[42]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i43 (.D(d5[43]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i44 (.D(d5[44]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i45 (.D(d5[45]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i46 (.D(d5[46]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i47 (.D(d5[47]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i48 (.D(d5[48]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i49 (.D(d5[49]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i50 (.D(d5[50]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i51 (.D(d5[51]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i52 (.D(d5[52]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i53 (.D(d5[53]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i54 (.D(d5[54]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i55 (.D(d5[55]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i56 (.D(d5[56]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i57 (.D(d5[57]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i58 (.D(d5[58]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i59 (.D(d5[59]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i60 (.D(d5[60]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i61 (.D(d5[61]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i62 (.D(d5[62]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i63 (.D(d5[63]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i63.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i64 (.D(d5[64]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i64.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i65 (.D(d5[65]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i65.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i66 (.D(d5[66]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i66.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i67 (.D(d5[67]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i67.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i68 (.D(d5[68]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i68.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i69 (.D(d5[69]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i69.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i70 (.D(d5[70]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i70.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i71 (.D(d5[71]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i71.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i72 (.D(d5[72]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i72.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i73 (.D(d5[73]), .SP(osc_clk_enable_159), .CK(osc_clk), 
            .Q(d_tmp[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i73.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(n1599[1]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(n1599[2]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(n1599[3]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(n1599[4]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(n1599[5]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(n1599[6]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(n1599[7]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(n1599[8]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(n1599[9]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(n1599[10]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(n1599[11]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i12 (.D(n1599[12]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d7_i0_i13 (.D(n1599[13]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d7_i0_i14 (.D(n1599[14]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d7_i0_i15 (.D(n1599[15]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d7_i0_i16 (.D(n1599[16]), .SP(osc_clk_enable_175), .CK(osc_clk), 
            .Q(d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d7_i0_i17 (.D(n1599[17]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d7_i0_i18 (.D(n1599[18]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d7_i0_i19 (.D(n1599[19]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d7_i0_i20 (.D(n1599[20]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d7_i0_i21 (.D(n1599[21]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d7_i0_i22 (.D(n1599[22]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d7_i0_i23 (.D(n1599[23]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d7_i0_i24 (.D(n1599[24]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d7_i0_i25 (.D(n1599[25]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d7_i0_i26 (.D(n1599[26]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d7_i0_i27 (.D(n1599[27]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d7_i0_i28 (.D(n1599[28]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d7_i0_i29 (.D(n1599[29]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d7_i0_i30 (.D(n1599[30]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d7_i0_i31 (.D(n1599[31]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d7_i0_i32 (.D(n1599[32]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d7_i0_i33 (.D(n1599[33]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d7_i0_i34 (.D(n1599[34]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d7_i0_i35 (.D(n1599[35]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d7_i0_i36 (.D(n1599[36]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d7_i0_i37 (.D(n1677[0]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d7_i0_i38 (.D(n1677[1]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d7_i0_i39 (.D(n1677[2]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d7_i0_i40 (.D(n1677[3]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d7_i0_i41 (.D(n1677[4]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d7_i0_i42 (.D(n1677[5]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d7_i0_i43 (.D(n1677[6]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d7_i0_i44 (.D(n1677[7]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d7_i0_i45 (.D(n1677[8]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d7_i0_i46 (.D(n1677[9]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d7_i0_i47 (.D(n1677[10]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d7_i0_i48 (.D(n1677[11]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d7_i0_i49 (.D(n1677[12]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d7_i0_i50 (.D(n1677[13]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d7_i0_i51 (.D(n1677[14]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d7_i0_i52 (.D(n1677[15]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d7_i0_i53 (.D(n1677[16]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d7_i0_i54 (.D(n1677[17]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d7_i0_i55 (.D(n1677[18]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d7_i0_i56 (.D(n1677[19]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d7_i0_i57 (.D(n1677[20]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d7_i0_i58 (.D(n1677[21]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d7_i0_i59 (.D(n1677[22]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d7_i0_i60 (.D(n1677[23]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d7_i0_i61 (.D(n1677[24]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d7_i0_i62 (.D(n1677[25]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d7_i0_i63 (.D(n1677[26]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d7_i0_i64 (.D(n1677[27]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i64.GSR = "ENABLED";
    FD1P3AX d7_i0_i65 (.D(n1677[28]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i65.GSR = "ENABLED";
    FD1P3AX d7_i0_i66 (.D(n1677[29]), .SP(osc_clk_enable_225), .CK(osc_clk), 
            .Q(d7[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i66.GSR = "ENABLED";
    FD1P3AX d7_i0_i67 (.D(n1677[30]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d7[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i67.GSR = "ENABLED";
    FD1P3AX d7_i0_i68 (.D(n1677[31]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d7[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i68.GSR = "ENABLED";
    FD1P3AX d7_i0_i69 (.D(n1677[32]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d7[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i69.GSR = "ENABLED";
    FD1P3AX d7_i0_i70 (.D(n1677[33]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d7[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i70.GSR = "ENABLED";
    FD1P3AX d7_i0_i71 (.D(n1677[34]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d7[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i71.GSR = "ENABLED";
    FD1P3AX d7_i0_i72 (.D(n1677[35]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d7[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i72.GSR = "ENABLED";
    FD1P3AX d7_i0_i73 (.D(n1677[36]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d7[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i73.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(n975[1]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    CCU2D add_101_3 (.A0(d8[38]), .B0(d_d8[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[39]), .B1(d_d8[39]), .C1(GND_net), .D1(GND_net), .CIN(n2855), 
          .COUT(n2856), .S0(n1482[1]), .S1(n1482[2]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_3.INIT0 = 16'h5999;
    defparam add_101_3.INIT1 = 16'h5999;
    defparam add_101_3.INJECT1_0 = "NO";
    defparam add_101_3.INJECT1_1 = "NO";
    CCU2D add_101_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[37]), .B1(d_d8[37]), .C1(GND_net), .D1(GND_net), .COUT(n2855), 
          .S1(n1482[0]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_101_1.INIT0 = 16'hF000;
    defparam add_101_1.INIT1 = 16'h5999;
    defparam add_101_1.INJECT1_0 = "NO";
    defparam add_101_1.INJECT1_1 = "NO";
    CCU2D add_90_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2854), 
          .S0(n1169));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_cout.INIT0 = 16'h0000;
    defparam add_90_cout.INIT1 = 16'h0000;
    defparam add_90_cout.INJECT1_0 = "NO";
    defparam add_90_cout.INJECT1_1 = "NO";
    CCU2D add_90_37 (.A0(d_tmp[35]), .B0(d_d_tmp[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[36]), .B1(d_d_tmp[36]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2853), .COUT(n2854), .S0(n1131[35]), .S1(n1131[36]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_37.INIT0 = 16'h5999;
    defparam add_90_37.INIT1 = 16'h5999;
    defparam add_90_37.INJECT1_0 = "NO";
    defparam add_90_37.INJECT1_1 = "NO";
    CCU2D add_90_35 (.A0(d_tmp[33]), .B0(d_d_tmp[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[34]), .B1(d_d_tmp[34]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2852), .COUT(n2853), .S0(n1131[33]), .S1(n1131[34]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_35.INIT0 = 16'h5999;
    defparam add_90_35.INIT1 = 16'h5999;
    defparam add_90_35.INJECT1_0 = "NO";
    defparam add_90_35.INJECT1_1 = "NO";
    CCU2D add_90_33 (.A0(d_tmp[31]), .B0(d_d_tmp[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[32]), .B1(d_d_tmp[32]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2851), .COUT(n2852), .S0(n1131[31]), .S1(n1131[32]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_33.INIT0 = 16'h5999;
    defparam add_90_33.INIT1 = 16'h5999;
    defparam add_90_33.INJECT1_0 = "NO";
    defparam add_90_33.INJECT1_1 = "NO";
    CCU2D add_90_31 (.A0(d_tmp[29]), .B0(d_d_tmp[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[30]), .B1(d_d_tmp[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2850), .COUT(n2851), .S0(n1131[29]), .S1(n1131[30]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_31.INIT0 = 16'h5999;
    defparam add_90_31.INIT1 = 16'h5999;
    defparam add_90_31.INJECT1_0 = "NO";
    defparam add_90_31.INJECT1_1 = "NO";
    CCU2D add_90_29 (.A0(d_tmp[27]), .B0(d_d_tmp[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[28]), .B1(d_d_tmp[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2849), .COUT(n2850), .S0(n1131[27]), .S1(n1131[28]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_29.INIT0 = 16'h5999;
    defparam add_90_29.INIT1 = 16'h5999;
    defparam add_90_29.INJECT1_0 = "NO";
    defparam add_90_29.INJECT1_1 = "NO";
    CCU2D add_90_27 (.A0(d_tmp[25]), .B0(d_d_tmp[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[26]), .B1(d_d_tmp[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2848), .COUT(n2849), .S0(n1131[25]), .S1(n1131[26]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_27.INIT0 = 16'h5999;
    defparam add_90_27.INIT1 = 16'h5999;
    defparam add_90_27.INJECT1_0 = "NO";
    defparam add_90_27.INJECT1_1 = "NO";
    CCU2D add_90_25 (.A0(d_tmp[23]), .B0(d_d_tmp[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[24]), .B1(d_d_tmp[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2847), .COUT(n2848), .S0(n1131[23]), .S1(n1131[24]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_25.INIT0 = 16'h5999;
    defparam add_90_25.INIT1 = 16'h5999;
    defparam add_90_25.INJECT1_0 = "NO";
    defparam add_90_25.INJECT1_1 = "NO";
    CCU2D add_90_23 (.A0(d_tmp[21]), .B0(d_d_tmp[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[22]), .B1(d_d_tmp[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2846), .COUT(n2847), .S0(n1131[21]), .S1(n1131[22]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_23.INIT0 = 16'h5999;
    defparam add_90_23.INIT1 = 16'h5999;
    defparam add_90_23.INJECT1_0 = "NO";
    defparam add_90_23.INJECT1_1 = "NO";
    CCU2D add_90_21 (.A0(d_tmp[19]), .B0(d_d_tmp[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[20]), .B1(d_d_tmp[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2845), .COUT(n2846), .S0(n1131[19]), .S1(n1131[20]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_21.INIT0 = 16'h5999;
    defparam add_90_21.INIT1 = 16'h5999;
    defparam add_90_21.INJECT1_0 = "NO";
    defparam add_90_21.INJECT1_1 = "NO";
    CCU2D add_90_19 (.A0(d_tmp[17]), .B0(d_d_tmp[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[18]), .B1(d_d_tmp[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2844), .COUT(n2845), .S0(n1131[17]), .S1(n1131[18]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_19.INIT0 = 16'h5999;
    defparam add_90_19.INIT1 = 16'h5999;
    defparam add_90_19.INJECT1_0 = "NO";
    defparam add_90_19.INJECT1_1 = "NO";
    CCU2D add_90_17 (.A0(d_tmp[15]), .B0(d_d_tmp[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[16]), .B1(d_d_tmp[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2843), .COUT(n2844), .S0(n1131[15]), .S1(n1131[16]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_17.INIT0 = 16'h5999;
    defparam add_90_17.INIT1 = 16'h5999;
    defparam add_90_17.INJECT1_0 = "NO";
    defparam add_90_17.INJECT1_1 = "NO";
    CCU2D add_90_15 (.A0(d_tmp[13]), .B0(d_d_tmp[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[14]), .B1(d_d_tmp[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2842), .COUT(n2843), .S0(n1131[13]), .S1(n1131[14]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_15.INIT0 = 16'h5999;
    defparam add_90_15.INIT1 = 16'h5999;
    defparam add_90_15.INJECT1_0 = "NO";
    defparam add_90_15.INJECT1_1 = "NO";
    CCU2D add_90_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[12]), .B1(d_d_tmp[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2841), .COUT(n2842), .S0(n1131[11]), .S1(n1131[12]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_13.INIT0 = 16'h5999;
    defparam add_90_13.INIT1 = 16'h5999;
    defparam add_90_13.INJECT1_0 = "NO";
    defparam add_90_13.INJECT1_1 = "NO";
    CCU2D add_90_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2840), .COUT(n2841), .S0(n1131[9]), .S1(n1131[10]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_11.INIT0 = 16'h5999;
    defparam add_90_11.INIT1 = 16'h5999;
    defparam add_90_11.INJECT1_0 = "NO";
    defparam add_90_11.INJECT1_1 = "NO";
    CCU2D add_90_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2839), .COUT(n2840), .S0(n1131[7]), .S1(n1131[8]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_9.INIT0 = 16'h5999;
    defparam add_90_9.INIT1 = 16'h5999;
    defparam add_90_9.INJECT1_0 = "NO";
    defparam add_90_9.INJECT1_1 = "NO";
    CCU2D add_90_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2838), .COUT(n2839), .S0(n1131[5]), .S1(n1131[6]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_7.INIT0 = 16'h5999;
    defparam add_90_7.INIT1 = 16'h5999;
    defparam add_90_7.INJECT1_0 = "NO";
    defparam add_90_7.INJECT1_1 = "NO";
    CCU2D add_90_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2837), .COUT(n2838), .S0(n1131[3]), .S1(n1131[4]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_5.INIT0 = 16'h5999;
    defparam add_90_5.INIT1 = 16'h5999;
    defparam add_90_5.INJECT1_0 = "NO";
    defparam add_90_5.INJECT1_1 = "NO";
    CCU2D add_90_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2836), .COUT(n2837), .S0(n1131[1]), .S1(n1131[2]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_3.INIT0 = 16'h5999;
    defparam add_90_3.INIT1 = 16'h5999;
    defparam add_90_3.INJECT1_0 = "NO";
    defparam add_90_3.INJECT1_1 = "NO";
    CCU2D add_90_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2836), .S1(n1131[0]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam add_90_1.INIT0 = 16'h0000;
    defparam add_90_1.INIT1 = 16'h5999;
    defparam add_90_1.INJECT1_0 = "NO";
    defparam add_90_1.INJECT1_1 = "NO";
    CCU2D add_85_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2835), 
          .S0(n1013));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_cout.INIT0 = 16'h0000;
    defparam add_85_cout.INIT1 = 16'h0000;
    defparam add_85_cout.INJECT1_0 = "NO";
    defparam add_85_cout.INJECT1_1 = "NO";
    CCU2D add_85_37 (.A0(d7[35]), .B0(d_d7[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[36]), .B1(d_d7[36]), .C1(GND_net), .D1(GND_net), .CIN(n2834), 
          .COUT(n2835), .S0(n975[35]), .S1(n975[36]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_37.INIT0 = 16'h5999;
    defparam add_85_37.INIT1 = 16'h5999;
    defparam add_85_37.INJECT1_0 = "NO";
    defparam add_85_37.INJECT1_1 = "NO";
    CCU2D add_85_35 (.A0(d7[33]), .B0(d_d7[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[34]), .B1(d_d7[34]), .C1(GND_net), .D1(GND_net), .CIN(n2833), 
          .COUT(n2834), .S0(n975[33]), .S1(n975[34]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_35.INIT0 = 16'h5999;
    defparam add_85_35.INIT1 = 16'h5999;
    defparam add_85_35.INJECT1_0 = "NO";
    defparam add_85_35.INJECT1_1 = "NO";
    CCU2D add_85_33 (.A0(d7[31]), .B0(d_d7[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[32]), .B1(d_d7[32]), .C1(GND_net), .D1(GND_net), .CIN(n2832), 
          .COUT(n2833), .S0(n975[31]), .S1(n975[32]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_33.INIT0 = 16'h5999;
    defparam add_85_33.INIT1 = 16'h5999;
    defparam add_85_33.INJECT1_0 = "NO";
    defparam add_85_33.INJECT1_1 = "NO";
    CCU2D add_85_31 (.A0(d7[29]), .B0(d_d7[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[30]), .B1(d_d7[30]), .C1(GND_net), .D1(GND_net), .CIN(n2831), 
          .COUT(n2832), .S0(n975[29]), .S1(n975[30]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_31.INIT0 = 16'h5999;
    defparam add_85_31.INIT1 = 16'h5999;
    defparam add_85_31.INJECT1_0 = "NO";
    defparam add_85_31.INJECT1_1 = "NO";
    CCU2D add_85_29 (.A0(d7[27]), .B0(d_d7[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[28]), .B1(d_d7[28]), .C1(GND_net), .D1(GND_net), .CIN(n2830), 
          .COUT(n2831), .S0(n975[27]), .S1(n975[28]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_29.INIT0 = 16'h5999;
    defparam add_85_29.INIT1 = 16'h5999;
    defparam add_85_29.INJECT1_0 = "NO";
    defparam add_85_29.INJECT1_1 = "NO";
    CCU2D add_85_27 (.A0(d7[25]), .B0(d_d7[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[26]), .B1(d_d7[26]), .C1(GND_net), .D1(GND_net), .CIN(n2829), 
          .COUT(n2830), .S0(n975[25]), .S1(n975[26]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_27.INIT0 = 16'h5999;
    defparam add_85_27.INIT1 = 16'h5999;
    defparam add_85_27.INJECT1_0 = "NO";
    defparam add_85_27.INJECT1_1 = "NO";
    CCU2D add_85_25 (.A0(d7[23]), .B0(d_d7[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[24]), .B1(d_d7[24]), .C1(GND_net), .D1(GND_net), .CIN(n2828), 
          .COUT(n2829), .S0(n975[23]), .S1(n975[24]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_25.INIT0 = 16'h5999;
    defparam add_85_25.INIT1 = 16'h5999;
    defparam add_85_25.INJECT1_0 = "NO";
    defparam add_85_25.INJECT1_1 = "NO";
    CCU2D add_85_23 (.A0(d7[21]), .B0(d_d7[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[22]), .B1(d_d7[22]), .C1(GND_net), .D1(GND_net), .CIN(n2827), 
          .COUT(n2828), .S0(n975[21]), .S1(n975[22]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_23.INIT0 = 16'h5999;
    defparam add_85_23.INIT1 = 16'h5999;
    defparam add_85_23.INJECT1_0 = "NO";
    defparam add_85_23.INJECT1_1 = "NO";
    CCU2D add_85_21 (.A0(d7[19]), .B0(d_d7[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[20]), .B1(d_d7[20]), .C1(GND_net), .D1(GND_net), .CIN(n2826), 
          .COUT(n2827), .S0(n975[19]), .S1(n975[20]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_21.INIT0 = 16'h5999;
    defparam add_85_21.INIT1 = 16'h5999;
    defparam add_85_21.INJECT1_0 = "NO";
    defparam add_85_21.INJECT1_1 = "NO";
    CCU2D add_85_19 (.A0(d7[17]), .B0(d_d7[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[18]), .B1(d_d7[18]), .C1(GND_net), .D1(GND_net), .CIN(n2825), 
          .COUT(n2826), .S0(n975[17]), .S1(n975[18]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_19.INIT0 = 16'h5999;
    defparam add_85_19.INIT1 = 16'h5999;
    defparam add_85_19.INJECT1_0 = "NO";
    defparam add_85_19.INJECT1_1 = "NO";
    CCU2D add_85_17 (.A0(d7[15]), .B0(d_d7[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[16]), .B1(d_d7[16]), .C1(GND_net), .D1(GND_net), .CIN(n2824), 
          .COUT(n2825), .S0(n975[15]), .S1(n975[16]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_17.INIT0 = 16'h5999;
    defparam add_85_17.INIT1 = 16'h5999;
    defparam add_85_17.INJECT1_0 = "NO";
    defparam add_85_17.INJECT1_1 = "NO";
    CCU2D add_85_15 (.A0(d7[13]), .B0(d_d7[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[14]), .B1(d_d7[14]), .C1(GND_net), .D1(GND_net), .CIN(n2823), 
          .COUT(n2824), .S0(n975[13]), .S1(n975[14]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_15.INIT0 = 16'h5999;
    defparam add_85_15.INIT1 = 16'h5999;
    defparam add_85_15.INJECT1_0 = "NO";
    defparam add_85_15.INJECT1_1 = "NO";
    CCU2D add_85_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[12]), .B1(d_d7[12]), .C1(GND_net), .D1(GND_net), .CIN(n2822), 
          .COUT(n2823), .S0(n975[11]), .S1(n975[12]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_13.INIT0 = 16'h5999;
    defparam add_85_13.INIT1 = 16'h5999;
    defparam add_85_13.INJECT1_0 = "NO";
    defparam add_85_13.INJECT1_1 = "NO";
    CCU2D add_85_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n2821), 
          .COUT(n2822), .S0(n975[9]), .S1(n975[10]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_11.INIT0 = 16'h5999;
    defparam add_85_11.INIT1 = 16'h5999;
    defparam add_85_11.INJECT1_0 = "NO";
    defparam add_85_11.INJECT1_1 = "NO";
    CCU2D add_85_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n2820), 
          .COUT(n2821), .S0(n975[7]), .S1(n975[8]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_9.INIT0 = 16'h5999;
    defparam add_85_9.INIT1 = 16'h5999;
    defparam add_85_9.INJECT1_0 = "NO";
    defparam add_85_9.INJECT1_1 = "NO";
    CCU2D add_85_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n2819), 
          .COUT(n2820), .S0(n975[5]), .S1(n975[6]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_7.INIT0 = 16'h5999;
    defparam add_85_7.INIT1 = 16'h5999;
    defparam add_85_7.INJECT1_0 = "NO";
    defparam add_85_7.INJECT1_1 = "NO";
    CCU2D add_85_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n2818), 
          .COUT(n2819), .S0(n975[3]), .S1(n975[4]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_5.INIT0 = 16'h5999;
    defparam add_85_5.INIT1 = 16'h5999;
    defparam add_85_5.INJECT1_0 = "NO";
    defparam add_85_5.INJECT1_1 = "NO";
    CCU2D add_85_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n2817), 
          .COUT(n2818), .S0(n975[1]), .S1(n975[2]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_3.INIT0 = 16'h5999;
    defparam add_85_3.INIT1 = 16'h5999;
    defparam add_85_3.INJECT1_0 = "NO";
    defparam add_85_3.INJECT1_1 = "NO";
    CCU2D add_85_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n2817), 
          .S1(n975[0]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_85_1.INIT0 = 16'h0000;
    defparam add_85_1.INIT1 = 16'h5999;
    defparam add_85_1.INJECT1_0 = "NO";
    defparam add_85_1.INJECT1_1 = "NO";
    CCU2D add_80_38 (.A0(d4[36]), .B0(d5[36]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2816), 
          .S0(d5_73__N_1605[36]), .S1(n857));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_38.INIT0 = 16'h5666;
    defparam add_80_38.INIT1 = 16'h0000;
    defparam add_80_38.INJECT1_0 = "NO";
    defparam add_80_38.INJECT1_1 = "NO";
    CCU2D add_80_36 (.A0(d4[34]), .B0(d5[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[35]), .B1(d5[35]), .C1(GND_net), .D1(GND_net), .CIN(n2815), 
          .COUT(n2816), .S0(d5_73__N_1605[34]), .S1(d5_73__N_1605[35]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_36.INIT0 = 16'h5666;
    defparam add_80_36.INIT1 = 16'h5666;
    defparam add_80_36.INJECT1_0 = "NO";
    defparam add_80_36.INJECT1_1 = "NO";
    CCU2D add_80_34 (.A0(d4[32]), .B0(d5[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[33]), .B1(d5[33]), .C1(GND_net), .D1(GND_net), .CIN(n2814), 
          .COUT(n2815), .S0(d5_73__N_1605[32]), .S1(d5_73__N_1605[33]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_34.INIT0 = 16'h5666;
    defparam add_80_34.INIT1 = 16'h5666;
    defparam add_80_34.INJECT1_0 = "NO";
    defparam add_80_34.INJECT1_1 = "NO";
    CCU2D add_80_32 (.A0(d4[30]), .B0(d5[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[31]), .B1(d5[31]), .C1(GND_net), .D1(GND_net), .CIN(n2813), 
          .COUT(n2814), .S0(d5_73__N_1605[30]), .S1(d5_73__N_1605[31]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_32.INIT0 = 16'h5666;
    defparam add_80_32.INIT1 = 16'h5666;
    defparam add_80_32.INJECT1_0 = "NO";
    defparam add_80_32.INJECT1_1 = "NO";
    CCU2D add_80_30 (.A0(d4[28]), .B0(d5[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[29]), .B1(d5[29]), .C1(GND_net), .D1(GND_net), .CIN(n2812), 
          .COUT(n2813), .S0(d5_73__N_1605[28]), .S1(d5_73__N_1605[29]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_30.INIT0 = 16'h5666;
    defparam add_80_30.INIT1 = 16'h5666;
    defparam add_80_30.INJECT1_0 = "NO";
    defparam add_80_30.INJECT1_1 = "NO";
    CCU2D add_80_28 (.A0(d4[26]), .B0(d5[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[27]), .B1(d5[27]), .C1(GND_net), .D1(GND_net), .CIN(n2811), 
          .COUT(n2812), .S0(d5_73__N_1605[26]), .S1(d5_73__N_1605[27]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_28.INIT0 = 16'h5666;
    defparam add_80_28.INIT1 = 16'h5666;
    defparam add_80_28.INJECT1_0 = "NO";
    defparam add_80_28.INJECT1_1 = "NO";
    CCU2D add_80_26 (.A0(d4[24]), .B0(d5[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[25]), .B1(d5[25]), .C1(GND_net), .D1(GND_net), .CIN(n2810), 
          .COUT(n2811), .S0(d5_73__N_1605[24]), .S1(d5_73__N_1605[25]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_26.INIT0 = 16'h5666;
    defparam add_80_26.INIT1 = 16'h5666;
    defparam add_80_26.INJECT1_0 = "NO";
    defparam add_80_26.INJECT1_1 = "NO";
    CCU2D add_80_24 (.A0(d4[22]), .B0(d5[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[23]), .B1(d5[23]), .C1(GND_net), .D1(GND_net), .CIN(n2809), 
          .COUT(n2810), .S0(d5_73__N_1605[22]), .S1(d5_73__N_1605[23]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_24.INIT0 = 16'h5666;
    defparam add_80_24.INIT1 = 16'h5666;
    defparam add_80_24.INJECT1_0 = "NO";
    defparam add_80_24.INJECT1_1 = "NO";
    CCU2D add_80_22 (.A0(d4[20]), .B0(d5[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[21]), .B1(d5[21]), .C1(GND_net), .D1(GND_net), .CIN(n2808), 
          .COUT(n2809), .S0(d5_73__N_1605[20]), .S1(d5_73__N_1605[21]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_22.INIT0 = 16'h5666;
    defparam add_80_22.INIT1 = 16'h5666;
    defparam add_80_22.INJECT1_0 = "NO";
    defparam add_80_22.INJECT1_1 = "NO";
    CCU2D add_80_20 (.A0(d4[18]), .B0(d5[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[19]), .B1(d5[19]), .C1(GND_net), .D1(GND_net), .CIN(n2807), 
          .COUT(n2808), .S0(d5_73__N_1605[18]), .S1(d5_73__N_1605[19]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_20.INIT0 = 16'h5666;
    defparam add_80_20.INIT1 = 16'h5666;
    defparam add_80_20.INJECT1_0 = "NO";
    defparam add_80_20.INJECT1_1 = "NO";
    CCU2D add_80_18 (.A0(d4[16]), .B0(d5[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[17]), .B1(d5[17]), .C1(GND_net), .D1(GND_net), .CIN(n2806), 
          .COUT(n2807), .S0(d5_73__N_1605[16]), .S1(d5_73__N_1605[17]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_18.INIT0 = 16'h5666;
    defparam add_80_18.INIT1 = 16'h5666;
    defparam add_80_18.INJECT1_0 = "NO";
    defparam add_80_18.INJECT1_1 = "NO";
    CCU2D add_80_16 (.A0(d4[14]), .B0(d5[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[15]), .B1(d5[15]), .C1(GND_net), .D1(GND_net), .CIN(n2805), 
          .COUT(n2806), .S0(d5_73__N_1605[14]), .S1(d5_73__N_1605[15]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_16.INIT0 = 16'h5666;
    defparam add_80_16.INIT1 = 16'h5666;
    defparam add_80_16.INJECT1_0 = "NO";
    defparam add_80_16.INJECT1_1 = "NO";
    CCU2D add_80_14 (.A0(d4[12]), .B0(d5[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[13]), .B1(d5[13]), .C1(GND_net), .D1(GND_net), .CIN(n2804), 
          .COUT(n2805), .S0(d5_73__N_1605[12]), .S1(d5_73__N_1605[13]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_14.INIT0 = 16'h5666;
    defparam add_80_14.INIT1 = 16'h5666;
    defparam add_80_14.INJECT1_0 = "NO";
    defparam add_80_14.INJECT1_1 = "NO";
    CCU2D add_80_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n2803), 
          .COUT(n2804), .S0(d5_73__N_1605[10]), .S1(d5_73__N_1605[11]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_12.INIT0 = 16'h5666;
    defparam add_80_12.INIT1 = 16'h5666;
    defparam add_80_12.INJECT1_0 = "NO";
    defparam add_80_12.INJECT1_1 = "NO";
    CCU2D add_80_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n2802), 
          .COUT(n2803), .S0(d5_73__N_1605[8]), .S1(d5_73__N_1605[9]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_10.INIT0 = 16'h5666;
    defparam add_80_10.INIT1 = 16'h5666;
    defparam add_80_10.INJECT1_0 = "NO";
    defparam add_80_10.INJECT1_1 = "NO";
    CCU2D add_80_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n2801), 
          .COUT(n2802), .S0(d5_73__N_1605[6]), .S1(d5_73__N_1605[7]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_8.INIT0 = 16'h5666;
    defparam add_80_8.INIT1 = 16'h5666;
    defparam add_80_8.INJECT1_0 = "NO";
    defparam add_80_8.INJECT1_1 = "NO";
    CCU2D add_80_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n2800), 
          .COUT(n2801), .S0(d5_73__N_1605[4]), .S1(d5_73__N_1605[5]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_6.INIT0 = 16'h5666;
    defparam add_80_6.INIT1 = 16'h5666;
    defparam add_80_6.INJECT1_0 = "NO";
    defparam add_80_6.INJECT1_1 = "NO";
    CCU2D add_80_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n2799), 
          .COUT(n2800), .S0(d5_73__N_1605[2]), .S1(d5_73__N_1605[3]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_4.INIT0 = 16'h5666;
    defparam add_80_4.INIT1 = 16'h5666;
    defparam add_80_4.INJECT1_0 = "NO";
    defparam add_80_4.INJECT1_1 = "NO";
    CCU2D add_80_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n2799), 
          .S1(d5_73__N_1605[1]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_80_2.INIT0 = 16'h7000;
    defparam add_80_2.INIT1 = 16'h5666;
    defparam add_80_2.INJECT1_0 = "NO";
    defparam add_80_2.INJECT1_1 = "NO";
    CCU2D add_75_38 (.A0(d3[36]), .B0(d4[36]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2797), 
          .S0(d4_73__N_1531[36]), .S1(n701));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_38.INIT0 = 16'h5666;
    defparam add_75_38.INIT1 = 16'h0000;
    defparam add_75_38.INJECT1_0 = "NO";
    defparam add_75_38.INJECT1_1 = "NO";
    CCU2D add_75_36 (.A0(d3[34]), .B0(d4[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[35]), .B1(d4[35]), .C1(GND_net), .D1(GND_net), .CIN(n2796), 
          .COUT(n2797), .S0(d4_73__N_1531[34]), .S1(d4_73__N_1531[35]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_36.INIT0 = 16'h5666;
    defparam add_75_36.INIT1 = 16'h5666;
    defparam add_75_36.INJECT1_0 = "NO";
    defparam add_75_36.INJECT1_1 = "NO";
    CCU2D add_75_34 (.A0(d3[32]), .B0(d4[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[33]), .B1(d4[33]), .C1(GND_net), .D1(GND_net), .CIN(n2795), 
          .COUT(n2796), .S0(d4_73__N_1531[32]), .S1(d4_73__N_1531[33]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_34.INIT0 = 16'h5666;
    defparam add_75_34.INIT1 = 16'h5666;
    defparam add_75_34.INJECT1_0 = "NO";
    defparam add_75_34.INJECT1_1 = "NO";
    CCU2D add_75_32 (.A0(d3[30]), .B0(d4[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[31]), .B1(d4[31]), .C1(GND_net), .D1(GND_net), .CIN(n2794), 
          .COUT(n2795), .S0(d4_73__N_1531[30]), .S1(d4_73__N_1531[31]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_32.INIT0 = 16'h5666;
    defparam add_75_32.INIT1 = 16'h5666;
    defparam add_75_32.INJECT1_0 = "NO";
    defparam add_75_32.INJECT1_1 = "NO";
    CCU2D add_75_30 (.A0(d3[28]), .B0(d4[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[29]), .B1(d4[29]), .C1(GND_net), .D1(GND_net), .CIN(n2793), 
          .COUT(n2794), .S0(d4_73__N_1531[28]), .S1(d4_73__N_1531[29]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_30.INIT0 = 16'h5666;
    defparam add_75_30.INIT1 = 16'h5666;
    defparam add_75_30.INJECT1_0 = "NO";
    defparam add_75_30.INJECT1_1 = "NO";
    CCU2D add_75_28 (.A0(d3[26]), .B0(d4[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[27]), .B1(d4[27]), .C1(GND_net), .D1(GND_net), .CIN(n2792), 
          .COUT(n2793), .S0(d4_73__N_1531[26]), .S1(d4_73__N_1531[27]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_28.INIT0 = 16'h5666;
    defparam add_75_28.INIT1 = 16'h5666;
    defparam add_75_28.INJECT1_0 = "NO";
    defparam add_75_28.INJECT1_1 = "NO";
    CCU2D add_75_26 (.A0(d3[24]), .B0(d4[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[25]), .B1(d4[25]), .C1(GND_net), .D1(GND_net), .CIN(n2791), 
          .COUT(n2792), .S0(d4_73__N_1531[24]), .S1(d4_73__N_1531[25]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_26.INIT0 = 16'h5666;
    defparam add_75_26.INIT1 = 16'h5666;
    defparam add_75_26.INJECT1_0 = "NO";
    defparam add_75_26.INJECT1_1 = "NO";
    CCU2D add_75_24 (.A0(d3[22]), .B0(d4[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[23]), .B1(d4[23]), .C1(GND_net), .D1(GND_net), .CIN(n2790), 
          .COUT(n2791), .S0(d4_73__N_1531[22]), .S1(d4_73__N_1531[23]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_24.INIT0 = 16'h5666;
    defparam add_75_24.INIT1 = 16'h5666;
    defparam add_75_24.INJECT1_0 = "NO";
    defparam add_75_24.INJECT1_1 = "NO";
    CCU2D add_75_22 (.A0(d3[20]), .B0(d4[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[21]), .B1(d4[21]), .C1(GND_net), .D1(GND_net), .CIN(n2789), 
          .COUT(n2790), .S0(d4_73__N_1531[20]), .S1(d4_73__N_1531[21]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_22.INIT0 = 16'h5666;
    defparam add_75_22.INIT1 = 16'h5666;
    defparam add_75_22.INJECT1_0 = "NO";
    defparam add_75_22.INJECT1_1 = "NO";
    CCU2D add_75_20 (.A0(d3[18]), .B0(d4[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[19]), .B1(d4[19]), .C1(GND_net), .D1(GND_net), .CIN(n2788), 
          .COUT(n2789), .S0(d4_73__N_1531[18]), .S1(d4_73__N_1531[19]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_20.INIT0 = 16'h5666;
    defparam add_75_20.INIT1 = 16'h5666;
    defparam add_75_20.INJECT1_0 = "NO";
    defparam add_75_20.INJECT1_1 = "NO";
    CCU2D add_75_18 (.A0(d3[16]), .B0(d4[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[17]), .B1(d4[17]), .C1(GND_net), .D1(GND_net), .CIN(n2787), 
          .COUT(n2788), .S0(d4_73__N_1531[16]), .S1(d4_73__N_1531[17]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_18.INIT0 = 16'h5666;
    defparam add_75_18.INIT1 = 16'h5666;
    defparam add_75_18.INJECT1_0 = "NO";
    defparam add_75_18.INJECT1_1 = "NO";
    CCU2D add_75_16 (.A0(d3[14]), .B0(d4[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[15]), .B1(d4[15]), .C1(GND_net), .D1(GND_net), .CIN(n2786), 
          .COUT(n2787), .S0(d4_73__N_1531[14]), .S1(d4_73__N_1531[15]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_16.INIT0 = 16'h5666;
    defparam add_75_16.INIT1 = 16'h5666;
    defparam add_75_16.INJECT1_0 = "NO";
    defparam add_75_16.INJECT1_1 = "NO";
    CCU2D add_75_14 (.A0(d3[12]), .B0(d4[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[13]), .B1(d4[13]), .C1(GND_net), .D1(GND_net), .CIN(n2785), 
          .COUT(n2786), .S0(d4_73__N_1531[12]), .S1(d4_73__N_1531[13]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_14.INIT0 = 16'h5666;
    defparam add_75_14.INIT1 = 16'h5666;
    defparam add_75_14.INJECT1_0 = "NO";
    defparam add_75_14.INJECT1_1 = "NO";
    CCU2D add_75_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n2784), 
          .COUT(n2785), .S0(d4_73__N_1531[10]), .S1(d4_73__N_1531[11]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_12.INIT0 = 16'h5666;
    defparam add_75_12.INIT1 = 16'h5666;
    defparam add_75_12.INJECT1_0 = "NO";
    defparam add_75_12.INJECT1_1 = "NO";
    CCU2D add_75_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n2783), 
          .COUT(n2784), .S0(d4_73__N_1531[8]), .S1(d4_73__N_1531[9]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_10.INIT0 = 16'h5666;
    defparam add_75_10.INIT1 = 16'h5666;
    defparam add_75_10.INJECT1_0 = "NO";
    defparam add_75_10.INJECT1_1 = "NO";
    CCU2D add_75_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n2782), 
          .COUT(n2783), .S0(d4_73__N_1531[6]), .S1(d4_73__N_1531[7]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_8.INIT0 = 16'h5666;
    defparam add_75_8.INIT1 = 16'h5666;
    defparam add_75_8.INJECT1_0 = "NO";
    defparam add_75_8.INJECT1_1 = "NO";
    CCU2D add_75_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n2781), 
          .COUT(n2782), .S0(d4_73__N_1531[4]), .S1(d4_73__N_1531[5]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_6.INIT0 = 16'h5666;
    defparam add_75_6.INIT1 = 16'h5666;
    defparam add_75_6.INJECT1_0 = "NO";
    defparam add_75_6.INJECT1_1 = "NO";
    CCU2D add_75_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n2780), 
          .COUT(n2781), .S0(d4_73__N_1531[2]), .S1(d4_73__N_1531[3]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_4.INIT0 = 16'h5666;
    defparam add_75_4.INIT1 = 16'h5666;
    defparam add_75_4.INJECT1_0 = "NO";
    defparam add_75_4.INJECT1_1 = "NO";
    CCU2D add_75_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n2780), 
          .S1(d4_73__N_1531[1]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_75_2.INIT0 = 16'h7000;
    defparam add_75_2.INIT1 = 16'h5666;
    defparam add_75_2.INJECT1_0 = "NO";
    defparam add_75_2.INJECT1_1 = "NO";
    LUT4 mux_114_i3_3_lut (.A(n1326[31]), .B(n1365[31]), .C(n1325), .Z(n1404[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i3_3_lut.init = 16'hcaca;
    CCU2D add_70_38 (.A0(d2[36]), .B0(d3[36]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2778), 
          .S0(d3_73__N_1457[36]), .S1(n545));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_38.INIT0 = 16'h5666;
    defparam add_70_38.INIT1 = 16'h0000;
    defparam add_70_38.INJECT1_0 = "NO";
    defparam add_70_38.INJECT1_1 = "NO";
    CCU2D add_70_36 (.A0(d2[34]), .B0(d3[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[35]), .B1(d3[35]), .C1(GND_net), .D1(GND_net), .CIN(n2777), 
          .COUT(n2778), .S0(d3_73__N_1457[34]), .S1(d3_73__N_1457[35]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_36.INIT0 = 16'h5666;
    defparam add_70_36.INIT1 = 16'h5666;
    defparam add_70_36.INJECT1_0 = "NO";
    defparam add_70_36.INJECT1_1 = "NO";
    CCU2D add_70_34 (.A0(d2[32]), .B0(d3[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[33]), .B1(d3[33]), .C1(GND_net), .D1(GND_net), .CIN(n2776), 
          .COUT(n2777), .S0(d3_73__N_1457[32]), .S1(d3_73__N_1457[33]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_34.INIT0 = 16'h5666;
    defparam add_70_34.INIT1 = 16'h5666;
    defparam add_70_34.INJECT1_0 = "NO";
    defparam add_70_34.INJECT1_1 = "NO";
    CCU2D add_70_32 (.A0(d2[30]), .B0(d3[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[31]), .B1(d3[31]), .C1(GND_net), .D1(GND_net), .CIN(n2775), 
          .COUT(n2776), .S0(d3_73__N_1457[30]), .S1(d3_73__N_1457[31]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_32.INIT0 = 16'h5666;
    defparam add_70_32.INIT1 = 16'h5666;
    defparam add_70_32.INJECT1_0 = "NO";
    defparam add_70_32.INJECT1_1 = "NO";
    CCU2D add_70_30 (.A0(d2[28]), .B0(d3[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[29]), .B1(d3[29]), .C1(GND_net), .D1(GND_net), .CIN(n2774), 
          .COUT(n2775), .S0(d3_73__N_1457[28]), .S1(d3_73__N_1457[29]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_30.INIT0 = 16'h5666;
    defparam add_70_30.INIT1 = 16'h5666;
    defparam add_70_30.INJECT1_0 = "NO";
    defparam add_70_30.INJECT1_1 = "NO";
    CCU2D add_70_28 (.A0(d2[26]), .B0(d3[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[27]), .B1(d3[27]), .C1(GND_net), .D1(GND_net), .CIN(n2773), 
          .COUT(n2774), .S0(d3_73__N_1457[26]), .S1(d3_73__N_1457[27]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_28.INIT0 = 16'h5666;
    defparam add_70_28.INIT1 = 16'h5666;
    defparam add_70_28.INJECT1_0 = "NO";
    defparam add_70_28.INJECT1_1 = "NO";
    CCU2D add_70_26 (.A0(d2[24]), .B0(d3[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[25]), .B1(d3[25]), .C1(GND_net), .D1(GND_net), .CIN(n2772), 
          .COUT(n2773), .S0(d3_73__N_1457[24]), .S1(d3_73__N_1457[25]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_26.INIT0 = 16'h5666;
    defparam add_70_26.INIT1 = 16'h5666;
    defparam add_70_26.INJECT1_0 = "NO";
    defparam add_70_26.INJECT1_1 = "NO";
    CCU2D add_70_24 (.A0(d2[22]), .B0(d3[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[23]), .B1(d3[23]), .C1(GND_net), .D1(GND_net), .CIN(n2771), 
          .COUT(n2772), .S0(d3_73__N_1457[22]), .S1(d3_73__N_1457[23]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_24.INIT0 = 16'h5666;
    defparam add_70_24.INIT1 = 16'h5666;
    defparam add_70_24.INJECT1_0 = "NO";
    defparam add_70_24.INJECT1_1 = "NO";
    CCU2D add_70_22 (.A0(d2[20]), .B0(d3[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[21]), .B1(d3[21]), .C1(GND_net), .D1(GND_net), .CIN(n2770), 
          .COUT(n2771), .S0(d3_73__N_1457[20]), .S1(d3_73__N_1457[21]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_22.INIT0 = 16'h5666;
    defparam add_70_22.INIT1 = 16'h5666;
    defparam add_70_22.INJECT1_0 = "NO";
    defparam add_70_22.INJECT1_1 = "NO";
    CCU2D add_70_20 (.A0(d2[18]), .B0(d3[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[19]), .B1(d3[19]), .C1(GND_net), .D1(GND_net), .CIN(n2769), 
          .COUT(n2770), .S0(d3_73__N_1457[18]), .S1(d3_73__N_1457[19]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_20.INIT0 = 16'h5666;
    defparam add_70_20.INIT1 = 16'h5666;
    defparam add_70_20.INJECT1_0 = "NO";
    defparam add_70_20.INJECT1_1 = "NO";
    CCU2D add_70_18 (.A0(d2[16]), .B0(d3[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[17]), .B1(d3[17]), .C1(GND_net), .D1(GND_net), .CIN(n2768), 
          .COUT(n2769), .S0(d3_73__N_1457[16]), .S1(d3_73__N_1457[17]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_18.INIT0 = 16'h5666;
    defparam add_70_18.INIT1 = 16'h5666;
    defparam add_70_18.INJECT1_0 = "NO";
    defparam add_70_18.INJECT1_1 = "NO";
    CCU2D add_70_16 (.A0(d2[14]), .B0(d3[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[15]), .B1(d3[15]), .C1(GND_net), .D1(GND_net), .CIN(n2767), 
          .COUT(n2768), .S0(d3_73__N_1457[14]), .S1(d3_73__N_1457[15]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_16.INIT0 = 16'h5666;
    defparam add_70_16.INIT1 = 16'h5666;
    defparam add_70_16.INJECT1_0 = "NO";
    defparam add_70_16.INJECT1_1 = "NO";
    CCU2D add_70_14 (.A0(d2[12]), .B0(d3[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[13]), .B1(d3[13]), .C1(GND_net), .D1(GND_net), .CIN(n2766), 
          .COUT(n2767), .S0(d3_73__N_1457[12]), .S1(d3_73__N_1457[13]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_14.INIT0 = 16'h5666;
    defparam add_70_14.INIT1 = 16'h5666;
    defparam add_70_14.INJECT1_0 = "NO";
    defparam add_70_14.INJECT1_1 = "NO";
    CCU2D add_70_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n2765), 
          .COUT(n2766), .S0(d3_73__N_1457[10]), .S1(d3_73__N_1457[11]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_12.INIT0 = 16'h5666;
    defparam add_70_12.INIT1 = 16'h5666;
    defparam add_70_12.INJECT1_0 = "NO";
    defparam add_70_12.INJECT1_1 = "NO";
    CCU2D add_70_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n2764), 
          .COUT(n2765), .S0(d3_73__N_1457[8]), .S1(d3_73__N_1457[9]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_10.INIT0 = 16'h5666;
    defparam add_70_10.INIT1 = 16'h5666;
    defparam add_70_10.INJECT1_0 = "NO";
    defparam add_70_10.INJECT1_1 = "NO";
    CCU2D add_70_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n2763), 
          .COUT(n2764), .S0(d3_73__N_1457[6]), .S1(d3_73__N_1457[7]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_8.INIT0 = 16'h5666;
    defparam add_70_8.INIT1 = 16'h5666;
    defparam add_70_8.INJECT1_0 = "NO";
    defparam add_70_8.INJECT1_1 = "NO";
    CCU2D add_70_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n2762), 
          .COUT(n2763), .S0(d3_73__N_1457[4]), .S1(d3_73__N_1457[5]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_6.INIT0 = 16'h5666;
    defparam add_70_6.INIT1 = 16'h5666;
    defparam add_70_6.INJECT1_0 = "NO";
    defparam add_70_6.INJECT1_1 = "NO";
    CCU2D add_70_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n2761), 
          .COUT(n2762), .S0(d3_73__N_1457[2]), .S1(d3_73__N_1457[3]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_4.INIT0 = 16'h5666;
    defparam add_70_4.INIT1 = 16'h5666;
    defparam add_70_4.INJECT1_0 = "NO";
    defparam add_70_4.INJECT1_1 = "NO";
    CCU2D add_70_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n2761), 
          .S1(d3_73__N_1457[1]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_70_2.INIT0 = 16'h7000;
    defparam add_70_2.INIT1 = 16'h5666;
    defparam add_70_2.INJECT1_0 = "NO";
    defparam add_70_2.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(count[10]), .B(count[1]), .Z(n18)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    CCU2D add_65_38 (.A0(d1[36]), .B0(d2[36]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2759), 
          .S0(d2_73__N_1383[36]), .S1(n389));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_38.INIT0 = 16'h5666;
    defparam add_65_38.INIT1 = 16'h0000;
    defparam add_65_38.INJECT1_0 = "NO";
    defparam add_65_38.INJECT1_1 = "NO";
    CCU2D add_65_36 (.A0(d1[34]), .B0(d2[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[35]), .B1(d2[35]), .C1(GND_net), .D1(GND_net), .CIN(n2758), 
          .COUT(n2759), .S0(d2_73__N_1383[34]), .S1(d2_73__N_1383[35]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_36.INIT0 = 16'h5666;
    defparam add_65_36.INIT1 = 16'h5666;
    defparam add_65_36.INJECT1_0 = "NO";
    defparam add_65_36.INJECT1_1 = "NO";
    CCU2D add_65_34 (.A0(d1[32]), .B0(d2[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[33]), .B1(d2[33]), .C1(GND_net), .D1(GND_net), .CIN(n2757), 
          .COUT(n2758), .S0(d2_73__N_1383[32]), .S1(d2_73__N_1383[33]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_34.INIT0 = 16'h5666;
    defparam add_65_34.INIT1 = 16'h5666;
    defparam add_65_34.INJECT1_0 = "NO";
    defparam add_65_34.INJECT1_1 = "NO";
    CCU2D add_65_32 (.A0(d1[30]), .B0(d2[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[31]), .B1(d2[31]), .C1(GND_net), .D1(GND_net), .CIN(n2756), 
          .COUT(n2757), .S0(d2_73__N_1383[30]), .S1(d2_73__N_1383[31]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_32.INIT0 = 16'h5666;
    defparam add_65_32.INIT1 = 16'h5666;
    defparam add_65_32.INJECT1_0 = "NO";
    defparam add_65_32.INJECT1_1 = "NO";
    CCU2D add_65_30 (.A0(d1[28]), .B0(d2[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[29]), .B1(d2[29]), .C1(GND_net), .D1(GND_net), .CIN(n2755), 
          .COUT(n2756), .S0(d2_73__N_1383[28]), .S1(d2_73__N_1383[29]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_30.INIT0 = 16'h5666;
    defparam add_65_30.INIT1 = 16'h5666;
    defparam add_65_30.INJECT1_0 = "NO";
    defparam add_65_30.INJECT1_1 = "NO";
    CCU2D add_65_28 (.A0(d1[26]), .B0(d2[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[27]), .B1(d2[27]), .C1(GND_net), .D1(GND_net), .CIN(n2754), 
          .COUT(n2755), .S0(d2_73__N_1383[26]), .S1(d2_73__N_1383[27]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_28.INIT0 = 16'h5666;
    defparam add_65_28.INIT1 = 16'h5666;
    defparam add_65_28.INJECT1_0 = "NO";
    defparam add_65_28.INJECT1_1 = "NO";
    CCU2D add_65_26 (.A0(d1[24]), .B0(d2[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[25]), .B1(d2[25]), .C1(GND_net), .D1(GND_net), .CIN(n2753), 
          .COUT(n2754), .S0(d2_73__N_1383[24]), .S1(d2_73__N_1383[25]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_26.INIT0 = 16'h5666;
    defparam add_65_26.INIT1 = 16'h5666;
    defparam add_65_26.INJECT1_0 = "NO";
    defparam add_65_26.INJECT1_1 = "NO";
    CCU2D add_65_24 (.A0(d1[22]), .B0(d2[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[23]), .B1(d2[23]), .C1(GND_net), .D1(GND_net), .CIN(n2752), 
          .COUT(n2753), .S0(d2_73__N_1383[22]), .S1(d2_73__N_1383[23]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_24.INIT0 = 16'h5666;
    defparam add_65_24.INIT1 = 16'h5666;
    defparam add_65_24.INJECT1_0 = "NO";
    defparam add_65_24.INJECT1_1 = "NO";
    CCU2D add_65_22 (.A0(d1[20]), .B0(d2[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[21]), .B1(d2[21]), .C1(GND_net), .D1(GND_net), .CIN(n2751), 
          .COUT(n2752), .S0(d2_73__N_1383[20]), .S1(d2_73__N_1383[21]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_22.INIT0 = 16'h5666;
    defparam add_65_22.INIT1 = 16'h5666;
    defparam add_65_22.INJECT1_0 = "NO";
    defparam add_65_22.INJECT1_1 = "NO";
    CCU2D add_65_20 (.A0(d1[18]), .B0(d2[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[19]), .B1(d2[19]), .C1(GND_net), .D1(GND_net), .CIN(n2750), 
          .COUT(n2751), .S0(d2_73__N_1383[18]), .S1(d2_73__N_1383[19]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_20.INIT0 = 16'h5666;
    defparam add_65_20.INIT1 = 16'h5666;
    defparam add_65_20.INJECT1_0 = "NO";
    defparam add_65_20.INJECT1_1 = "NO";
    CCU2D add_65_18 (.A0(d1[16]), .B0(d2[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[17]), .B1(d2[17]), .C1(GND_net), .D1(GND_net), .CIN(n2749), 
          .COUT(n2750), .S0(d2_73__N_1383[16]), .S1(d2_73__N_1383[17]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_18.INIT0 = 16'h5666;
    defparam add_65_18.INIT1 = 16'h5666;
    defparam add_65_18.INJECT1_0 = "NO";
    defparam add_65_18.INJECT1_1 = "NO";
    CCU2D add_65_16 (.A0(d1[14]), .B0(d2[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[15]), .B1(d2[15]), .C1(GND_net), .D1(GND_net), .CIN(n2748), 
          .COUT(n2749), .S0(d2_73__N_1383[14]), .S1(d2_73__N_1383[15]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_16.INIT0 = 16'h5666;
    defparam add_65_16.INIT1 = 16'h5666;
    defparam add_65_16.INJECT1_0 = "NO";
    defparam add_65_16.INJECT1_1 = "NO";
    CCU2D add_65_14 (.A0(d1[12]), .B0(d2[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[13]), .B1(d2[13]), .C1(GND_net), .D1(GND_net), .CIN(n2747), 
          .COUT(n2748), .S0(d2_73__N_1383[12]), .S1(d2_73__N_1383[13]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_14.INIT0 = 16'h5666;
    defparam add_65_14.INIT1 = 16'h5666;
    defparam add_65_14.INJECT1_0 = "NO";
    defparam add_65_14.INJECT1_1 = "NO";
    CCU2D add_65_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n2746), 
          .COUT(n2747), .S0(d2_73__N_1383[10]), .S1(d2_73__N_1383[11]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_12.INIT0 = 16'h5666;
    defparam add_65_12.INIT1 = 16'h5666;
    defparam add_65_12.INJECT1_0 = "NO";
    defparam add_65_12.INJECT1_1 = "NO";
    CCU2D add_65_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n2745), 
          .COUT(n2746), .S0(d2_73__N_1383[8]), .S1(d2_73__N_1383[9]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_10.INIT0 = 16'h5666;
    defparam add_65_10.INIT1 = 16'h5666;
    defparam add_65_10.INJECT1_0 = "NO";
    defparam add_65_10.INJECT1_1 = "NO";
    CCU2D add_65_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n2744), 
          .COUT(n2745), .S0(d2_73__N_1383[6]), .S1(d2_73__N_1383[7]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_8.INIT0 = 16'h5666;
    defparam add_65_8.INIT1 = 16'h5666;
    defparam add_65_8.INJECT1_0 = "NO";
    defparam add_65_8.INJECT1_1 = "NO";
    CCU2D add_65_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n2743), 
          .COUT(n2744), .S0(d2_73__N_1383[4]), .S1(d2_73__N_1383[5]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_6.INIT0 = 16'h5666;
    defparam add_65_6.INIT1 = 16'h5666;
    defparam add_65_6.INJECT1_0 = "NO";
    defparam add_65_6.INJECT1_1 = "NO";
    CCU2D add_65_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n2742), 
          .COUT(n2743), .S0(d2_73__N_1383[2]), .S1(d2_73__N_1383[3]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_4.INIT0 = 16'h5666;
    defparam add_65_4.INIT1 = 16'h5666;
    defparam add_65_4.INJECT1_0 = "NO";
    defparam add_65_4.INJECT1_1 = "NO";
    CCU2D add_65_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n2742), 
          .S1(d2_73__N_1383[1]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_65_2.INIT0 = 16'h7000;
    defparam add_65_2.INIT1 = 16'h5666;
    defparam add_65_2.INJECT1_0 = "NO";
    defparam add_65_2.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(count[2]), .B(count[8]), .C(count[5]), .D(count[3]), 
         .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D add_102_39 (.A0(d_d8[73]), .B0(n1481), .C0(n1482[36]), .D0(d8[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2740), 
          .S0(n1521[36]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_39.INIT0 = 16'hb874;
    defparam add_102_39.INIT1 = 16'h0000;
    defparam add_102_39.INJECT1_0 = "NO";
    defparam add_102_39.INJECT1_1 = "NO";
    CCU2D add_102_37 (.A0(d_d8[71]), .B0(n1481), .C0(n1482[34]), .D0(d8[71]), 
          .A1(d_d8[72]), .B1(n1481), .C1(n1482[35]), .D1(d8[72]), .CIN(n2739), 
          .COUT(n2740), .S0(n1521[34]), .S1(n1521[35]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_37.INIT0 = 16'hb874;
    defparam add_102_37.INIT1 = 16'hb874;
    defparam add_102_37.INJECT1_0 = "NO";
    defparam add_102_37.INJECT1_1 = "NO";
    CCU2D add_102_35 (.A0(d_d8[69]), .B0(n1481), .C0(n1482[32]), .D0(d8[69]), 
          .A1(d_d8[70]), .B1(n1481), .C1(n1482[33]), .D1(d8[70]), .CIN(n2738), 
          .COUT(n2739), .S0(n1521[32]), .S1(n1521[33]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_35.INIT0 = 16'hb874;
    defparam add_102_35.INIT1 = 16'hb874;
    defparam add_102_35.INJECT1_0 = "NO";
    defparam add_102_35.INJECT1_1 = "NO";
    CCU2D add_102_33 (.A0(d_d8[67]), .B0(n1481), .C0(n1482[30]), .D0(d8[67]), 
          .A1(d_d8[68]), .B1(n1481), .C1(n1482[31]), .D1(d8[68]), .CIN(n2737), 
          .COUT(n2738), .S0(n1521[30]), .S1(n1521[31]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_33.INIT0 = 16'hb874;
    defparam add_102_33.INIT1 = 16'hb874;
    defparam add_102_33.INJECT1_0 = "NO";
    defparam add_102_33.INJECT1_1 = "NO";
    CCU2D add_102_31 (.A0(d_d8[65]), .B0(n1481), .C0(n1482[28]), .D0(d8[65]), 
          .A1(d_d8[66]), .B1(n1481), .C1(n1482[29]), .D1(d8[66]), .CIN(n2736), 
          .COUT(n2737), .S0(n1521[28]), .S1(n1521[29]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_31.INIT0 = 16'hb874;
    defparam add_102_31.INIT1 = 16'hb874;
    defparam add_102_31.INJECT1_0 = "NO";
    defparam add_102_31.INJECT1_1 = "NO";
    CCU2D add_102_29 (.A0(d_d8[63]), .B0(n1481), .C0(n1482[26]), .D0(d8[63]), 
          .A1(d_d8[64]), .B1(n1481), .C1(n1482[27]), .D1(d8[64]), .CIN(n2735), 
          .COUT(n2736), .S0(n1521[26]), .S1(n1521[27]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_29.INIT0 = 16'hb874;
    defparam add_102_29.INIT1 = 16'hb874;
    defparam add_102_29.INJECT1_0 = "NO";
    defparam add_102_29.INJECT1_1 = "NO";
    CCU2D add_102_27 (.A0(d_d8[61]), .B0(n1481), .C0(n1482[24]), .D0(d8[61]), 
          .A1(d_d8[62]), .B1(n1481), .C1(n1482[25]), .D1(d8[62]), .CIN(n2734), 
          .COUT(n2735), .S0(n1521[24]), .S1(n1521[25]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_27.INIT0 = 16'hb874;
    defparam add_102_27.INIT1 = 16'hb874;
    defparam add_102_27.INJECT1_0 = "NO";
    defparam add_102_27.INJECT1_1 = "NO";
    CCU2D add_102_25 (.A0(d_d8[59]), .B0(n1481), .C0(n1482[22]), .D0(d8[59]), 
          .A1(d_d8[60]), .B1(n1481), .C1(n1482[23]), .D1(d8[60]), .CIN(n2733), 
          .COUT(n2734), .S0(n1521[22]), .S1(n1521[23]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_25.INIT0 = 16'hb874;
    defparam add_102_25.INIT1 = 16'hb874;
    defparam add_102_25.INJECT1_0 = "NO";
    defparam add_102_25.INJECT1_1 = "NO";
    CCU2D add_102_23 (.A0(d_d8[57]), .B0(n1481), .C0(n1482[20]), .D0(d8[57]), 
          .A1(d_d8[58]), .B1(n1481), .C1(n1482[21]), .D1(d8[58]), .CIN(n2732), 
          .COUT(n2733), .S0(n1521[20]), .S1(n1521[21]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_23.INIT0 = 16'hb874;
    defparam add_102_23.INIT1 = 16'hb874;
    defparam add_102_23.INJECT1_0 = "NO";
    defparam add_102_23.INJECT1_1 = "NO";
    CCU2D add_102_21 (.A0(d_d8[55]), .B0(n1481), .C0(n1482[18]), .D0(d8[55]), 
          .A1(d_d8[56]), .B1(n1481), .C1(n1482[19]), .D1(d8[56]), .CIN(n2731), 
          .COUT(n2732), .S0(n1521[18]), .S1(n1521[19]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_21.INIT0 = 16'hb874;
    defparam add_102_21.INIT1 = 16'hb874;
    defparam add_102_21.INJECT1_0 = "NO";
    defparam add_102_21.INJECT1_1 = "NO";
    CCU2D add_102_19 (.A0(d_d8[53]), .B0(n1481), .C0(n1482[16]), .D0(d8[53]), 
          .A1(d_d8[54]), .B1(n1481), .C1(n1482[17]), .D1(d8[54]), .CIN(n2730), 
          .COUT(n2731), .S0(n1521[16]), .S1(n1521[17]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_19.INIT0 = 16'hb874;
    defparam add_102_19.INIT1 = 16'hb874;
    defparam add_102_19.INJECT1_0 = "NO";
    defparam add_102_19.INJECT1_1 = "NO";
    CCU2D add_102_17 (.A0(d_d8[51]), .B0(n1481), .C0(n1482[14]), .D0(d8[51]), 
          .A1(d_d8[52]), .B1(n1481), .C1(n1482[15]), .D1(d8[52]), .CIN(n2729), 
          .COUT(n2730), .S0(n1521[14]), .S1(n1521[15]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_17.INIT0 = 16'hb874;
    defparam add_102_17.INIT1 = 16'hb874;
    defparam add_102_17.INJECT1_0 = "NO";
    defparam add_102_17.INJECT1_1 = "NO";
    CCU2D add_102_15 (.A0(d_d8[49]), .B0(n1481), .C0(n1482[12]), .D0(d8[49]), 
          .A1(d_d8[50]), .B1(n1481), .C1(n1482[13]), .D1(d8[50]), .CIN(n2728), 
          .COUT(n2729), .S0(n1521[12]), .S1(n1521[13]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_15.INIT0 = 16'hb874;
    defparam add_102_15.INIT1 = 16'hb874;
    defparam add_102_15.INJECT1_0 = "NO";
    defparam add_102_15.INJECT1_1 = "NO";
    CCU2D add_102_13 (.A0(d_d8[47]), .B0(n1481), .C0(n1482[10]), .D0(d8[47]), 
          .A1(d_d8[48]), .B1(n1481), .C1(n1482[11]), .D1(d8[48]), .CIN(n2727), 
          .COUT(n2728), .S0(n1521[10]), .S1(n1521[11]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_13.INIT0 = 16'hb874;
    defparam add_102_13.INIT1 = 16'hb874;
    defparam add_102_13.INJECT1_0 = "NO";
    defparam add_102_13.INJECT1_1 = "NO";
    CCU2D add_102_11 (.A0(d_d8[45]), .B0(n1481), .C0(n1482[8]), .D0(d8[45]), 
          .A1(d_d8[46]), .B1(n1481), .C1(n1482[9]), .D1(d8[46]), .CIN(n2726), 
          .COUT(n2727), .S0(n1521[8]), .S1(n1521[9]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_11.INIT0 = 16'hb874;
    defparam add_102_11.INIT1 = 16'hb874;
    defparam add_102_11.INJECT1_0 = "NO";
    defparam add_102_11.INJECT1_1 = "NO";
    CCU2D add_102_9 (.A0(d_d8[43]), .B0(n1481), .C0(n1482[6]), .D0(d8[43]), 
          .A1(d_d8[44]), .B1(n1481), .C1(n1482[7]), .D1(d8[44]), .CIN(n2725), 
          .COUT(n2726), .S0(n1521[6]), .S1(n1521[7]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_9.INIT0 = 16'hb874;
    defparam add_102_9.INIT1 = 16'hb874;
    defparam add_102_9.INJECT1_0 = "NO";
    defparam add_102_9.INJECT1_1 = "NO";
    CCU2D add_102_7 (.A0(d_d8[41]), .B0(n1481), .C0(n1482[4]), .D0(d8[41]), 
          .A1(d_d8[42]), .B1(n1481), .C1(n1482[5]), .D1(d8[42]), .CIN(n2724), 
          .COUT(n2725), .S0(n1521[4]), .S1(n1521[5]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_7.INIT0 = 16'hb874;
    defparam add_102_7.INIT1 = 16'hb874;
    defparam add_102_7.INJECT1_0 = "NO";
    defparam add_102_7.INJECT1_1 = "NO";
    CCU2D add_102_5 (.A0(d_d8[39]), .B0(n1481), .C0(n1482[2]), .D0(d8[39]), 
          .A1(d_d8[40]), .B1(n1481), .C1(n1482[3]), .D1(d8[40]), .CIN(n2723), 
          .COUT(n2724), .S0(n1521[2]), .S1(n1521[3]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_5.INIT0 = 16'hb874;
    defparam add_102_5.INIT1 = 16'hb874;
    defparam add_102_5.INJECT1_0 = "NO";
    defparam add_102_5.INJECT1_1 = "NO";
    CCU2D add_102_3 (.A0(d_d8[37]), .B0(n1481), .C0(n1482[0]), .D0(d8[37]), 
          .A1(d_d8[38]), .B1(n1481), .C1(n1482[1]), .D1(d8[38]), .CIN(n2722), 
          .COUT(n2723), .S0(n1521[0]), .S1(n1521[1]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_3.INIT0 = 16'hb874;
    defparam add_102_3.INIT1 = 16'hb874;
    defparam add_102_3.INJECT1_0 = "NO";
    defparam add_102_3.INJECT1_1 = "NO";
    CCU2D add_102_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1481), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2722));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_102_1.INIT0 = 16'hF000;
    defparam add_102_1.INIT1 = 16'h0555;
    defparam add_102_1.INJECT1_0 = "NO";
    defparam add_102_1.INJECT1_1 = "NO";
    CCU2D add_106_37 (.A0(d6[72]), .B0(d_d6[72]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[73]), .B1(d_d6[73]), .C1(GND_net), .D1(GND_net), .CIN(n2685), 
          .S0(n1638[35]), .S1(n1638[36]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_37.INIT0 = 16'h5999;
    defparam add_106_37.INIT1 = 16'h5999;
    defparam add_106_37.INJECT1_0 = "NO";
    defparam add_106_37.INJECT1_1 = "NO";
    CCU2D add_106_35 (.A0(d6[70]), .B0(d_d6[70]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[71]), .B1(d_d6[71]), .C1(GND_net), .D1(GND_net), .CIN(n2684), 
          .COUT(n2685), .S0(n1638[33]), .S1(n1638[34]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_35.INIT0 = 16'h5999;
    defparam add_106_35.INIT1 = 16'h5999;
    defparam add_106_35.INJECT1_0 = "NO";
    defparam add_106_35.INJECT1_1 = "NO";
    CCU2D add_106_33 (.A0(d6[68]), .B0(d_d6[68]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[69]), .B1(d_d6[69]), .C1(GND_net), .D1(GND_net), .CIN(n2683), 
          .COUT(n2684), .S0(n1638[31]), .S1(n1638[32]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_33.INIT0 = 16'h5999;
    defparam add_106_33.INIT1 = 16'h5999;
    defparam add_106_33.INJECT1_0 = "NO";
    defparam add_106_33.INJECT1_1 = "NO";
    CCU2D add_106_31 (.A0(d6[66]), .B0(d_d6[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[67]), .B1(d_d6[67]), .C1(GND_net), .D1(GND_net), .CIN(n2682), 
          .COUT(n2683), .S0(n1638[29]), .S1(n1638[30]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_31.INIT0 = 16'h5999;
    defparam add_106_31.INIT1 = 16'h5999;
    defparam add_106_31.INJECT1_0 = "NO";
    defparam add_106_31.INJECT1_1 = "NO";
    CCU2D add_106_29 (.A0(d6[64]), .B0(d_d6[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[65]), .B1(d_d6[65]), .C1(GND_net), .D1(GND_net), .CIN(n2681), 
          .COUT(n2682), .S0(n1638[27]), .S1(n1638[28]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_29.INIT0 = 16'h5999;
    defparam add_106_29.INIT1 = 16'h5999;
    defparam add_106_29.INJECT1_0 = "NO";
    defparam add_106_29.INJECT1_1 = "NO";
    CCU2D add_106_27 (.A0(d6[62]), .B0(d_d6[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[63]), .B1(d_d6[63]), .C1(GND_net), .D1(GND_net), .CIN(n2680), 
          .COUT(n2681), .S0(n1638[25]), .S1(n1638[26]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_27.INIT0 = 16'h5999;
    defparam add_106_27.INIT1 = 16'h5999;
    defparam add_106_27.INJECT1_0 = "NO";
    defparam add_106_27.INJECT1_1 = "NO";
    CCU2D add_106_25 (.A0(d6[60]), .B0(d_d6[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[61]), .B1(d_d6[61]), .C1(GND_net), .D1(GND_net), .CIN(n2679), 
          .COUT(n2680), .S0(n1638[23]), .S1(n1638[24]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_25.INIT0 = 16'h5999;
    defparam add_106_25.INIT1 = 16'h5999;
    defparam add_106_25.INJECT1_0 = "NO";
    defparam add_106_25.INJECT1_1 = "NO";
    CCU2D add_106_23 (.A0(d6[58]), .B0(d_d6[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[59]), .B1(d_d6[59]), .C1(GND_net), .D1(GND_net), .CIN(n2678), 
          .COUT(n2679), .S0(n1638[21]), .S1(n1638[22]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_23.INIT0 = 16'h5999;
    defparam add_106_23.INIT1 = 16'h5999;
    defparam add_106_23.INJECT1_0 = "NO";
    defparam add_106_23.INJECT1_1 = "NO";
    CCU2D add_106_21 (.A0(d6[56]), .B0(d_d6[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[57]), .B1(d_d6[57]), .C1(GND_net), .D1(GND_net), .CIN(n2677), 
          .COUT(n2678), .S0(n1638[19]), .S1(n1638[20]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_21.INIT0 = 16'h5999;
    defparam add_106_21.INIT1 = 16'h5999;
    defparam add_106_21.INJECT1_0 = "NO";
    defparam add_106_21.INJECT1_1 = "NO";
    CCU2D add_106_19 (.A0(d6[54]), .B0(d_d6[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[55]), .B1(d_d6[55]), .C1(GND_net), .D1(GND_net), .CIN(n2676), 
          .COUT(n2677), .S0(n1638[17]), .S1(n1638[18]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_19.INIT0 = 16'h5999;
    defparam add_106_19.INIT1 = 16'h5999;
    defparam add_106_19.INJECT1_0 = "NO";
    defparam add_106_19.INJECT1_1 = "NO";
    CCU2D add_106_17 (.A0(d6[52]), .B0(d_d6[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[53]), .B1(d_d6[53]), .C1(GND_net), .D1(GND_net), .CIN(n2675), 
          .COUT(n2676), .S0(n1638[15]), .S1(n1638[16]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_17.INIT0 = 16'h5999;
    defparam add_106_17.INIT1 = 16'h5999;
    defparam add_106_17.INJECT1_0 = "NO";
    defparam add_106_17.INJECT1_1 = "NO";
    CCU2D add_106_15 (.A0(d6[50]), .B0(d_d6[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[51]), .B1(d_d6[51]), .C1(GND_net), .D1(GND_net), .CIN(n2674), 
          .COUT(n2675), .S0(n1638[13]), .S1(n1638[14]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_15.INIT0 = 16'h5999;
    defparam add_106_15.INIT1 = 16'h5999;
    defparam add_106_15.INJECT1_0 = "NO";
    defparam add_106_15.INJECT1_1 = "NO";
    CCU2D add_106_13 (.A0(d6[48]), .B0(d_d6[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[49]), .B1(d_d6[49]), .C1(GND_net), .D1(GND_net), .CIN(n2673), 
          .COUT(n2674), .S0(n1638[11]), .S1(n1638[12]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_13.INIT0 = 16'h5999;
    defparam add_106_13.INIT1 = 16'h5999;
    defparam add_106_13.INJECT1_0 = "NO";
    defparam add_106_13.INJECT1_1 = "NO";
    CCU2D add_106_11 (.A0(d6[46]), .B0(d_d6[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[47]), .B1(d_d6[47]), .C1(GND_net), .D1(GND_net), .CIN(n2672), 
          .COUT(n2673), .S0(n1638[9]), .S1(n1638[10]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_11.INIT0 = 16'h5999;
    defparam add_106_11.INIT1 = 16'h5999;
    defparam add_106_11.INJECT1_0 = "NO";
    defparam add_106_11.INJECT1_1 = "NO";
    CCU2D add_106_9 (.A0(d6[44]), .B0(d_d6[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[45]), .B1(d_d6[45]), .C1(GND_net), .D1(GND_net), .CIN(n2671), 
          .COUT(n2672), .S0(n1638[7]), .S1(n1638[8]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_9.INIT0 = 16'h5999;
    defparam add_106_9.INIT1 = 16'h5999;
    defparam add_106_9.INJECT1_0 = "NO";
    defparam add_106_9.INJECT1_1 = "NO";
    CCU2D add_106_7 (.A0(d6[42]), .B0(d_d6[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[43]), .B1(d_d6[43]), .C1(GND_net), .D1(GND_net), .CIN(n2670), 
          .COUT(n2671), .S0(n1638[5]), .S1(n1638[6]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_7.INIT0 = 16'h5999;
    defparam add_106_7.INIT1 = 16'h5999;
    defparam add_106_7.INJECT1_0 = "NO";
    defparam add_106_7.INJECT1_1 = "NO";
    CCU2D add_106_5 (.A0(d6[40]), .B0(d_d6[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[41]), .B1(d_d6[41]), .C1(GND_net), .D1(GND_net), .CIN(n2669), 
          .COUT(n2670), .S0(n1638[3]), .S1(n1638[4]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_5.INIT0 = 16'h5999;
    defparam add_106_5.INIT1 = 16'h5999;
    defparam add_106_5.INJECT1_0 = "NO";
    defparam add_106_5.INJECT1_1 = "NO";
    CCU2D add_106_3 (.A0(d6[38]), .B0(d_d6[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[39]), .B1(d_d6[39]), .C1(GND_net), .D1(GND_net), .CIN(n2668), 
          .COUT(n2669), .S0(n1638[1]), .S1(n1638[2]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_3.INIT0 = 16'h5999;
    defparam add_106_3.INIT1 = 16'h5999;
    defparam add_106_3.INJECT1_0 = "NO";
    defparam add_106_3.INJECT1_1 = "NO";
    CCU2D add_106_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[37]), .B1(d_d6[37]), .C1(GND_net), .D1(GND_net), .COUT(n2668), 
          .S1(n1638[0]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_106_1.INIT0 = 16'hF000;
    defparam add_106_1.INIT1 = 16'h5999;
    defparam add_106_1.INJECT1_0 = "NO";
    defparam add_106_1.INJECT1_1 = "NO";
    CCU2D add_107_39 (.A0(d_d6[73]), .B0(n1637), .C0(n1638[36]), .D0(d6[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2667), 
          .S0(n1677[36]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_39.INIT0 = 16'hb874;
    defparam add_107_39.INIT1 = 16'h0000;
    defparam add_107_39.INJECT1_0 = "NO";
    defparam add_107_39.INJECT1_1 = "NO";
    CCU2D add_107_37 (.A0(d_d6[71]), .B0(n1637), .C0(n1638[34]), .D0(d6[71]), 
          .A1(d_d6[72]), .B1(n1637), .C1(n1638[35]), .D1(d6[72]), .CIN(n2666), 
          .COUT(n2667), .S0(n1677[34]), .S1(n1677[35]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_37.INIT0 = 16'hb874;
    defparam add_107_37.INIT1 = 16'hb874;
    defparam add_107_37.INJECT1_0 = "NO";
    defparam add_107_37.INJECT1_1 = "NO";
    CCU2D add_107_35 (.A0(d_d6[69]), .B0(n1637), .C0(n1638[32]), .D0(d6[69]), 
          .A1(d_d6[70]), .B1(n1637), .C1(n1638[33]), .D1(d6[70]), .CIN(n2665), 
          .COUT(n2666), .S0(n1677[32]), .S1(n1677[33]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_35.INIT0 = 16'hb874;
    defparam add_107_35.INIT1 = 16'hb874;
    defparam add_107_35.INJECT1_0 = "NO";
    defparam add_107_35.INJECT1_1 = "NO";
    CCU2D add_107_33 (.A0(d_d6[67]), .B0(n1637), .C0(n1638[30]), .D0(d6[67]), 
          .A1(d_d6[68]), .B1(n1637), .C1(n1638[31]), .D1(d6[68]), .CIN(n2664), 
          .COUT(n2665), .S0(n1677[30]), .S1(n1677[31]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_33.INIT0 = 16'hb874;
    defparam add_107_33.INIT1 = 16'hb874;
    defparam add_107_33.INJECT1_0 = "NO";
    defparam add_107_33.INJECT1_1 = "NO";
    CCU2D add_107_31 (.A0(d_d6[65]), .B0(n1637), .C0(n1638[28]), .D0(d6[65]), 
          .A1(d_d6[66]), .B1(n1637), .C1(n1638[29]), .D1(d6[66]), .CIN(n2663), 
          .COUT(n2664), .S0(n1677[28]), .S1(n1677[29]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_31.INIT0 = 16'hb874;
    defparam add_107_31.INIT1 = 16'hb874;
    defparam add_107_31.INJECT1_0 = "NO";
    defparam add_107_31.INJECT1_1 = "NO";
    CCU2D add_107_29 (.A0(d_d6[63]), .B0(n1637), .C0(n1638[26]), .D0(d6[63]), 
          .A1(d_d6[64]), .B1(n1637), .C1(n1638[27]), .D1(d6[64]), .CIN(n2662), 
          .COUT(n2663), .S0(n1677[26]), .S1(n1677[27]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_29.INIT0 = 16'hb874;
    defparam add_107_29.INIT1 = 16'hb874;
    defparam add_107_29.INJECT1_0 = "NO";
    defparam add_107_29.INJECT1_1 = "NO";
    CCU2D add_107_27 (.A0(d_d6[61]), .B0(n1637), .C0(n1638[24]), .D0(d6[61]), 
          .A1(d_d6[62]), .B1(n1637), .C1(n1638[25]), .D1(d6[62]), .CIN(n2661), 
          .COUT(n2662), .S0(n1677[24]), .S1(n1677[25]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_27.INIT0 = 16'hb874;
    defparam add_107_27.INIT1 = 16'hb874;
    defparam add_107_27.INJECT1_0 = "NO";
    defparam add_107_27.INJECT1_1 = "NO";
    CCU2D add_107_25 (.A0(d_d6[59]), .B0(n1637), .C0(n1638[22]), .D0(d6[59]), 
          .A1(d_d6[60]), .B1(n1637), .C1(n1638[23]), .D1(d6[60]), .CIN(n2660), 
          .COUT(n2661), .S0(n1677[22]), .S1(n1677[23]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_25.INIT0 = 16'hb874;
    defparam add_107_25.INIT1 = 16'hb874;
    defparam add_107_25.INJECT1_0 = "NO";
    defparam add_107_25.INJECT1_1 = "NO";
    CCU2D add_107_23 (.A0(d_d6[57]), .B0(n1637), .C0(n1638[20]), .D0(d6[57]), 
          .A1(d_d6[58]), .B1(n1637), .C1(n1638[21]), .D1(d6[58]), .CIN(n2659), 
          .COUT(n2660), .S0(n1677[20]), .S1(n1677[21]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_23.INIT0 = 16'hb874;
    defparam add_107_23.INIT1 = 16'hb874;
    defparam add_107_23.INJECT1_0 = "NO";
    defparam add_107_23.INJECT1_1 = "NO";
    CCU2D add_107_21 (.A0(d_d6[55]), .B0(n1637), .C0(n1638[18]), .D0(d6[55]), 
          .A1(d_d6[56]), .B1(n1637), .C1(n1638[19]), .D1(d6[56]), .CIN(n2658), 
          .COUT(n2659), .S0(n1677[18]), .S1(n1677[19]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_21.INIT0 = 16'hb874;
    defparam add_107_21.INIT1 = 16'hb874;
    defparam add_107_21.INJECT1_0 = "NO";
    defparam add_107_21.INJECT1_1 = "NO";
    CCU2D add_107_19 (.A0(d_d6[53]), .B0(n1637), .C0(n1638[16]), .D0(d6[53]), 
          .A1(d_d6[54]), .B1(n1637), .C1(n1638[17]), .D1(d6[54]), .CIN(n2657), 
          .COUT(n2658), .S0(n1677[16]), .S1(n1677[17]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_19.INIT0 = 16'hb874;
    defparam add_107_19.INIT1 = 16'hb874;
    defparam add_107_19.INJECT1_0 = "NO";
    defparam add_107_19.INJECT1_1 = "NO";
    CCU2D add_107_17 (.A0(d_d6[51]), .B0(n1637), .C0(n1638[14]), .D0(d6[51]), 
          .A1(d_d6[52]), .B1(n1637), .C1(n1638[15]), .D1(d6[52]), .CIN(n2656), 
          .COUT(n2657), .S0(n1677[14]), .S1(n1677[15]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_17.INIT0 = 16'hb874;
    defparam add_107_17.INIT1 = 16'hb874;
    defparam add_107_17.INJECT1_0 = "NO";
    defparam add_107_17.INJECT1_1 = "NO";
    CCU2D add_107_15 (.A0(d_d6[49]), .B0(n1637), .C0(n1638[12]), .D0(d6[49]), 
          .A1(d_d6[50]), .B1(n1637), .C1(n1638[13]), .D1(d6[50]), .CIN(n2655), 
          .COUT(n2656), .S0(n1677[12]), .S1(n1677[13]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_15.INIT0 = 16'hb874;
    defparam add_107_15.INIT1 = 16'hb874;
    defparam add_107_15.INJECT1_0 = "NO";
    defparam add_107_15.INJECT1_1 = "NO";
    CCU2D add_107_13 (.A0(d_d6[47]), .B0(n1637), .C0(n1638[10]), .D0(d6[47]), 
          .A1(d_d6[48]), .B1(n1637), .C1(n1638[11]), .D1(d6[48]), .CIN(n2654), 
          .COUT(n2655), .S0(n1677[10]), .S1(n1677[11]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_13.INIT0 = 16'hb874;
    defparam add_107_13.INIT1 = 16'hb874;
    defparam add_107_13.INJECT1_0 = "NO";
    defparam add_107_13.INJECT1_1 = "NO";
    CCU2D add_107_11 (.A0(d_d6[45]), .B0(n1637), .C0(n1638[8]), .D0(d6[45]), 
          .A1(d_d6[46]), .B1(n1637), .C1(n1638[9]), .D1(d6[46]), .CIN(n2653), 
          .COUT(n2654), .S0(n1677[8]), .S1(n1677[9]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_11.INIT0 = 16'hb874;
    defparam add_107_11.INIT1 = 16'hb874;
    defparam add_107_11.INJECT1_0 = "NO";
    defparam add_107_11.INJECT1_1 = "NO";
    CCU2D add_107_9 (.A0(d_d6[43]), .B0(n1637), .C0(n1638[6]), .D0(d6[43]), 
          .A1(d_d6[44]), .B1(n1637), .C1(n1638[7]), .D1(d6[44]), .CIN(n2652), 
          .COUT(n2653), .S0(n1677[6]), .S1(n1677[7]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_9.INIT0 = 16'hb874;
    defparam add_107_9.INIT1 = 16'hb874;
    defparam add_107_9.INJECT1_0 = "NO";
    defparam add_107_9.INJECT1_1 = "NO";
    CCU2D add_107_7 (.A0(d_d6[41]), .B0(n1637), .C0(n1638[4]), .D0(d6[41]), 
          .A1(d_d6[42]), .B1(n1637), .C1(n1638[5]), .D1(d6[42]), .CIN(n2651), 
          .COUT(n2652), .S0(n1677[4]), .S1(n1677[5]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_7.INIT0 = 16'hb874;
    defparam add_107_7.INIT1 = 16'hb874;
    defparam add_107_7.INJECT1_0 = "NO";
    defparam add_107_7.INJECT1_1 = "NO";
    CCU2D add_107_5 (.A0(d_d6[39]), .B0(n1637), .C0(n1638[2]), .D0(d6[39]), 
          .A1(d_d6[40]), .B1(n1637), .C1(n1638[3]), .D1(d6[40]), .CIN(n2650), 
          .COUT(n2651), .S0(n1677[2]), .S1(n1677[3]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_5.INIT0 = 16'hb874;
    defparam add_107_5.INIT1 = 16'hb874;
    defparam add_107_5.INJECT1_0 = "NO";
    defparam add_107_5.INJECT1_1 = "NO";
    CCU2D add_107_3 (.A0(d_d6[37]), .B0(n1637), .C0(n1638[0]), .D0(d6[37]), 
          .A1(d_d6[38]), .B1(n1637), .C1(n1638[1]), .D1(d6[38]), .CIN(n2649), 
          .COUT(n2650), .S0(n1677[0]), .S1(n1677[1]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_3.INIT0 = 16'hb874;
    defparam add_107_3.INIT1 = 16'hb874;
    defparam add_107_3.INJECT1_0 = "NO";
    defparam add_107_3.INJECT1_1 = "NO";
    CCU2D add_107_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1637), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2649));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_107_1.INIT0 = 16'hF000;
    defparam add_107_1.INIT1 = 16'h0555;
    defparam add_107_1.INJECT1_0 = "NO";
    defparam add_107_1.INJECT1_1 = "NO";
    FD1P3AX d8_i0_i2 (.D(n975[2]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(n975[3]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(n975[4]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(n975[5]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(n975[6]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i7 (.D(n975[7]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(n975[8]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(n975[9]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(n975[10]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(n975[11]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i12 (.D(n975[12]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d8_i0_i13 (.D(n975[13]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d8_i0_i14 (.D(n975[14]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d8_i0_i15 (.D(n975[15]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d8_i0_i16 (.D(n975[16]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d8_i0_i17 (.D(n975[17]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d8_i0_i18 (.D(n975[18]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d8_i0_i19 (.D(n975[19]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d8_i0_i20 (.D(n975[20]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d8_i0_i21 (.D(n975[21]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d8_i0_i22 (.D(n975[22]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d8_i0_i23 (.D(n975[23]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d8_i0_i24 (.D(n975[24]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d8_i0_i25 (.D(n975[25]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d8_i0_i26 (.D(n975[26]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d8_i0_i27 (.D(n975[27]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d8_i0_i28 (.D(n975[28]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d8_i0_i29 (.D(n975[29]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d8_i0_i30 (.D(n975[30]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d8_i0_i31 (.D(n975[31]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d8_i0_i32 (.D(n975[32]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d8_i0_i33 (.D(n975[33]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d8_i0_i34 (.D(n975[34]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d8_i0_i35 (.D(n975[35]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d8_i0_i36 (.D(n975[36]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d8_i0_i37 (.D(n1053[0]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d8_i0_i38 (.D(n1053[1]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d8_i0_i39 (.D(n1053[2]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d8_i0_i40 (.D(n1053[3]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d8_i0_i41 (.D(n1053[4]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d8_i0_i42 (.D(n1053[5]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d8_i0_i43 (.D(n1053[6]), .SP(osc_clk_enable_275), .CK(osc_clk), 
            .Q(d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d8_i0_i44 (.D(n1053[7]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d8_i0_i45 (.D(n1053[8]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d8_i0_i46 (.D(n1053[9]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d8_i0_i47 (.D(n1053[10]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d8_i0_i48 (.D(n1053[11]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d8_i0_i49 (.D(n1053[12]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d8_i0_i50 (.D(n1053[13]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d8_i0_i51 (.D(n1053[14]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d8_i0_i52 (.D(n1053[15]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d8_i0_i53 (.D(n1053[16]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d8_i0_i54 (.D(n1053[17]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d8_i0_i55 (.D(n1053[18]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d8_i0_i56 (.D(n1053[19]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d8_i0_i57 (.D(n1053[20]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d8_i0_i58 (.D(n1053[21]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d8_i0_i59 (.D(n1053[22]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d8_i0_i60 (.D(n1053[23]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d8_i0_i61 (.D(n1053[24]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d8_i0_i62 (.D(n1053[25]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d8_i0_i63 (.D(n1053[26]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d8_i0_i64 (.D(n1053[27]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i64.GSR = "ENABLED";
    FD1P3AX d8_i0_i65 (.D(n1053[28]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i65.GSR = "ENABLED";
    FD1P3AX d8_i0_i66 (.D(n1053[29]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i66.GSR = "ENABLED";
    FD1P3AX d8_i0_i67 (.D(n1053[30]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i67.GSR = "ENABLED";
    FD1P3AX d8_i0_i68 (.D(n1053[31]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i68.GSR = "ENABLED";
    FD1P3AX d8_i0_i69 (.D(n1053[32]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i69.GSR = "ENABLED";
    FD1P3AX d8_i0_i70 (.D(n1053[33]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i70.GSR = "ENABLED";
    FD1P3AX d8_i0_i71 (.D(n1053[34]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i71.GSR = "ENABLED";
    FD1P3AX d8_i0_i72 (.D(n1053[35]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i72.GSR = "ENABLED";
    FD1P3AX d8_i0_i73 (.D(n1053[36]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d8[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i73.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(n1443[1]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(n1443[2]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(n1443[3]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(n1443[4]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(n1443[5]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(n1443[6]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(n1443[7]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(n1443[8]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(n1443[9]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(n1443[10]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(n1443[11]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i12 (.D(n1443[12]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d9_i0_i13 (.D(n1443[13]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d9_i0_i14 (.D(n1443[14]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d9_i0_i15 (.D(n1443[15]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d9_i0_i16 (.D(n1443[16]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d9_i0_i17 (.D(n1443[17]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d9_i0_i18 (.D(n1443[18]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d9_i0_i19 (.D(n1443[19]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d9_i0_i20 (.D(n1443[20]), .SP(osc_clk_enable_325), .CK(osc_clk), 
            .Q(d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d9_i0_i21 (.D(n1443[21]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d9_i0_i22 (.D(n1443[22]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d9_i0_i23 (.D(n1443[23]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d9_i0_i24 (.D(n1443[24]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d9_i0_i25 (.D(n1443[25]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d9_i0_i26 (.D(n1443[26]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d9_i0_i27 (.D(n1443[27]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d9_i0_i28 (.D(n1443[28]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d9_i0_i29 (.D(n1443[29]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d9_i0_i30 (.D(n1443[30]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d9_i0_i31 (.D(n1443[31]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d9_i0_i32 (.D(n1443[32]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d9_i0_i33 (.D(n1443[33]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d9_i0_i34 (.D(n1443[34]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d9_i0_i35 (.D(n1443[35]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d9_i0_i36 (.D(n1443[36]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d9_i0_i37 (.D(n1521[0]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d9_i0_i38 (.D(n1521[1]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d9_i0_i39 (.D(n1521[2]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d9_i0_i40 (.D(n1521[3]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d9_i0_i41 (.D(n1521[4]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d9_i0_i42 (.D(n1521[5]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d9_i0_i43 (.D(n1521[6]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d9_i0_i44 (.D(n1521[7]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d9_i0_i45 (.D(n1521[8]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d9_i0_i46 (.D(n1521[9]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d9_i0_i47 (.D(n1521[10]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d9_i0_i48 (.D(n1521[11]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d9_i0_i49 (.D(n1521[12]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d9_i0_i50 (.D(n1521[13]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d9_i0_i51 (.D(n1521[14]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d9_i0_i52 (.D(n1521[15]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d9_i0_i53 (.D(n1521[16]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d9_i0_i54 (.D(n1521[17]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d9_i0_i55 (.D(n1521[18]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d9_i0_i56 (.D(n1521[19]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d9_i0_i57 (.D(n1521[20]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d9_i0_i58 (.D(n1521[21]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d9_i0_i59 (.D(n1521[22]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d9_i0_i60 (.D(n1521[23]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d9_i0_i61 (.D(n1521[24]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d9_i0_i62 (.D(n1521[25]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d9_i0_i63 (.D(n1521[26]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d9_i0_i64 (.D(n1521[27]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i64.GSR = "ENABLED";
    FD1P3AX d9_i0_i65 (.D(n1521[28]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i65.GSR = "ENABLED";
    FD1P3AX d9_i0_i66 (.D(n1521[29]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i66.GSR = "ENABLED";
    FD1P3AX d9_i0_i67 (.D(n1521[30]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i67.GSR = "ENABLED";
    FD1P3AX d9_i0_i68 (.D(n1521[31]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i68.GSR = "ENABLED";
    FD1P3AX d9_i0_i69 (.D(n1521[32]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i69.GSR = "ENABLED";
    FD1P3AX d9_i0_i70 (.D(n1521[33]), .SP(osc_clk_enable_375), .CK(osc_clk), 
            .Q(d9[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i70.GSR = "ENABLED";
    FD1P3AX d9_i0_i71 (.D(n1521[34]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d9[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i71.GSR = "ENABLED";
    FD1P3AX d9_i0_i72 (.D(n1521[35]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d9[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i72.GSR = "ENABLED";
    FD1P3AX d9_i0_i73 (.D(n1521[36]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d9[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i73.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i12 (.D(d6[12]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i13 (.D(d6[13]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i14 (.D(d6[14]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i15 (.D(d6[15]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i16 (.D(d6[16]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i17 (.D(d6[17]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i18 (.D(d6[18]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i19 (.D(d6[19]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i20 (.D(d6[20]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i21 (.D(d6[21]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i22 (.D(d6[22]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i23 (.D(d6[23]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i24 (.D(d6[24]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i25 (.D(d6[25]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i26 (.D(d6[26]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i27 (.D(d6[27]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i28 (.D(d6[28]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i29 (.D(d6[29]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i30 (.D(d6[30]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i31 (.D(d6[31]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i32 (.D(d6[32]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i33 (.D(d6[33]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i34 (.D(d6[34]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i35 (.D(d6[35]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i36 (.D(d6[36]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i37 (.D(d6[37]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i38 (.D(d6[38]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i39 (.D(d6[39]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i40 (.D(d6[40]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i41 (.D(d6[41]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i42 (.D(d6[42]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i43 (.D(d6[43]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i44 (.D(d6[44]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i45 (.D(d6[45]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i46 (.D(d6[46]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i47 (.D(d6[47]), .SP(osc_clk_enable_425), .CK(osc_clk), 
            .Q(d_d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i48 (.D(d6[48]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i49 (.D(d6[49]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i50 (.D(d6[50]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i51 (.D(d6[51]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i52 (.D(d6[52]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i53 (.D(d6[53]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i54 (.D(d6[54]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i55 (.D(d6[55]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i56 (.D(d6[56]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i57 (.D(d6[57]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i58 (.D(d6[58]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i59 (.D(d6[59]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i60 (.D(d6[60]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i61 (.D(d6[61]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i62 (.D(d6[62]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i63 (.D(d6[63]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i64 (.D(d6[64]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i65 (.D(d6[65]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i66 (.D(d6[66]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i67 (.D(d6[67]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i68 (.D(d6[68]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i68.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i69 (.D(d6[69]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i69.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i70 (.D(d6[70]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i70.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i71 (.D(d6[71]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i71.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i72 (.D(d6[72]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i72.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i73 (.D(d6[73]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d6[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i73.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i12 (.D(d7[12]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i13 (.D(d7[13]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i14 (.D(d7[14]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i15 (.D(d7[15]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i16 (.D(d7[16]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i17 (.D(d7[17]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i18 (.D(d7[18]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i19 (.D(d7[19]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i20 (.D(d7[20]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i21 (.D(d7[21]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i22 (.D(d7[22]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i23 (.D(d7[23]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i24 (.D(d7[24]), .SP(osc_clk_enable_475), .CK(osc_clk), 
            .Q(d_d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i25 (.D(d7[25]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i26 (.D(d7[26]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i27 (.D(d7[27]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i28 (.D(d7[28]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i29 (.D(d7[29]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i30 (.D(d7[30]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i31 (.D(d7[31]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i32 (.D(d7[32]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i33 (.D(d7[33]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i34 (.D(d7[34]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i35 (.D(d7[35]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i36 (.D(d7[36]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i37 (.D(d7[37]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i38 (.D(d7[38]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i39 (.D(d7[39]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i40 (.D(d7[40]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i41 (.D(d7[41]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i42 (.D(d7[42]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i43 (.D(d7[43]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i44 (.D(d7[44]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i45 (.D(d7[45]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i46 (.D(d7[46]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i47 (.D(d7[47]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i48 (.D(d7[48]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i49 (.D(d7[49]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i50 (.D(d7[50]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i51 (.D(d7[51]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i52 (.D(d7[52]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i53 (.D(d7[53]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i54 (.D(d7[54]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i55 (.D(d7[55]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i56 (.D(d7[56]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i57 (.D(d7[57]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i58 (.D(d7[58]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i59 (.D(d7[59]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i60 (.D(d7[60]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i61 (.D(d7[61]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i62 (.D(d7[62]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i63 (.D(d7[63]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i64 (.D(d7[64]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i65 (.D(d7[65]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i66 (.D(d7[66]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i67 (.D(d7[67]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i68 (.D(d7[68]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i68.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i69 (.D(d7[69]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i69.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i70 (.D(d7[70]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i70.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i71 (.D(d7[71]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i71.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i72 (.D(d7[72]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i72.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i73 (.D(d7[73]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d7[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i73.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_enable_525), .CK(osc_clk), 
            .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i12 (.D(d8[12]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i13 (.D(d8[13]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i14 (.D(d8[14]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i15 (.D(d8[15]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i16 (.D(d8[16]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i17 (.D(d8[17]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i18 (.D(d8[18]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i19 (.D(d8[19]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i20 (.D(d8[20]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i21 (.D(d8[21]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i22 (.D(d8[22]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i23 (.D(d8[23]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i24 (.D(d8[24]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i25 (.D(d8[25]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i26 (.D(d8[26]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i27 (.D(d8[27]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i28 (.D(d8[28]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i29 (.D(d8[29]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i30 (.D(d8[30]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i31 (.D(d8[31]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i32 (.D(d8[32]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i33 (.D(d8[33]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i34 (.D(d8[34]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i35 (.D(d8[35]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i36 (.D(d8[36]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i37 (.D(d8[37]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i38 (.D(d8[38]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i39 (.D(d8[39]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i40 (.D(d8[40]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i41 (.D(d8[41]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i42 (.D(d8[42]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i43 (.D(d8[43]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i44 (.D(d8[44]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i45 (.D(d8[45]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i46 (.D(d8[46]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i47 (.D(d8[47]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i48 (.D(d8[48]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i49 (.D(d8[49]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i50 (.D(d8[50]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i51 (.D(d8[51]), .SP(osc_clk_enable_575), .CK(osc_clk), 
            .Q(d_d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i52 (.D(d8[52]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i53 (.D(d8[53]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i54 (.D(d8[54]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i55 (.D(d8[55]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i56 (.D(d8[56]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i57 (.D(d8[57]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i58 (.D(d8[58]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i59 (.D(d8[59]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i60 (.D(d8[60]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i61 (.D(d8[61]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i62 (.D(d8[62]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i63 (.D(d8[63]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i64 (.D(d8[64]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i65 (.D(d8[65]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i66 (.D(d8[66]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i67 (.D(d8[67]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i68 (.D(d8[68]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i68.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i69 (.D(d8[69]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i69.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i70 (.D(d8[70]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i70.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i71 (.D(d8[71]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i71.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i72 (.D(d8[72]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i72.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i73 (.D(d8[73]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d8[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i73.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i12 (.D(d9[12]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i13 (.D(d9[13]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i14 (.D(d9[14]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i15 (.D(d9[15]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i16 (.D(d9[16]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i17 (.D(d9[17]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i18 (.D(d9[18]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i19 (.D(d9[19]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i20 (.D(d9[20]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i21 (.D(d9[21]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i22 (.D(d9[22]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i23 (.D(d9[23]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i24 (.D(d9[24]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i25 (.D(d9[25]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i26 (.D(d9[26]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i27 (.D(d9[27]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i28 (.D(d9[28]), .SP(osc_clk_enable_625), .CK(osc_clk), 
            .Q(d_d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i29 (.D(d9[29]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i30 (.D(d9[30]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i31 (.D(d9[31]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i32 (.D(d9[32]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i33 (.D(d9[33]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i34 (.D(d9[34]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i35 (.D(d9[35]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i36 (.D(d9[36]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i37 (.D(d9[37]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i38 (.D(d9[38]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i39 (.D(d9[39]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i40 (.D(d9[40]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i41 (.D(d9[41]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i42 (.D(d9[42]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i43 (.D(d9[43]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i44 (.D(d9[44]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i45 (.D(d9[45]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i46 (.D(d9[46]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i47 (.D(d9[47]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i48 (.D(d9[48]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i49 (.D(d9[49]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i50 (.D(d9[50]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i51 (.D(d9[51]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i52 (.D(d9[52]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i53 (.D(d9[53]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i54 (.D(d9[54]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i55 (.D(d9[55]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i56 (.D(d9[56]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i57 (.D(d9[57]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i58 (.D(d9[58]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i59 (.D(d9[59]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i60 (.D(d9[60]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i61 (.D(d9[61]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i62 (.D(d9[62]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i63 (.D(d9[63]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i64 (.D(d9[64]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i65 (.D(d9[65]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i66 (.D(d9[66]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i67 (.D(d9[67]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i68 (.D(d9[68]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i68.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i69 (.D(d9[69]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i69.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i70 (.D(d9[70]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i70.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i71 (.D(d9[71]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i71.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i72 (.D(d9[72]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i72.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i73 (.D(d9[73]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(d_d9[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i73.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[67]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(\DataInNoSign_7__N_2588[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[68]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(MYLED_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[69]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(MYLED_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[70]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(MYLED_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[71]), .SP(osc_clk_enable_675), .CK(osc_clk), 
            .Q(n1846)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[72]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(n1845)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[73]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(MYLED_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i12 (.D(d_tmp[12]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i13 (.D(d_tmp[13]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i14 (.D(d_tmp[14]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i15 (.D(d_tmp[15]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i16 (.D(d_tmp[16]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i17 (.D(d_tmp[17]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i18 (.D(d_tmp[18]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i19 (.D(d_tmp[19]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i20 (.D(d_tmp[20]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i21 (.D(d_tmp[21]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i22 (.D(d_tmp[22]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i23 (.D(d_tmp[23]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i24 (.D(d_tmp[24]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i25 (.D(d_tmp[25]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i26 (.D(d_tmp[26]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i27 (.D(d_tmp[27]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i28 (.D(d_tmp[28]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i29 (.D(d_tmp[29]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i30 (.D(d_tmp[30]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i31 (.D(d_tmp[31]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i32 (.D(d_tmp[32]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i33 (.D(d_tmp[33]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i34 (.D(d_tmp[34]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i35 (.D(d_tmp[35]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i36 (.D(d_tmp[36]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i37 (.D(d_tmp[37]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i38 (.D(d_tmp[38]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i39 (.D(d_tmp[39]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i40 (.D(d_tmp[40]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i41 (.D(d_tmp[41]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i42 (.D(d_tmp[42]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i43 (.D(d_tmp[43]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i44 (.D(d_tmp[44]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i45 (.D(d_tmp[45]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i46 (.D(d_tmp[46]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i47 (.D(d_tmp[47]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i48 (.D(d_tmp[48]), .SP(osc_clk_enable_725), .CK(osc_clk), 
            .Q(d_d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i49 (.D(d_tmp[49]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i50 (.D(d_tmp[50]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i51 (.D(d_tmp[51]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i52 (.D(d_tmp[52]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i53 (.D(d_tmp[53]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i54 (.D(d_tmp[54]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i55 (.D(d_tmp[55]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i56 (.D(d_tmp[56]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i57 (.D(d_tmp[57]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i58 (.D(d_tmp[58]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i59 (.D(d_tmp[59]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i60 (.D(d_tmp[60]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i61 (.D(d_tmp[61]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i62 (.D(d_tmp[62]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i63 (.D(d_tmp[63]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i64 (.D(d_tmp[64]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i64.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i65 (.D(d_tmp[65]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i65.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i66 (.D(d_tmp[66]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i66.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i67 (.D(d_tmp[67]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i67.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i68 (.D(d_tmp[68]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i68.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i69 (.D(d_tmp[69]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i69.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i70 (.D(d_tmp[70]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i70.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i71 (.D(d_tmp[71]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i71.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i72 (.D(d_tmp[72]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i72.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i73 (.D(d_tmp[73]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i73.GSR = "ENABLED";
    FD1P3AX d10__0__i2 (.D(n1404[30]), .SP(v_comb), .CK(osc_clk), .Q(d10[67]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i2.GSR = "ENABLED";
    FD1P3AX d10__0__i3 (.D(n1404[31]), .SP(v_comb), .CK(osc_clk), .Q(d10[68]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i3.GSR = "ENABLED";
    FD1P3AX d10__0__i4 (.D(n1404[32]), .SP(v_comb), .CK(osc_clk), .Q(d10[69]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i4.GSR = "ENABLED";
    FD1P3AX d10__0__i5 (.D(n1404[33]), .SP(v_comb), .CK(osc_clk), .Q(d10[70]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i5.GSR = "ENABLED";
    FD1P3AX d10__0__i6 (.D(n1404[34]), .SP(v_comb), .CK(osc_clk), .Q(d10[71]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i6.GSR = "ENABLED";
    FD1P3AX d10__0__i7 (.D(n1404[35]), .SP(v_comb), .CK(osc_clk), .Q(d10[72]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i7.GSR = "ENABLED";
    FD1P3AX d10__0__i8 (.D(n1404[36]), .SP(v_comb), .CK(osc_clk), .Q(d10[73]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i8.GSR = "ENABLED";
    FD1S3AX d1_i1 (.D(d1_73__N_1309[1]), .CK(osc_clk), .Q(d1[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i1.GSR = "ENABLED";
    FD1S3AX d1_i2 (.D(d1_73__N_1309[2]), .CK(osc_clk), .Q(d1[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i2.GSR = "ENABLED";
    FD1S3AX d1_i3 (.D(d1_73__N_1309[3]), .CK(osc_clk), .Q(d1[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i3.GSR = "ENABLED";
    FD1S3AX d1_i4 (.D(d1_73__N_1309[4]), .CK(osc_clk), .Q(d1[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i4.GSR = "ENABLED";
    FD1S3AX d1_i5 (.D(d1_73__N_1309[5]), .CK(osc_clk), .Q(d1[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i5.GSR = "ENABLED";
    FD1S3AX d1_i6 (.D(d1_73__N_1309[6]), .CK(osc_clk), .Q(d1[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i6.GSR = "ENABLED";
    FD1S3AX d1_i7 (.D(d1_73__N_1309[7]), .CK(osc_clk), .Q(d1[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i7.GSR = "ENABLED";
    FD1S3AX d1_i8 (.D(d1_73__N_1309[8]), .CK(osc_clk), .Q(d1[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i8.GSR = "ENABLED";
    FD1S3AX d1_i9 (.D(d1_73__N_1309[9]), .CK(osc_clk), .Q(d1[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i9.GSR = "ENABLED";
    FD1S3AX d1_i10 (.D(d1_73__N_1309[10]), .CK(osc_clk), .Q(d1[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i10.GSR = "ENABLED";
    FD1S3AX d1_i11 (.D(d1_73__N_1309[11]), .CK(osc_clk), .Q(d1[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i11.GSR = "ENABLED";
    FD1S3AX d1_i12 (.D(d1_73__N_1309[12]), .CK(osc_clk), .Q(d1[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i12.GSR = "ENABLED";
    FD1S3AX d1_i13 (.D(d1_73__N_1309[13]), .CK(osc_clk), .Q(d1[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i13.GSR = "ENABLED";
    FD1S3AX d1_i14 (.D(d1_73__N_1309[14]), .CK(osc_clk), .Q(d1[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i14.GSR = "ENABLED";
    FD1S3AX d1_i15 (.D(d1_73__N_1309[15]), .CK(osc_clk), .Q(d1[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i15.GSR = "ENABLED";
    FD1S3AX d1_i16 (.D(d1_73__N_1309[16]), .CK(osc_clk), .Q(d1[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i16.GSR = "ENABLED";
    FD1S3AX d1_i17 (.D(d1_73__N_1309[17]), .CK(osc_clk), .Q(d1[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i17.GSR = "ENABLED";
    FD1S3AX d1_i18 (.D(d1_73__N_1309[18]), .CK(osc_clk), .Q(d1[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i18.GSR = "ENABLED";
    FD1S3AX d1_i19 (.D(d1_73__N_1309[19]), .CK(osc_clk), .Q(d1[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i19.GSR = "ENABLED";
    FD1S3AX d1_i20 (.D(d1_73__N_1309[20]), .CK(osc_clk), .Q(d1[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i20.GSR = "ENABLED";
    FD1S3AX d1_i21 (.D(d1_73__N_1309[21]), .CK(osc_clk), .Q(d1[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i21.GSR = "ENABLED";
    FD1S3AX d1_i22 (.D(d1_73__N_1309[22]), .CK(osc_clk), .Q(d1[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i22.GSR = "ENABLED";
    FD1S3AX d1_i23 (.D(d1_73__N_1309[23]), .CK(osc_clk), .Q(d1[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i23.GSR = "ENABLED";
    FD1S3AX d1_i24 (.D(d1_73__N_1309[24]), .CK(osc_clk), .Q(d1[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i24.GSR = "ENABLED";
    FD1S3AX d1_i25 (.D(d1_73__N_1309[25]), .CK(osc_clk), .Q(d1[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i25.GSR = "ENABLED";
    FD1S3AX d1_i26 (.D(d1_73__N_1309[26]), .CK(osc_clk), .Q(d1[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i26.GSR = "ENABLED";
    FD1S3AX d1_i27 (.D(d1_73__N_1309[27]), .CK(osc_clk), .Q(d1[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i27.GSR = "ENABLED";
    FD1S3AX d1_i28 (.D(d1_73__N_1309[28]), .CK(osc_clk), .Q(d1[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i28.GSR = "ENABLED";
    FD1S3AX d1_i29 (.D(d1_73__N_1309[29]), .CK(osc_clk), .Q(d1[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i29.GSR = "ENABLED";
    FD1S3AX d1_i30 (.D(d1_73__N_1309[30]), .CK(osc_clk), .Q(d1[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i30.GSR = "ENABLED";
    FD1S3AX d1_i31 (.D(d1_73__N_1309[31]), .CK(osc_clk), .Q(d1[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i31.GSR = "ENABLED";
    FD1S3AX d1_i32 (.D(d1_73__N_1309[32]), .CK(osc_clk), .Q(d1[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i32.GSR = "ENABLED";
    FD1S3AX d1_i33 (.D(d1_73__N_1309[33]), .CK(osc_clk), .Q(d1[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i33.GSR = "ENABLED";
    FD1S3AX d1_i34 (.D(d1_73__N_1309[34]), .CK(osc_clk), .Q(d1[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i34.GSR = "ENABLED";
    FD1S3AX d1_i35 (.D(d1_73__N_1309[35]), .CK(osc_clk), .Q(d1[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i35.GSR = "ENABLED";
    FD1S3AX d1_i36 (.D(d1_73__N_1309[36]), .CK(osc_clk), .Q(d1[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i36.GSR = "ENABLED";
    FD1S3AX d1_i37 (.D(d1_73__N_1309[37]), .CK(osc_clk), .Q(d1[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i37.GSR = "ENABLED";
    FD1S3AX d1_i38 (.D(d1_73__N_1309[38]), .CK(osc_clk), .Q(d1[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i38.GSR = "ENABLED";
    FD1S3AX d1_i39 (.D(d1_73__N_1309[39]), .CK(osc_clk), .Q(d1[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i39.GSR = "ENABLED";
    FD1S3AX d1_i40 (.D(d1_73__N_1309[40]), .CK(osc_clk), .Q(d1[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i40.GSR = "ENABLED";
    FD1S3AX d1_i41 (.D(d1_73__N_1309[41]), .CK(osc_clk), .Q(d1[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i41.GSR = "ENABLED";
    FD1S3AX d1_i42 (.D(d1_73__N_1309[42]), .CK(osc_clk), .Q(d1[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i42.GSR = "ENABLED";
    FD1S3AX d1_i43 (.D(d1_73__N_1309[43]), .CK(osc_clk), .Q(d1[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i43.GSR = "ENABLED";
    FD1S3AX d1_i44 (.D(d1_73__N_1309[44]), .CK(osc_clk), .Q(d1[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i44.GSR = "ENABLED";
    FD1S3AX d1_i45 (.D(d1_73__N_1309[45]), .CK(osc_clk), .Q(d1[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i45.GSR = "ENABLED";
    FD1S3AX d1_i46 (.D(d1_73__N_1309[46]), .CK(osc_clk), .Q(d1[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i46.GSR = "ENABLED";
    FD1S3AX d1_i47 (.D(d1_73__N_1309[47]), .CK(osc_clk), .Q(d1[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i47.GSR = "ENABLED";
    FD1S3AX d1_i48 (.D(d1_73__N_1309[48]), .CK(osc_clk), .Q(d1[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i48.GSR = "ENABLED";
    FD1S3AX d1_i49 (.D(d1_73__N_1309[49]), .CK(osc_clk), .Q(d1[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i49.GSR = "ENABLED";
    FD1S3AX d1_i50 (.D(d1_73__N_1309[50]), .CK(osc_clk), .Q(d1[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i50.GSR = "ENABLED";
    FD1S3AX d1_i51 (.D(d1_73__N_1309[51]), .CK(osc_clk), .Q(d1[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i51.GSR = "ENABLED";
    FD1S3AX d1_i52 (.D(d1_73__N_1309[52]), .CK(osc_clk), .Q(d1[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i52.GSR = "ENABLED";
    FD1S3AX d1_i53 (.D(d1_73__N_1309[53]), .CK(osc_clk), .Q(d1[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i53.GSR = "ENABLED";
    FD1S3AX d1_i54 (.D(d1_73__N_1309[54]), .CK(osc_clk), .Q(d1[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i54.GSR = "ENABLED";
    FD1S3AX d1_i55 (.D(d1_73__N_1309[55]), .CK(osc_clk), .Q(d1[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i55.GSR = "ENABLED";
    FD1S3AX d1_i56 (.D(d1_73__N_1309[56]), .CK(osc_clk), .Q(d1[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i56.GSR = "ENABLED";
    FD1S3AX d1_i57 (.D(d1_73__N_1309[57]), .CK(osc_clk), .Q(d1[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i57.GSR = "ENABLED";
    FD1S3AX d1_i58 (.D(d1_73__N_1309[58]), .CK(osc_clk), .Q(d1[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i58.GSR = "ENABLED";
    FD1S3AX d1_i59 (.D(d1_73__N_1309[59]), .CK(osc_clk), .Q(d1[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i59.GSR = "ENABLED";
    FD1S3AX d1_i60 (.D(d1_73__N_1309[60]), .CK(osc_clk), .Q(d1[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i60.GSR = "ENABLED";
    FD1S3AX d1_i61 (.D(d1_73__N_1309[61]), .CK(osc_clk), .Q(d1[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i61.GSR = "ENABLED";
    FD1S3AX d1_i62 (.D(d1_73__N_1309[62]), .CK(osc_clk), .Q(d1[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i62.GSR = "ENABLED";
    FD1S3AX d1_i63 (.D(d1_73__N_1309[63]), .CK(osc_clk), .Q(d1[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i63.GSR = "ENABLED";
    FD1S3AX d1_i64 (.D(d1_73__N_1309[64]), .CK(osc_clk), .Q(d1[64])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i64.GSR = "ENABLED";
    FD1S3AX d1_i65 (.D(d1_73__N_1309[65]), .CK(osc_clk), .Q(d1[65])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i65.GSR = "ENABLED";
    FD1S3AX d1_i66 (.D(d1_73__N_1309[66]), .CK(osc_clk), .Q(d1[66])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i66.GSR = "ENABLED";
    FD1S3AX d1_i67 (.D(d1_73__N_1309[67]), .CK(osc_clk), .Q(d1[67])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i67.GSR = "ENABLED";
    FD1S3AX d1_i68 (.D(d1_73__N_1309[68]), .CK(osc_clk), .Q(d1[68])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i68.GSR = "ENABLED";
    FD1S3AX d1_i69 (.D(d1_73__N_1309[69]), .CK(osc_clk), .Q(d1[69])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i69.GSR = "ENABLED";
    FD1S3AX d1_i70 (.D(d1_73__N_1309[70]), .CK(osc_clk), .Q(d1[70])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i70.GSR = "ENABLED";
    FD1S3AX d1_i71 (.D(d1_73__N_1309[71]), .CK(osc_clk), .Q(d1[71])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i71.GSR = "ENABLED";
    FD1S3AX d1_i72 (.D(d1_73__N_1309[72]), .CK(osc_clk), .Q(d1[72])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i72.GSR = "ENABLED";
    FD1S3AX d1_i73 (.D(d1_73__N_1309[73]), .CK(osc_clk), .Q(d1[73])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i73.GSR = "ENABLED";
    LUT4 i10_4_lut_adj_2 (.A(count[7]), .B(count[12]), .C(count[11]), 
         .D(count[4]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i10_4_lut_adj_2.init = 16'hfffe;
    LUT4 mux_114_i4_3_lut (.A(n1326[32]), .B(n1365[32]), .C(n1325), .Z(n1404[32])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i4_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut_adj_3 (.A(count[6]), .B(count[0]), .C(count[10]), .D(count[13]), 
         .Z(n22_adj_2600)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i8_4_lut_adj_3.init = 16'hfeff;
    LUT4 mux_114_i5_3_lut (.A(n1326[33]), .B(n1365[33]), .C(n1325), .Z(n1404[33])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i5_3_lut.init = 16'hcaca;
    FD1S3AX v_comb_87_rep_14 (.D(osc_clk_enable_119), .CK(osc_clk), .Q(osc_clk_enable_425)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=122, LSE_RLINE=129 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_14.GSR = "ENABLED";
    FD1S3IX count_53_54__i2 (.D(n61[1]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i2.GSR = "ENABLED";
    FD1S3IX count_53_54__i3 (.D(n61[2]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i3.GSR = "ENABLED";
    FD1S3IX count_53_54__i4 (.D(n61[3]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i4.GSR = "ENABLED";
    FD1S3IX count_53_54__i5 (.D(n61[4]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i5.GSR = "ENABLED";
    FD1S3IX count_53_54__i6 (.D(n61[5]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i6.GSR = "ENABLED";
    FD1S3IX count_53_54__i7 (.D(n61[6]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i7.GSR = "ENABLED";
    FD1S3IX count_53_54__i8 (.D(n61[7]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i8.GSR = "ENABLED";
    FD1S3IX count_53_54__i9 (.D(n61[8]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i9.GSR = "ENABLED";
    FD1S3IX count_53_54__i10 (.D(n61[9]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i10.GSR = "ENABLED";
    FD1S3IX count_53_54__i11 (.D(n61[10]), .CK(osc_clk), .CD(osc_clk_enable_159), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i11.GSR = "ENABLED";
    FD1S3IX count_53_54__i12 (.D(n61[11]), .CK(osc_clk), .CD(d_clk_tmp_N_2537), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i12.GSR = "ENABLED";
    FD1S3IX count_53_54__i13 (.D(n61[12]), .CK(osc_clk), .CD(d_clk_tmp_N_2537), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i13.GSR = "ENABLED";
    FD1S3IX count_53_54__i14 (.D(n61[13]), .CK(osc_clk), .CD(d_clk_tmp_N_2537), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54__i14.GSR = "ENABLED";
    CCU2D add_71_16 (.A0(d2[51]), .B0(d3[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[52]), .B1(d3[52]), .C1(GND_net), .D1(GND_net), .CIN(n3086), 
          .COUT(n3087), .S0(n546[14]), .S1(n546[15]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_16.INIT0 = 16'h5666;
    defparam add_71_16.INIT1 = 16'h5666;
    defparam add_71_16.INJECT1_0 = "NO";
    defparam add_71_16.INJECT1_1 = "NO";
    CCU2D add_71_20 (.A0(d2[55]), .B0(d3[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[56]), .B1(d3[56]), .C1(GND_net), .D1(GND_net), .CIN(n3088), 
          .COUT(n3089), .S0(n546[18]), .S1(n546[19]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_20.INIT0 = 16'h5666;
    defparam add_71_20.INIT1 = 16'h5666;
    defparam add_71_20.INJECT1_0 = "NO";
    defparam add_71_20.INJECT1_1 = "NO";
    CCU2D add_71_18 (.A0(d2[53]), .B0(d3[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[54]), .B1(d3[54]), .C1(GND_net), .D1(GND_net), .CIN(n3087), 
          .COUT(n3088), .S0(n546[16]), .S1(n546[17]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_18.INIT0 = 16'h5666;
    defparam add_71_18.INIT1 = 16'h5666;
    defparam add_71_18.INJECT1_0 = "NO";
    defparam add_71_18.INJECT1_1 = "NO";
    CCU2D add_71_22 (.A0(d2[57]), .B0(d3[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[58]), .B1(d3[58]), .C1(GND_net), .D1(GND_net), .CIN(n3089), 
          .COUT(n3090), .S0(n546[20]), .S1(n546[21]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_22.INIT0 = 16'h5666;
    defparam add_71_22.INIT1 = 16'h5666;
    defparam add_71_22.INJECT1_0 = "NO";
    defparam add_71_22.INJECT1_1 = "NO";
    LUT4 mux_114_i6_3_lut (.A(n1326[34]), .B(n1365[34]), .C(n1325), .Z(n1404[34])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i6_3_lut.init = 16'hcaca;
    CCU2D add_71_24 (.A0(d2[59]), .B0(d3[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[60]), .B1(d3[60]), .C1(GND_net), .D1(GND_net), .CIN(n3090), 
          .COUT(n3091), .S0(n546[22]), .S1(n546[23]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_24.INIT0 = 16'h5666;
    defparam add_71_24.INIT1 = 16'h5666;
    defparam add_71_24.INJECT1_0 = "NO";
    defparam add_71_24.INJECT1_1 = "NO";
    CCU2D add_71_26 (.A0(d2[61]), .B0(d3[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[62]), .B1(d3[62]), .C1(GND_net), .D1(GND_net), .CIN(n3091), 
          .COUT(n3092), .S0(n546[24]), .S1(n546[25]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_26.INIT0 = 16'h5666;
    defparam add_71_26.INIT1 = 16'h5666;
    defparam add_71_26.INJECT1_0 = "NO";
    defparam add_71_26.INJECT1_1 = "NO";
    CCU2D add_71_28 (.A0(d2[63]), .B0(d3[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[64]), .B1(d3[64]), .C1(GND_net), .D1(GND_net), .CIN(n3092), 
          .COUT(n3093), .S0(n546[26]), .S1(n546[27]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_28.INIT0 = 16'h5666;
    defparam add_71_28.INIT1 = 16'h5666;
    defparam add_71_28.INJECT1_0 = "NO";
    defparam add_71_28.INJECT1_1 = "NO";
    CCU2D add_71_30 (.A0(d2[65]), .B0(d3[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[66]), .B1(d3[66]), .C1(GND_net), .D1(GND_net), .CIN(n3093), 
          .COUT(n3094), .S0(n546[28]), .S1(n546[29]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_30.INIT0 = 16'h5666;
    defparam add_71_30.INIT1 = 16'h5666;
    defparam add_71_30.INJECT1_0 = "NO";
    defparam add_71_30.INJECT1_1 = "NO";
    CCU2D add_71_32 (.A0(d2[67]), .B0(d3[67]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[68]), .B1(d3[68]), .C1(GND_net), .D1(GND_net), .CIN(n3094), 
          .COUT(n3095), .S0(n546[30]), .S1(n546[31]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_32.INIT0 = 16'h5666;
    defparam add_71_32.INIT1 = 16'h5666;
    defparam add_71_32.INJECT1_0 = "NO";
    defparam add_71_32.INJECT1_1 = "NO";
    CCU2D add_71_34 (.A0(d2[69]), .B0(d3[69]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[70]), .B1(d3[70]), .C1(GND_net), .D1(GND_net), .CIN(n3095), 
          .COUT(n3096), .S0(n546[32]), .S1(n546[33]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_34.INIT0 = 16'h5666;
    defparam add_71_34.INIT1 = 16'h5666;
    defparam add_71_34.INJECT1_0 = "NO";
    defparam add_71_34.INJECT1_1 = "NO";
    CCU2D add_71_36 (.A0(d2[71]), .B0(d3[71]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[72]), .B1(d3[72]), .C1(GND_net), .D1(GND_net), .CIN(n3096), 
          .COUT(n3097), .S0(n546[34]), .S1(n546[35]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_36.INIT0 = 16'h5666;
    defparam add_71_36.INIT1 = 16'h5666;
    defparam add_71_36.INJECT1_0 = "NO";
    defparam add_71_36.INJECT1_1 = "NO";
    CCU2D add_71_38 (.A0(d2[73]), .B0(d3[73]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3097), 
          .S0(n546[36]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_71_38.INIT0 = 16'h5666;
    defparam add_71_38.INIT1 = 16'h0000;
    defparam add_71_38.INJECT1_0 = "NO";
    defparam add_71_38.INJECT1_1 = "NO";
    LUT4 mux_114_i7_3_lut (.A(n1326[35]), .B(n1365[35]), .C(n1325), .Z(n1404[35])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i7_3_lut.init = 16'hcaca;
    CCU2D add_76_2 (.A0(d3[37]), .B0(d4[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[38]), .B1(d4[38]), .C1(GND_net), .D1(GND_net), .COUT(n3099), 
          .S1(n702[1]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_2.INIT0 = 16'h7000;
    defparam add_76_2.INIT1 = 16'h5666;
    defparam add_76_2.INJECT1_0 = "NO";
    defparam add_76_2.INJECT1_1 = "NO";
    CCU2D add_76_4 (.A0(d3[39]), .B0(d4[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[40]), .B1(d4[40]), .C1(GND_net), .D1(GND_net), .CIN(n3099), 
          .COUT(n3100), .S0(n702[2]), .S1(n702[3]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_4.INIT0 = 16'h5666;
    defparam add_76_4.INIT1 = 16'h5666;
    defparam add_76_4.INJECT1_0 = "NO";
    defparam add_76_4.INJECT1_1 = "NO";
    CCU2D add_76_6 (.A0(d3[41]), .B0(d4[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[42]), .B1(d4[42]), .C1(GND_net), .D1(GND_net), .CIN(n3100), 
          .COUT(n3101), .S0(n702[4]), .S1(n702[5]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_6.INIT0 = 16'h5666;
    defparam add_76_6.INIT1 = 16'h5666;
    defparam add_76_6.INJECT1_0 = "NO";
    defparam add_76_6.INJECT1_1 = "NO";
    CCU2D add_76_8 (.A0(d3[43]), .B0(d4[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[44]), .B1(d4[44]), .C1(GND_net), .D1(GND_net), .CIN(n3101), 
          .COUT(n3102), .S0(n702[6]), .S1(n702[7]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_8.INIT0 = 16'h5666;
    defparam add_76_8.INIT1 = 16'h5666;
    defparam add_76_8.INJECT1_0 = "NO";
    defparam add_76_8.INJECT1_1 = "NO";
    CCU2D add_76_10 (.A0(d3[45]), .B0(d4[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[46]), .B1(d4[46]), .C1(GND_net), .D1(GND_net), .CIN(n3102), 
          .COUT(n3103), .S0(n702[8]), .S1(n702[9]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_10.INIT0 = 16'h5666;
    defparam add_76_10.INIT1 = 16'h5666;
    defparam add_76_10.INJECT1_0 = "NO";
    defparam add_76_10.INJECT1_1 = "NO";
    CCU2D add_76_12 (.A0(d3[47]), .B0(d4[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[48]), .B1(d4[48]), .C1(GND_net), .D1(GND_net), .CIN(n3103), 
          .COUT(n3104), .S0(n702[10]), .S1(n702[11]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_12.INIT0 = 16'h5666;
    defparam add_76_12.INIT1 = 16'h5666;
    defparam add_76_12.INJECT1_0 = "NO";
    defparam add_76_12.INJECT1_1 = "NO";
    CCU2D add_76_14 (.A0(d3[49]), .B0(d4[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[50]), .B1(d4[50]), .C1(GND_net), .D1(GND_net), .CIN(n3104), 
          .COUT(n3105), .S0(n702[12]), .S1(n702[13]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_14.INIT0 = 16'h5666;
    defparam add_76_14.INIT1 = 16'h5666;
    defparam add_76_14.INJECT1_0 = "NO";
    defparam add_76_14.INJECT1_1 = "NO";
    CCU2D add_76_16 (.A0(d3[51]), .B0(d4[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[52]), .B1(d4[52]), .C1(GND_net), .D1(GND_net), .CIN(n3105), 
          .COUT(n3106), .S0(n702[14]), .S1(n702[15]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_16.INIT0 = 16'h5666;
    defparam add_76_16.INIT1 = 16'h5666;
    defparam add_76_16.INJECT1_0 = "NO";
    defparam add_76_16.INJECT1_1 = "NO";
    CCU2D add_76_18 (.A0(d3[53]), .B0(d4[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[54]), .B1(d4[54]), .C1(GND_net), .D1(GND_net), .CIN(n3106), 
          .COUT(n3107), .S0(n702[16]), .S1(n702[17]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_18.INIT0 = 16'h5666;
    defparam add_76_18.INIT1 = 16'h5666;
    defparam add_76_18.INJECT1_0 = "NO";
    defparam add_76_18.INJECT1_1 = "NO";
    CCU2D add_76_20 (.A0(d3[55]), .B0(d4[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[56]), .B1(d4[56]), .C1(GND_net), .D1(GND_net), .CIN(n3107), 
          .COUT(n3108), .S0(n702[18]), .S1(n702[19]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_20.INIT0 = 16'h5666;
    defparam add_76_20.INIT1 = 16'h5666;
    defparam add_76_20.INJECT1_0 = "NO";
    defparam add_76_20.INJECT1_1 = "NO";
    CCU2D add_76_22 (.A0(d3[57]), .B0(d4[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[58]), .B1(d4[58]), .C1(GND_net), .D1(GND_net), .CIN(n3108), 
          .COUT(n3109), .S0(n702[20]), .S1(n702[21]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_22.INIT0 = 16'h5666;
    defparam add_76_22.INIT1 = 16'h5666;
    defparam add_76_22.INJECT1_0 = "NO";
    defparam add_76_22.INJECT1_1 = "NO";
    CCU2D add_76_24 (.A0(d3[59]), .B0(d4[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[60]), .B1(d4[60]), .C1(GND_net), .D1(GND_net), .CIN(n3109), 
          .COUT(n3110), .S0(n702[22]), .S1(n702[23]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_24.INIT0 = 16'h5666;
    defparam add_76_24.INIT1 = 16'h5666;
    defparam add_76_24.INJECT1_0 = "NO";
    defparam add_76_24.INJECT1_1 = "NO";
    CCU2D add_76_26 (.A0(d3[61]), .B0(d4[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[62]), .B1(d4[62]), .C1(GND_net), .D1(GND_net), .CIN(n3110), 
          .COUT(n3111), .S0(n702[24]), .S1(n702[25]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_26.INIT0 = 16'h5666;
    defparam add_76_26.INIT1 = 16'h5666;
    defparam add_76_26.INJECT1_0 = "NO";
    defparam add_76_26.INJECT1_1 = "NO";
    CCU2D add_76_28 (.A0(d3[63]), .B0(d4[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[64]), .B1(d4[64]), .C1(GND_net), .D1(GND_net), .CIN(n3111), 
          .COUT(n3112), .S0(n702[26]), .S1(n702[27]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_28.INIT0 = 16'h5666;
    defparam add_76_28.INIT1 = 16'h5666;
    defparam add_76_28.INJECT1_0 = "NO";
    defparam add_76_28.INJECT1_1 = "NO";
    CCU2D add_76_30 (.A0(d3[65]), .B0(d4[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[66]), .B1(d4[66]), .C1(GND_net), .D1(GND_net), .CIN(n3112), 
          .COUT(n3113), .S0(n702[28]), .S1(n702[29]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_30.INIT0 = 16'h5666;
    defparam add_76_30.INIT1 = 16'h5666;
    defparam add_76_30.INJECT1_0 = "NO";
    defparam add_76_30.INJECT1_1 = "NO";
    CCU2D add_76_32 (.A0(d3[67]), .B0(d4[67]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[68]), .B1(d4[68]), .C1(GND_net), .D1(GND_net), .CIN(n3113), 
          .COUT(n3114), .S0(n702[30]), .S1(n702[31]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_32.INIT0 = 16'h5666;
    defparam add_76_32.INIT1 = 16'h5666;
    defparam add_76_32.INJECT1_0 = "NO";
    defparam add_76_32.INJECT1_1 = "NO";
    CCU2D add_76_34 (.A0(d3[69]), .B0(d4[69]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[70]), .B1(d4[70]), .C1(GND_net), .D1(GND_net), .CIN(n3114), 
          .COUT(n3115), .S0(n702[32]), .S1(n702[33]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_34.INIT0 = 16'h5666;
    defparam add_76_34.INIT1 = 16'h5666;
    defparam add_76_34.INJECT1_0 = "NO";
    defparam add_76_34.INJECT1_1 = "NO";
    CCU2D add_76_36 (.A0(d3[71]), .B0(d4[71]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[72]), .B1(d4[72]), .C1(GND_net), .D1(GND_net), .CIN(n3115), 
          .COUT(n3116), .S0(n702[34]), .S1(n702[35]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_36.INIT0 = 16'h5666;
    defparam add_76_36.INIT1 = 16'h5666;
    defparam add_76_36.INJECT1_0 = "NO";
    defparam add_76_36.INJECT1_1 = "NO";
    CCU2D add_76_38 (.A0(d3[73]), .B0(d4[73]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3116), 
          .S0(n702[36]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_76_38.INIT0 = 16'h5666;
    defparam add_76_38.INIT1 = 16'h0000;
    defparam add_76_38.INJECT1_0 = "NO";
    defparam add_76_38.INJECT1_1 = "NO";
    CCU2D add_87_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1013), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3120));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_1.INIT0 = 16'hF000;
    defparam add_87_1.INIT1 = 16'h0555;
    defparam add_87_1.INJECT1_0 = "NO";
    defparam add_87_1.INJECT1_1 = "NO";
    CCU2D add_87_3 (.A0(d_d7[37]), .B0(n1013), .C0(n1014[0]), .D0(d7[37]), 
          .A1(d_d7[38]), .B1(n1013), .C1(n1014[1]), .D1(d7[38]), .CIN(n3120), 
          .COUT(n3121), .S0(n1053[0]), .S1(n1053[1]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_3.INIT0 = 16'hb874;
    defparam add_87_3.INIT1 = 16'hb874;
    defparam add_87_3.INJECT1_0 = "NO";
    defparam add_87_3.INJECT1_1 = "NO";
    CCU2D add_87_5 (.A0(d_d7[39]), .B0(n1013), .C0(n1014[2]), .D0(d7[39]), 
          .A1(d_d7[40]), .B1(n1013), .C1(n1014[3]), .D1(d7[40]), .CIN(n3121), 
          .COUT(n3122), .S0(n1053[2]), .S1(n1053[3]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_5.INIT0 = 16'hb874;
    defparam add_87_5.INIT1 = 16'hb874;
    defparam add_87_5.INJECT1_0 = "NO";
    defparam add_87_5.INJECT1_1 = "NO";
    CCU2D add_87_7 (.A0(d_d7[41]), .B0(n1013), .C0(n1014[4]), .D0(d7[41]), 
          .A1(d_d7[42]), .B1(n1013), .C1(n1014[5]), .D1(d7[42]), .CIN(n3122), 
          .COUT(n3123), .S0(n1053[4]), .S1(n1053[5]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_7.INIT0 = 16'hb874;
    defparam add_87_7.INIT1 = 16'hb874;
    defparam add_87_7.INJECT1_0 = "NO";
    defparam add_87_7.INJECT1_1 = "NO";
    CCU2D add_87_9 (.A0(d_d7[43]), .B0(n1013), .C0(n1014[6]), .D0(d7[43]), 
          .A1(d_d7[44]), .B1(n1013), .C1(n1014[7]), .D1(d7[44]), .CIN(n3123), 
          .COUT(n3124), .S0(n1053[6]), .S1(n1053[7]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_9.INIT0 = 16'hb874;
    defparam add_87_9.INIT1 = 16'hb874;
    defparam add_87_9.INJECT1_0 = "NO";
    defparam add_87_9.INJECT1_1 = "NO";
    CCU2D add_87_11 (.A0(d_d7[45]), .B0(n1013), .C0(n1014[8]), .D0(d7[45]), 
          .A1(d_d7[46]), .B1(n1013), .C1(n1014[9]), .D1(d7[46]), .CIN(n3124), 
          .COUT(n3125), .S0(n1053[8]), .S1(n1053[9]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_11.INIT0 = 16'hb874;
    defparam add_87_11.INIT1 = 16'hb874;
    defparam add_87_11.INJECT1_0 = "NO";
    defparam add_87_11.INJECT1_1 = "NO";
    CCU2D add_87_13 (.A0(d_d7[47]), .B0(n1013), .C0(n1014[10]), .D0(d7[47]), 
          .A1(d_d7[48]), .B1(n1013), .C1(n1014[11]), .D1(d7[48]), .CIN(n3125), 
          .COUT(n3126), .S0(n1053[10]), .S1(n1053[11]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_13.INIT0 = 16'hb874;
    defparam add_87_13.INIT1 = 16'hb874;
    defparam add_87_13.INJECT1_0 = "NO";
    defparam add_87_13.INJECT1_1 = "NO";
    CCU2D add_87_15 (.A0(d_d7[49]), .B0(n1013), .C0(n1014[12]), .D0(d7[49]), 
          .A1(d_d7[50]), .B1(n1013), .C1(n1014[13]), .D1(d7[50]), .CIN(n3126), 
          .COUT(n3127), .S0(n1053[12]), .S1(n1053[13]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_15.INIT0 = 16'hb874;
    defparam add_87_15.INIT1 = 16'hb874;
    defparam add_87_15.INJECT1_0 = "NO";
    defparam add_87_15.INJECT1_1 = "NO";
    CCU2D add_87_17 (.A0(d_d7[51]), .B0(n1013), .C0(n1014[14]), .D0(d7[51]), 
          .A1(d_d7[52]), .B1(n1013), .C1(n1014[15]), .D1(d7[52]), .CIN(n3127), 
          .COUT(n3128), .S0(n1053[14]), .S1(n1053[15]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_17.INIT0 = 16'hb874;
    defparam add_87_17.INIT1 = 16'hb874;
    defparam add_87_17.INJECT1_0 = "NO";
    defparam add_87_17.INJECT1_1 = "NO";
    CCU2D add_87_19 (.A0(d_d7[53]), .B0(n1013), .C0(n1014[16]), .D0(d7[53]), 
          .A1(d_d7[54]), .B1(n1013), .C1(n1014[17]), .D1(d7[54]), .CIN(n3128), 
          .COUT(n3129), .S0(n1053[16]), .S1(n1053[17]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_19.INIT0 = 16'hb874;
    defparam add_87_19.INIT1 = 16'hb874;
    defparam add_87_19.INJECT1_0 = "NO";
    defparam add_87_19.INJECT1_1 = "NO";
    CCU2D add_87_21 (.A0(d_d7[55]), .B0(n1013), .C0(n1014[18]), .D0(d7[55]), 
          .A1(d_d7[56]), .B1(n1013), .C1(n1014[19]), .D1(d7[56]), .CIN(n3129), 
          .COUT(n3130), .S0(n1053[18]), .S1(n1053[19]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_21.INIT0 = 16'hb874;
    defparam add_87_21.INIT1 = 16'hb874;
    defparam add_87_21.INJECT1_0 = "NO";
    defparam add_87_21.INJECT1_1 = "NO";
    CCU2D add_87_23 (.A0(d_d7[57]), .B0(n1013), .C0(n1014[20]), .D0(d7[57]), 
          .A1(d_d7[58]), .B1(n1013), .C1(n1014[21]), .D1(d7[58]), .CIN(n3130), 
          .COUT(n3131), .S0(n1053[20]), .S1(n1053[21]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_23.INIT0 = 16'hb874;
    defparam add_87_23.INIT1 = 16'hb874;
    defparam add_87_23.INJECT1_0 = "NO";
    defparam add_87_23.INJECT1_1 = "NO";
    CCU2D add_87_25 (.A0(d_d7[59]), .B0(n1013), .C0(n1014[22]), .D0(d7[59]), 
          .A1(d_d7[60]), .B1(n1013), .C1(n1014[23]), .D1(d7[60]), .CIN(n3131), 
          .COUT(n3132), .S0(n1053[22]), .S1(n1053[23]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_25.INIT0 = 16'hb874;
    defparam add_87_25.INIT1 = 16'hb874;
    defparam add_87_25.INJECT1_0 = "NO";
    defparam add_87_25.INJECT1_1 = "NO";
    CCU2D add_87_27 (.A0(d_d7[61]), .B0(n1013), .C0(n1014[24]), .D0(d7[61]), 
          .A1(d_d7[62]), .B1(n1013), .C1(n1014[25]), .D1(d7[62]), .CIN(n3132), 
          .COUT(n3133), .S0(n1053[24]), .S1(n1053[25]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_27.INIT0 = 16'hb874;
    defparam add_87_27.INIT1 = 16'hb874;
    defparam add_87_27.INJECT1_0 = "NO";
    defparam add_87_27.INJECT1_1 = "NO";
    CCU2D add_87_29 (.A0(d_d7[63]), .B0(n1013), .C0(n1014[26]), .D0(d7[63]), 
          .A1(d_d7[64]), .B1(n1013), .C1(n1014[27]), .D1(d7[64]), .CIN(n3133), 
          .COUT(n3134), .S0(n1053[26]), .S1(n1053[27]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_29.INIT0 = 16'hb874;
    defparam add_87_29.INIT1 = 16'hb874;
    defparam add_87_29.INJECT1_0 = "NO";
    defparam add_87_29.INJECT1_1 = "NO";
    CCU2D add_87_31 (.A0(d_d7[65]), .B0(n1013), .C0(n1014[28]), .D0(d7[65]), 
          .A1(d_d7[66]), .B1(n1013), .C1(n1014[29]), .D1(d7[66]), .CIN(n3134), 
          .COUT(n3135), .S0(n1053[28]), .S1(n1053[29]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_31.INIT0 = 16'hb874;
    defparam add_87_31.INIT1 = 16'hb874;
    defparam add_87_31.INJECT1_0 = "NO";
    defparam add_87_31.INJECT1_1 = "NO";
    CCU2D add_87_33 (.A0(d_d7[67]), .B0(n1013), .C0(n1014[30]), .D0(d7[67]), 
          .A1(d_d7[68]), .B1(n1013), .C1(n1014[31]), .D1(d7[68]), .CIN(n3135), 
          .COUT(n3136), .S0(n1053[30]), .S1(n1053[31]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_33.INIT0 = 16'hb874;
    defparam add_87_33.INIT1 = 16'hb874;
    defparam add_87_33.INJECT1_0 = "NO";
    defparam add_87_33.INJECT1_1 = "NO";
    CCU2D add_87_35 (.A0(d_d7[69]), .B0(n1013), .C0(n1014[32]), .D0(d7[69]), 
          .A1(d_d7[70]), .B1(n1013), .C1(n1014[33]), .D1(d7[70]), .CIN(n3136), 
          .COUT(n3137), .S0(n1053[32]), .S1(n1053[33]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_35.INIT0 = 16'hb874;
    defparam add_87_35.INIT1 = 16'hb874;
    defparam add_87_35.INJECT1_0 = "NO";
    defparam add_87_35.INJECT1_1 = "NO";
    CCU2D add_87_37 (.A0(d_d7[71]), .B0(n1013), .C0(n1014[34]), .D0(d7[71]), 
          .A1(d_d7[72]), .B1(n1013), .C1(n1014[35]), .D1(d7[72]), .CIN(n3137), 
          .COUT(n3138), .S0(n1053[34]), .S1(n1053[35]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_37.INIT0 = 16'hb874;
    defparam add_87_37.INIT1 = 16'hb874;
    defparam add_87_37.INJECT1_0 = "NO";
    defparam add_87_37.INJECT1_1 = "NO";
    CCU2D add_87_39 (.A0(d_d7[73]), .B0(n1013), .C0(n1014[36]), .D0(d7[73]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3138), 
          .S0(n1053[36]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_87_39.INIT0 = 16'hb874;
    defparam add_87_39.INIT1 = 16'h0000;
    defparam add_87_39.INJECT1_0 = "NO";
    defparam add_87_39.INJECT1_1 = "NO";
    CCU2D add_86_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[37]), .B1(d_d7[37]), .C1(GND_net), .D1(GND_net), .COUT(n3139), 
          .S1(n1014[0]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_1.INIT0 = 16'hF000;
    defparam add_86_1.INIT1 = 16'h5999;
    defparam add_86_1.INJECT1_0 = "NO";
    defparam add_86_1.INJECT1_1 = "NO";
    CCU2D add_86_3 (.A0(d7[38]), .B0(d_d7[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[39]), .B1(d_d7[39]), .C1(GND_net), .D1(GND_net), .CIN(n3139), 
          .COUT(n3140), .S0(n1014[1]), .S1(n1014[2]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_3.INIT0 = 16'h5999;
    defparam add_86_3.INIT1 = 16'h5999;
    defparam add_86_3.INJECT1_0 = "NO";
    defparam add_86_3.INJECT1_1 = "NO";
    CCU2D add_86_5 (.A0(d7[40]), .B0(d_d7[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[41]), .B1(d_d7[41]), .C1(GND_net), .D1(GND_net), .CIN(n3140), 
          .COUT(n3141), .S0(n1014[3]), .S1(n1014[4]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_5.INIT0 = 16'h5999;
    defparam add_86_5.INIT1 = 16'h5999;
    defparam add_86_5.INJECT1_0 = "NO";
    defparam add_86_5.INJECT1_1 = "NO";
    CCU2D add_86_7 (.A0(d7[42]), .B0(d_d7[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[43]), .B1(d_d7[43]), .C1(GND_net), .D1(GND_net), .CIN(n3141), 
          .COUT(n3142), .S0(n1014[5]), .S1(n1014[6]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_7.INIT0 = 16'h5999;
    defparam add_86_7.INIT1 = 16'h5999;
    defparam add_86_7.INJECT1_0 = "NO";
    defparam add_86_7.INJECT1_1 = "NO";
    CCU2D add_86_9 (.A0(d7[44]), .B0(d_d7[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[45]), .B1(d_d7[45]), .C1(GND_net), .D1(GND_net), .CIN(n3142), 
          .COUT(n3143), .S0(n1014[7]), .S1(n1014[8]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_9.INIT0 = 16'h5999;
    defparam add_86_9.INIT1 = 16'h5999;
    defparam add_86_9.INJECT1_0 = "NO";
    defparam add_86_9.INJECT1_1 = "NO";
    CCU2D add_86_11 (.A0(d7[46]), .B0(d_d7[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[47]), .B1(d_d7[47]), .C1(GND_net), .D1(GND_net), .CIN(n3143), 
          .COUT(n3144), .S0(n1014[9]), .S1(n1014[10]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_11.INIT0 = 16'h5999;
    defparam add_86_11.INIT1 = 16'h5999;
    defparam add_86_11.INJECT1_0 = "NO";
    defparam add_86_11.INJECT1_1 = "NO";
    CCU2D add_86_13 (.A0(d7[48]), .B0(d_d7[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[49]), .B1(d_d7[49]), .C1(GND_net), .D1(GND_net), .CIN(n3144), 
          .COUT(n3145), .S0(n1014[11]), .S1(n1014[12]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_13.INIT0 = 16'h5999;
    defparam add_86_13.INIT1 = 16'h5999;
    defparam add_86_13.INJECT1_0 = "NO";
    defparam add_86_13.INJECT1_1 = "NO";
    CCU2D add_86_15 (.A0(d7[50]), .B0(d_d7[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[51]), .B1(d_d7[51]), .C1(GND_net), .D1(GND_net), .CIN(n3145), 
          .COUT(n3146), .S0(n1014[13]), .S1(n1014[14]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_15.INIT0 = 16'h5999;
    defparam add_86_15.INIT1 = 16'h5999;
    defparam add_86_15.INJECT1_0 = "NO";
    defparam add_86_15.INJECT1_1 = "NO";
    CCU2D add_86_17 (.A0(d7[52]), .B0(d_d7[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[53]), .B1(d_d7[53]), .C1(GND_net), .D1(GND_net), .CIN(n3146), 
          .COUT(n3147), .S0(n1014[15]), .S1(n1014[16]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_17.INIT0 = 16'h5999;
    defparam add_86_17.INIT1 = 16'h5999;
    defparam add_86_17.INJECT1_0 = "NO";
    defparam add_86_17.INJECT1_1 = "NO";
    CCU2D add_86_19 (.A0(d7[54]), .B0(d_d7[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[55]), .B1(d_d7[55]), .C1(GND_net), .D1(GND_net), .CIN(n3147), 
          .COUT(n3148), .S0(n1014[17]), .S1(n1014[18]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_19.INIT0 = 16'h5999;
    defparam add_86_19.INIT1 = 16'h5999;
    defparam add_86_19.INJECT1_0 = "NO";
    defparam add_86_19.INJECT1_1 = "NO";
    CCU2D add_86_21 (.A0(d7[56]), .B0(d_d7[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[57]), .B1(d_d7[57]), .C1(GND_net), .D1(GND_net), .CIN(n3148), 
          .COUT(n3149), .S0(n1014[19]), .S1(n1014[20]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_21.INIT0 = 16'h5999;
    defparam add_86_21.INIT1 = 16'h5999;
    defparam add_86_21.INJECT1_0 = "NO";
    defparam add_86_21.INJECT1_1 = "NO";
    CCU2D add_86_23 (.A0(d7[58]), .B0(d_d7[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[59]), .B1(d_d7[59]), .C1(GND_net), .D1(GND_net), .CIN(n3149), 
          .COUT(n3150), .S0(n1014[21]), .S1(n1014[22]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_23.INIT0 = 16'h5999;
    defparam add_86_23.INIT1 = 16'h5999;
    defparam add_86_23.INJECT1_0 = "NO";
    defparam add_86_23.INJECT1_1 = "NO";
    CCU2D add_86_25 (.A0(d7[60]), .B0(d_d7[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[61]), .B1(d_d7[61]), .C1(GND_net), .D1(GND_net), .CIN(n3150), 
          .COUT(n3151), .S0(n1014[23]), .S1(n1014[24]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_25.INIT0 = 16'h5999;
    defparam add_86_25.INIT1 = 16'h5999;
    defparam add_86_25.INJECT1_0 = "NO";
    defparam add_86_25.INJECT1_1 = "NO";
    CCU2D add_86_27 (.A0(d7[62]), .B0(d_d7[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[63]), .B1(d_d7[63]), .C1(GND_net), .D1(GND_net), .CIN(n3151), 
          .COUT(n3152), .S0(n1014[25]), .S1(n1014[26]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_27.INIT0 = 16'h5999;
    defparam add_86_27.INIT1 = 16'h5999;
    defparam add_86_27.INJECT1_0 = "NO";
    defparam add_86_27.INJECT1_1 = "NO";
    CCU2D add_86_29 (.A0(d7[64]), .B0(d_d7[64]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[65]), .B1(d_d7[65]), .C1(GND_net), .D1(GND_net), .CIN(n3152), 
          .COUT(n3153), .S0(n1014[27]), .S1(n1014[28]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_29.INIT0 = 16'h5999;
    defparam add_86_29.INIT1 = 16'h5999;
    defparam add_86_29.INJECT1_0 = "NO";
    defparam add_86_29.INJECT1_1 = "NO";
    CCU2D add_86_31 (.A0(d7[66]), .B0(d_d7[66]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[67]), .B1(d_d7[67]), .C1(GND_net), .D1(GND_net), .CIN(n3153), 
          .COUT(n3154), .S0(n1014[29]), .S1(n1014[30]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_31.INIT0 = 16'h5999;
    defparam add_86_31.INIT1 = 16'h5999;
    defparam add_86_31.INJECT1_0 = "NO";
    defparam add_86_31.INJECT1_1 = "NO";
    CCU2D add_86_33 (.A0(d7[68]), .B0(d_d7[68]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[69]), .B1(d_d7[69]), .C1(GND_net), .D1(GND_net), .CIN(n3154), 
          .COUT(n3155), .S0(n1014[31]), .S1(n1014[32]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_33.INIT0 = 16'h5999;
    defparam add_86_33.INIT1 = 16'h5999;
    defparam add_86_33.INJECT1_0 = "NO";
    defparam add_86_33.INJECT1_1 = "NO";
    CCU2D add_86_35 (.A0(d7[70]), .B0(d_d7[70]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[71]), .B1(d_d7[71]), .C1(GND_net), .D1(GND_net), .CIN(n3155), 
          .COUT(n3156), .S0(n1014[33]), .S1(n1014[34]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_35.INIT0 = 16'h5999;
    defparam add_86_35.INIT1 = 16'h5999;
    defparam add_86_35.INJECT1_0 = "NO";
    defparam add_86_35.INJECT1_1 = "NO";
    CCU2D add_86_37 (.A0(d7[72]), .B0(d_d7[72]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[73]), .B1(d_d7[73]), .C1(GND_net), .D1(GND_net), .CIN(n3156), 
          .S0(n1014[35]), .S1(n1014[36]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam add_86_37.INIT0 = 16'h5999;
    defparam add_86_37.INIT1 = 16'h5999;
    defparam add_86_37.INJECT1_0 = "NO";
    defparam add_86_37.INJECT1_1 = "NO";
    CCU2D add_100_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n3158), 
          .S1(n1443[0]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_1.INIT0 = 16'h0000;
    defparam add_100_1.INIT1 = 16'h5999;
    defparam add_100_1.INJECT1_0 = "NO";
    defparam add_100_1.INJECT1_1 = "NO";
    CCU2D add_100_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n3158), 
          .COUT(n3159), .S0(n1443[1]), .S1(n1443[2]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_3.INIT0 = 16'h5999;
    defparam add_100_3.INIT1 = 16'h5999;
    defparam add_100_3.INJECT1_0 = "NO";
    defparam add_100_3.INJECT1_1 = "NO";
    CCU2D add_100_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n3159), 
          .COUT(n3160), .S0(n1443[3]), .S1(n1443[4]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_5.INIT0 = 16'h5999;
    defparam add_100_5.INIT1 = 16'h5999;
    defparam add_100_5.INJECT1_0 = "NO";
    defparam add_100_5.INJECT1_1 = "NO";
    CCU2D add_100_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n3160), 
          .COUT(n3161), .S0(n1443[5]), .S1(n1443[6]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_7.INIT0 = 16'h5999;
    defparam add_100_7.INIT1 = 16'h5999;
    defparam add_100_7.INJECT1_0 = "NO";
    defparam add_100_7.INJECT1_1 = "NO";
    CCU2D add_100_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n3161), 
          .COUT(n3162), .S0(n1443[7]), .S1(n1443[8]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_9.INIT0 = 16'h5999;
    defparam add_100_9.INIT1 = 16'h5999;
    defparam add_100_9.INJECT1_0 = "NO";
    defparam add_100_9.INJECT1_1 = "NO";
    CCU2D add_100_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n3162), 
          .COUT(n3163), .S0(n1443[9]), .S1(n1443[10]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_11.INIT0 = 16'h5999;
    defparam add_100_11.INIT1 = 16'h5999;
    defparam add_100_11.INJECT1_0 = "NO";
    defparam add_100_11.INJECT1_1 = "NO";
    CCU2D add_100_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[12]), .B1(d_d8[12]), .C1(GND_net), .D1(GND_net), .CIN(n3163), 
          .COUT(n3164), .S0(n1443[11]), .S1(n1443[12]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_13.INIT0 = 16'h5999;
    defparam add_100_13.INIT1 = 16'h5999;
    defparam add_100_13.INJECT1_0 = "NO";
    defparam add_100_13.INJECT1_1 = "NO";
    CCU2D add_100_15 (.A0(d8[13]), .B0(d_d8[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[14]), .B1(d_d8[14]), .C1(GND_net), .D1(GND_net), .CIN(n3164), 
          .COUT(n3165), .S0(n1443[13]), .S1(n1443[14]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_15.INIT0 = 16'h5999;
    defparam add_100_15.INIT1 = 16'h5999;
    defparam add_100_15.INJECT1_0 = "NO";
    defparam add_100_15.INJECT1_1 = "NO";
    CCU2D add_100_17 (.A0(d8[15]), .B0(d_d8[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[16]), .B1(d_d8[16]), .C1(GND_net), .D1(GND_net), .CIN(n3165), 
          .COUT(n3166), .S0(n1443[15]), .S1(n1443[16]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_17.INIT0 = 16'h5999;
    defparam add_100_17.INIT1 = 16'h5999;
    defparam add_100_17.INJECT1_0 = "NO";
    defparam add_100_17.INJECT1_1 = "NO";
    CCU2D add_100_19 (.A0(d8[17]), .B0(d_d8[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[18]), .B1(d_d8[18]), .C1(GND_net), .D1(GND_net), .CIN(n3166), 
          .COUT(n3167), .S0(n1443[17]), .S1(n1443[18]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_19.INIT0 = 16'h5999;
    defparam add_100_19.INIT1 = 16'h5999;
    defparam add_100_19.INJECT1_0 = "NO";
    defparam add_100_19.INJECT1_1 = "NO";
    CCU2D add_100_21 (.A0(d8[19]), .B0(d_d8[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[20]), .B1(d_d8[20]), .C1(GND_net), .D1(GND_net), .CIN(n3167), 
          .COUT(n3168), .S0(n1443[19]), .S1(n1443[20]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_21.INIT0 = 16'h5999;
    defparam add_100_21.INIT1 = 16'h5999;
    defparam add_100_21.INJECT1_0 = "NO";
    defparam add_100_21.INJECT1_1 = "NO";
    CCU2D add_100_23 (.A0(d8[21]), .B0(d_d8[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[22]), .B1(d_d8[22]), .C1(GND_net), .D1(GND_net), .CIN(n3168), 
          .COUT(n3169), .S0(n1443[21]), .S1(n1443[22]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_23.INIT0 = 16'h5999;
    defparam add_100_23.INIT1 = 16'h5999;
    defparam add_100_23.INJECT1_0 = "NO";
    defparam add_100_23.INJECT1_1 = "NO";
    CCU2D add_100_25 (.A0(d8[23]), .B0(d_d8[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[24]), .B1(d_d8[24]), .C1(GND_net), .D1(GND_net), .CIN(n3169), 
          .COUT(n3170), .S0(n1443[23]), .S1(n1443[24]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_25.INIT0 = 16'h5999;
    defparam add_100_25.INIT1 = 16'h5999;
    defparam add_100_25.INJECT1_0 = "NO";
    defparam add_100_25.INJECT1_1 = "NO";
    CCU2D add_100_27 (.A0(d8[25]), .B0(d_d8[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[26]), .B1(d_d8[26]), .C1(GND_net), .D1(GND_net), .CIN(n3170), 
          .COUT(n3171), .S0(n1443[25]), .S1(n1443[26]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_27.INIT0 = 16'h5999;
    defparam add_100_27.INIT1 = 16'h5999;
    defparam add_100_27.INJECT1_0 = "NO";
    defparam add_100_27.INJECT1_1 = "NO";
    CCU2D add_100_29 (.A0(d8[27]), .B0(d_d8[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[28]), .B1(d_d8[28]), .C1(GND_net), .D1(GND_net), .CIN(n3171), 
          .COUT(n3172), .S0(n1443[27]), .S1(n1443[28]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_29.INIT0 = 16'h5999;
    defparam add_100_29.INIT1 = 16'h5999;
    defparam add_100_29.INJECT1_0 = "NO";
    defparam add_100_29.INJECT1_1 = "NO";
    CCU2D add_100_31 (.A0(d8[29]), .B0(d_d8[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[30]), .B1(d_d8[30]), .C1(GND_net), .D1(GND_net), .CIN(n3172), 
          .COUT(n3173), .S0(n1443[29]), .S1(n1443[30]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_31.INIT0 = 16'h5999;
    defparam add_100_31.INIT1 = 16'h5999;
    defparam add_100_31.INJECT1_0 = "NO";
    defparam add_100_31.INJECT1_1 = "NO";
    CCU2D add_100_33 (.A0(d8[31]), .B0(d_d8[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[32]), .B1(d_d8[32]), .C1(GND_net), .D1(GND_net), .CIN(n3173), 
          .COUT(n3174), .S0(n1443[31]), .S1(n1443[32]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_33.INIT0 = 16'h5999;
    defparam add_100_33.INIT1 = 16'h5999;
    defparam add_100_33.INJECT1_0 = "NO";
    defparam add_100_33.INJECT1_1 = "NO";
    CCU2D add_100_35 (.A0(d8[33]), .B0(d_d8[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[34]), .B1(d_d8[34]), .C1(GND_net), .D1(GND_net), .CIN(n3174), 
          .COUT(n3175), .S0(n1443[33]), .S1(n1443[34]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_35.INIT0 = 16'h5999;
    defparam add_100_35.INIT1 = 16'h5999;
    defparam add_100_35.INJECT1_0 = "NO";
    defparam add_100_35.INJECT1_1 = "NO";
    CCU2D add_100_37 (.A0(d8[35]), .B0(d_d8[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[36]), .B1(d_d8[36]), .C1(GND_net), .D1(GND_net), .CIN(n3175), 
          .COUT(n3176), .S0(n1443[35]), .S1(n1443[36]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_37.INIT0 = 16'h5999;
    defparam add_100_37.INIT1 = 16'h5999;
    defparam add_100_37.INJECT1_0 = "NO";
    defparam add_100_37.INJECT1_1 = "NO";
    CCU2D add_100_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3176), 
          .S0(n1481));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam add_100_cout.INIT0 = 16'h0000;
    defparam add_100_cout.INIT1 = 16'h0000;
    defparam add_100_cout.INJECT1_0 = "NO";
    defparam add_100_cout.INJECT1_1 = "NO";
    CCU2D add_105_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n3177), 
          .S1(n1599[0]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_1.INIT0 = 16'h0000;
    defparam add_105_1.INIT1 = 16'h5999;
    defparam add_105_1.INJECT1_0 = "NO";
    defparam add_105_1.INJECT1_1 = "NO";
    CCU2D add_105_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n3177), 
          .COUT(n3178), .S0(n1599[1]), .S1(n1599[2]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_3.INIT0 = 16'h5999;
    defparam add_105_3.INIT1 = 16'h5999;
    defparam add_105_3.INJECT1_0 = "NO";
    defparam add_105_3.INJECT1_1 = "NO";
    CCU2D add_105_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n3178), 
          .COUT(n3179), .S0(n1599[3]), .S1(n1599[4]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_5.INIT0 = 16'h5999;
    defparam add_105_5.INIT1 = 16'h5999;
    defparam add_105_5.INJECT1_0 = "NO";
    defparam add_105_5.INJECT1_1 = "NO";
    CCU2D add_105_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n3179), 
          .COUT(n3180), .S0(n1599[5]), .S1(n1599[6]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_7.INIT0 = 16'h5999;
    defparam add_105_7.INIT1 = 16'h5999;
    defparam add_105_7.INJECT1_0 = "NO";
    defparam add_105_7.INJECT1_1 = "NO";
    CCU2D add_105_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n3180), 
          .COUT(n3181), .S0(n1599[7]), .S1(n1599[8]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_9.INIT0 = 16'h5999;
    defparam add_105_9.INIT1 = 16'h5999;
    defparam add_105_9.INJECT1_0 = "NO";
    defparam add_105_9.INJECT1_1 = "NO";
    CCU2D add_105_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n3181), 
          .COUT(n3182), .S0(n1599[9]), .S1(n1599[10]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_11.INIT0 = 16'h5999;
    defparam add_105_11.INIT1 = 16'h5999;
    defparam add_105_11.INJECT1_0 = "NO";
    defparam add_105_11.INJECT1_1 = "NO";
    CCU2D add_105_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[12]), .B1(d_d6[12]), .C1(GND_net), .D1(GND_net), .CIN(n3182), 
          .COUT(n3183), .S0(n1599[11]), .S1(n1599[12]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_13.INIT0 = 16'h5999;
    defparam add_105_13.INIT1 = 16'h5999;
    defparam add_105_13.INJECT1_0 = "NO";
    defparam add_105_13.INJECT1_1 = "NO";
    CCU2D add_105_15 (.A0(d6[13]), .B0(d_d6[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[14]), .B1(d_d6[14]), .C1(GND_net), .D1(GND_net), .CIN(n3183), 
          .COUT(n3184), .S0(n1599[13]), .S1(n1599[14]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_15.INIT0 = 16'h5999;
    defparam add_105_15.INIT1 = 16'h5999;
    defparam add_105_15.INJECT1_0 = "NO";
    defparam add_105_15.INJECT1_1 = "NO";
    CCU2D add_105_17 (.A0(d6[15]), .B0(d_d6[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[16]), .B1(d_d6[16]), .C1(GND_net), .D1(GND_net), .CIN(n3184), 
          .COUT(n3185), .S0(n1599[15]), .S1(n1599[16]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_17.INIT0 = 16'h5999;
    defparam add_105_17.INIT1 = 16'h5999;
    defparam add_105_17.INJECT1_0 = "NO";
    defparam add_105_17.INJECT1_1 = "NO";
    CCU2D add_105_19 (.A0(d6[17]), .B0(d_d6[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[18]), .B1(d_d6[18]), .C1(GND_net), .D1(GND_net), .CIN(n3185), 
          .COUT(n3186), .S0(n1599[17]), .S1(n1599[18]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_19.INIT0 = 16'h5999;
    defparam add_105_19.INIT1 = 16'h5999;
    defparam add_105_19.INJECT1_0 = "NO";
    defparam add_105_19.INJECT1_1 = "NO";
    CCU2D add_105_21 (.A0(d6[19]), .B0(d_d6[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[20]), .B1(d_d6[20]), .C1(GND_net), .D1(GND_net), .CIN(n3186), 
          .COUT(n3187), .S0(n1599[19]), .S1(n1599[20]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_21.INIT0 = 16'h5999;
    defparam add_105_21.INIT1 = 16'h5999;
    defparam add_105_21.INJECT1_0 = "NO";
    defparam add_105_21.INJECT1_1 = "NO";
    CCU2D add_105_23 (.A0(d6[21]), .B0(d_d6[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[22]), .B1(d_d6[22]), .C1(GND_net), .D1(GND_net), .CIN(n3187), 
          .COUT(n3188), .S0(n1599[21]), .S1(n1599[22]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_23.INIT0 = 16'h5999;
    defparam add_105_23.INIT1 = 16'h5999;
    defparam add_105_23.INJECT1_0 = "NO";
    defparam add_105_23.INJECT1_1 = "NO";
    CCU2D add_105_25 (.A0(d6[23]), .B0(d_d6[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[24]), .B1(d_d6[24]), .C1(GND_net), .D1(GND_net), .CIN(n3188), 
          .COUT(n3189), .S0(n1599[23]), .S1(n1599[24]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_25.INIT0 = 16'h5999;
    defparam add_105_25.INIT1 = 16'h5999;
    defparam add_105_25.INJECT1_0 = "NO";
    defparam add_105_25.INJECT1_1 = "NO";
    CCU2D add_105_27 (.A0(d6[25]), .B0(d_d6[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[26]), .B1(d_d6[26]), .C1(GND_net), .D1(GND_net), .CIN(n3189), 
          .COUT(n3190), .S0(n1599[25]), .S1(n1599[26]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_27.INIT0 = 16'h5999;
    defparam add_105_27.INIT1 = 16'h5999;
    defparam add_105_27.INJECT1_0 = "NO";
    defparam add_105_27.INJECT1_1 = "NO";
    CCU2D add_105_29 (.A0(d6[27]), .B0(d_d6[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[28]), .B1(d_d6[28]), .C1(GND_net), .D1(GND_net), .CIN(n3190), 
          .COUT(n3191), .S0(n1599[27]), .S1(n1599[28]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_29.INIT0 = 16'h5999;
    defparam add_105_29.INIT1 = 16'h5999;
    defparam add_105_29.INJECT1_0 = "NO";
    defparam add_105_29.INJECT1_1 = "NO";
    CCU2D add_105_31 (.A0(d6[29]), .B0(d_d6[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[30]), .B1(d_d6[30]), .C1(GND_net), .D1(GND_net), .CIN(n3191), 
          .COUT(n3192), .S0(n1599[29]), .S1(n1599[30]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_31.INIT0 = 16'h5999;
    defparam add_105_31.INIT1 = 16'h5999;
    defparam add_105_31.INJECT1_0 = "NO";
    defparam add_105_31.INJECT1_1 = "NO";
    CCU2D add_105_33 (.A0(d6[31]), .B0(d_d6[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[32]), .B1(d_d6[32]), .C1(GND_net), .D1(GND_net), .CIN(n3192), 
          .COUT(n3193), .S0(n1599[31]), .S1(n1599[32]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_33.INIT0 = 16'h5999;
    defparam add_105_33.INIT1 = 16'h5999;
    defparam add_105_33.INJECT1_0 = "NO";
    defparam add_105_33.INJECT1_1 = "NO";
    CCU2D add_105_35 (.A0(d6[33]), .B0(d_d6[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[34]), .B1(d_d6[34]), .C1(GND_net), .D1(GND_net), .CIN(n3193), 
          .COUT(n3194), .S0(n1599[33]), .S1(n1599[34]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_35.INIT0 = 16'h5999;
    defparam add_105_35.INIT1 = 16'h5999;
    defparam add_105_35.INJECT1_0 = "NO";
    defparam add_105_35.INJECT1_1 = "NO";
    CCU2D add_105_37 (.A0(d6[35]), .B0(d_d6[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[36]), .B1(d_d6[36]), .C1(GND_net), .D1(GND_net), .CIN(n3194), 
          .COUT(n3195), .S0(n1599[35]), .S1(n1599[36]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_37.INIT0 = 16'h5999;
    defparam add_105_37.INIT1 = 16'h5999;
    defparam add_105_37.INJECT1_0 = "NO";
    defparam add_105_37.INJECT1_1 = "NO";
    CCU2D add_105_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3195), 
          .S0(n1637));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam add_105_cout.INIT0 = 16'h0000;
    defparam add_105_cout.INIT1 = 16'h0000;
    defparam add_105_cout.INJECT1_0 = "NO";
    defparam add_105_cout.INJECT1_1 = "NO";
    CCU2D add_62_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n233), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3199));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_1.INIT0 = 16'hF000;
    defparam add_62_1.INIT1 = 16'h0555;
    defparam add_62_1.INJECT1_0 = "NO";
    defparam add_62_1.INJECT1_1 = "NO";
    CCU2D add_62_3 (.A0(d1[37]), .B0(n233), .C0(n234[0]), .D0(MixerOutSin_c_7), 
          .A1(d1[38]), .B1(n233), .C1(n234[1]), .D1(MixerOutSin_c_7), 
          .CIN(n3199), .COUT(n3200), .S0(d1_73__N_1309[37]), .S1(d1_73__N_1309[38]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_3.INIT0 = 16'h74b8;
    defparam add_62_3.INIT1 = 16'h74b8;
    defparam add_62_3.INJECT1_0 = "NO";
    defparam add_62_3.INJECT1_1 = "NO";
    CCU2D add_62_5 (.A0(d1[39]), .B0(n233), .C0(n234[2]), .D0(MixerOutSin_c_7), 
          .A1(d1[40]), .B1(n233), .C1(n234[3]), .D1(MixerOutSin_c_7), 
          .CIN(n3200), .COUT(n3201), .S0(d1_73__N_1309[39]), .S1(d1_73__N_1309[40]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_5.INIT0 = 16'h74b8;
    defparam add_62_5.INIT1 = 16'h74b8;
    defparam add_62_5.INJECT1_0 = "NO";
    defparam add_62_5.INJECT1_1 = "NO";
    CCU2D add_62_7 (.A0(d1[41]), .B0(n233), .C0(n234[4]), .D0(MixerOutSin_c_7), 
          .A1(d1[42]), .B1(n233), .C1(n234[5]), .D1(MixerOutSin_c_7), 
          .CIN(n3201), .COUT(n3202), .S0(d1_73__N_1309[41]), .S1(d1_73__N_1309[42]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_7.INIT0 = 16'h74b8;
    defparam add_62_7.INIT1 = 16'h74b8;
    defparam add_62_7.INJECT1_0 = "NO";
    defparam add_62_7.INJECT1_1 = "NO";
    CCU2D add_62_9 (.A0(d1[43]), .B0(n233), .C0(n234[6]), .D0(MixerOutSin_c_7), 
          .A1(d1[44]), .B1(n233), .C1(n234[7]), .D1(MixerOutSin_c_7), 
          .CIN(n3202), .COUT(n3203), .S0(d1_73__N_1309[43]), .S1(d1_73__N_1309[44]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_9.INIT0 = 16'h74b8;
    defparam add_62_9.INIT1 = 16'h74b8;
    defparam add_62_9.INJECT1_0 = "NO";
    defparam add_62_9.INJECT1_1 = "NO";
    CCU2D add_62_11 (.A0(d1[45]), .B0(n233), .C0(n234[8]), .D0(MixerOutSin_c_7), 
          .A1(d1[46]), .B1(n233), .C1(n234[9]), .D1(MixerOutSin_c_7), 
          .CIN(n3203), .COUT(n3204), .S0(d1_73__N_1309[45]), .S1(d1_73__N_1309[46]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_11.INIT0 = 16'h74b8;
    defparam add_62_11.INIT1 = 16'h74b8;
    defparam add_62_11.INJECT1_0 = "NO";
    defparam add_62_11.INJECT1_1 = "NO";
    CCU2D add_62_13 (.A0(d1[47]), .B0(n233), .C0(n234[10]), .D0(MixerOutSin_c_7), 
          .A1(d1[48]), .B1(n233), .C1(n234[11]), .D1(MixerOutSin_c_7), 
          .CIN(n3204), .COUT(n3205), .S0(d1_73__N_1309[47]), .S1(d1_73__N_1309[48]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_13.INIT0 = 16'h74b8;
    defparam add_62_13.INIT1 = 16'h74b8;
    defparam add_62_13.INJECT1_0 = "NO";
    defparam add_62_13.INJECT1_1 = "NO";
    CCU2D add_62_15 (.A0(d1[49]), .B0(n233), .C0(n234[12]), .D0(MixerOutSin_c_7), 
          .A1(d1[50]), .B1(n233), .C1(n234[13]), .D1(MixerOutSin_c_7), 
          .CIN(n3205), .COUT(n3206), .S0(d1_73__N_1309[49]), .S1(d1_73__N_1309[50]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_15.INIT0 = 16'h74b8;
    defparam add_62_15.INIT1 = 16'h74b8;
    defparam add_62_15.INJECT1_0 = "NO";
    defparam add_62_15.INJECT1_1 = "NO";
    CCU2D add_62_17 (.A0(d1[51]), .B0(n233), .C0(n234[14]), .D0(MixerOutSin_c_7), 
          .A1(d1[52]), .B1(n233), .C1(n234[15]), .D1(MixerOutSin_c_7), 
          .CIN(n3206), .COUT(n3207), .S0(d1_73__N_1309[51]), .S1(d1_73__N_1309[52]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_17.INIT0 = 16'h74b8;
    defparam add_62_17.INIT1 = 16'h74b8;
    defparam add_62_17.INJECT1_0 = "NO";
    defparam add_62_17.INJECT1_1 = "NO";
    CCU2D add_62_19 (.A0(d1[53]), .B0(n233), .C0(n234[16]), .D0(MixerOutSin_c_7), 
          .A1(d1[54]), .B1(n233), .C1(n234[17]), .D1(MixerOutSin_c_7), 
          .CIN(n3207), .COUT(n3208), .S0(d1_73__N_1309[53]), .S1(d1_73__N_1309[54]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_19.INIT0 = 16'h74b8;
    defparam add_62_19.INIT1 = 16'h74b8;
    defparam add_62_19.INJECT1_0 = "NO";
    defparam add_62_19.INJECT1_1 = "NO";
    CCU2D add_62_21 (.A0(d1[55]), .B0(n233), .C0(n234[18]), .D0(MixerOutSin_c_7), 
          .A1(d1[56]), .B1(n233), .C1(n234[19]), .D1(MixerOutSin_c_7), 
          .CIN(n3208), .COUT(n3209), .S0(d1_73__N_1309[55]), .S1(d1_73__N_1309[56]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_21.INIT0 = 16'h74b8;
    defparam add_62_21.INIT1 = 16'h74b8;
    defparam add_62_21.INJECT1_0 = "NO";
    defparam add_62_21.INJECT1_1 = "NO";
    CCU2D add_62_23 (.A0(d1[57]), .B0(n233), .C0(n234[20]), .D0(MixerOutSin_c_7), 
          .A1(d1[58]), .B1(n233), .C1(n234[21]), .D1(MixerOutSin_c_7), 
          .CIN(n3209), .COUT(n3210), .S0(d1_73__N_1309[57]), .S1(d1_73__N_1309[58]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_23.INIT0 = 16'h74b8;
    defparam add_62_23.INIT1 = 16'h74b8;
    defparam add_62_23.INJECT1_0 = "NO";
    defparam add_62_23.INJECT1_1 = "NO";
    CCU2D add_62_25 (.A0(d1[59]), .B0(n233), .C0(n234[22]), .D0(MixerOutSin_c_7), 
          .A1(d1[60]), .B1(n233), .C1(n234[23]), .D1(MixerOutSin_c_7), 
          .CIN(n3210), .COUT(n3211), .S0(d1_73__N_1309[59]), .S1(d1_73__N_1309[60]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_25.INIT0 = 16'h74b8;
    defparam add_62_25.INIT1 = 16'h74b8;
    defparam add_62_25.INJECT1_0 = "NO";
    defparam add_62_25.INJECT1_1 = "NO";
    CCU2D add_62_27 (.A0(d1[61]), .B0(n233), .C0(n234[24]), .D0(MixerOutSin_c_7), 
          .A1(d1[62]), .B1(n233), .C1(n234[25]), .D1(MixerOutSin_c_7), 
          .CIN(n3211), .COUT(n3212), .S0(d1_73__N_1309[61]), .S1(d1_73__N_1309[62]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_27.INIT0 = 16'h74b8;
    defparam add_62_27.INIT1 = 16'h74b8;
    defparam add_62_27.INJECT1_0 = "NO";
    defparam add_62_27.INJECT1_1 = "NO";
    CCU2D add_62_29 (.A0(d1[63]), .B0(n233), .C0(n234[26]), .D0(MixerOutSin_c_7), 
          .A1(d1[64]), .B1(n233), .C1(n234[27]), .D1(MixerOutSin_c_7), 
          .CIN(n3212), .COUT(n3213), .S0(d1_73__N_1309[63]), .S1(d1_73__N_1309[64]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_29.INIT0 = 16'h74b8;
    defparam add_62_29.INIT1 = 16'h74b8;
    defparam add_62_29.INJECT1_0 = "NO";
    defparam add_62_29.INJECT1_1 = "NO";
    CCU2D add_62_31 (.A0(d1[65]), .B0(n233), .C0(n234[28]), .D0(MixerOutSin_c_7), 
          .A1(d1[66]), .B1(n233), .C1(n234[29]), .D1(MixerOutSin_c_7), 
          .CIN(n3213), .COUT(n3214), .S0(d1_73__N_1309[65]), .S1(d1_73__N_1309[66]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_31.INIT0 = 16'h74b8;
    defparam add_62_31.INIT1 = 16'h74b8;
    defparam add_62_31.INJECT1_0 = "NO";
    defparam add_62_31.INJECT1_1 = "NO";
    CCU2D add_62_33 (.A0(d1[67]), .B0(n233), .C0(n234[30]), .D0(MixerOutSin_c_7), 
          .A1(d1[68]), .B1(n233), .C1(n234[31]), .D1(MixerOutSin_c_7), 
          .CIN(n3214), .COUT(n3215), .S0(d1_73__N_1309[67]), .S1(d1_73__N_1309[68]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_33.INIT0 = 16'h74b8;
    defparam add_62_33.INIT1 = 16'h74b8;
    defparam add_62_33.INJECT1_0 = "NO";
    defparam add_62_33.INJECT1_1 = "NO";
    CCU2D add_62_35 (.A0(d1[69]), .B0(n233), .C0(n234[32]), .D0(MixerOutSin_c_7), 
          .A1(d1[70]), .B1(n233), .C1(n234[33]), .D1(MixerOutSin_c_7), 
          .CIN(n3215), .COUT(n3216), .S0(d1_73__N_1309[69]), .S1(d1_73__N_1309[70]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_35.INIT0 = 16'h74b8;
    defparam add_62_35.INIT1 = 16'h74b8;
    defparam add_62_35.INJECT1_0 = "NO";
    defparam add_62_35.INJECT1_1 = "NO";
    CCU2D add_62_37 (.A0(d1[71]), .B0(n233), .C0(n234[34]), .D0(MixerOutSin_c_7), 
          .A1(d1[72]), .B1(n233), .C1(n234[35]), .D1(MixerOutSin_c_7), 
          .CIN(n3216), .COUT(n3217), .S0(d1_73__N_1309[71]), .S1(d1_73__N_1309[72]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_37.INIT0 = 16'h74b8;
    defparam add_62_37.INIT1 = 16'h74b8;
    defparam add_62_37.INJECT1_0 = "NO";
    defparam add_62_37.INJECT1_1 = "NO";
    CCU2D add_62_39 (.A0(d1[73]), .B0(n233), .C0(n234[36]), .D0(MixerOutSin_c_7), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3217), 
          .S0(d1_73__N_1309[73]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_62_39.INIT0 = 16'h74b8;
    defparam add_62_39.INIT1 = 16'h0000;
    defparam add_62_39.INJECT1_0 = "NO";
    defparam add_62_39.INJECT1_1 = "NO";
    LUT4 mux_114_i1_3_lut (.A(n1326[29]), .B(n1365[29]), .C(n1325), .Z(n1404[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i1_3_lut.init = 16'hcaca;
    CCU2D add_67_2 (.A0(d1[37]), .B0(d2[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[38]), .B1(d2[38]), .C1(GND_net), .D1(GND_net), .COUT(n3220), 
          .S1(n429[1]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_2.INIT0 = 16'h1000;
    defparam add_67_2.INIT1 = 16'h5666;
    defparam add_67_2.INJECT1_0 = "NO";
    defparam add_67_2.INJECT1_1 = "NO";
    CCU2D add_67_4 (.A0(d1[39]), .B0(d2[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[40]), .B1(d2[40]), .C1(GND_net), .D1(GND_net), .CIN(n3220), 
          .COUT(n3221), .S0(n429[2]), .S1(n429[3]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_4.INIT0 = 16'h5666;
    defparam add_67_4.INIT1 = 16'h5666;
    defparam add_67_4.INJECT1_0 = "NO";
    defparam add_67_4.INJECT1_1 = "NO";
    CCU2D add_67_6 (.A0(d1[41]), .B0(d2[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[42]), .B1(d2[42]), .C1(GND_net), .D1(GND_net), .CIN(n3221), 
          .COUT(n3222), .S0(n429[4]), .S1(n429[5]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_6.INIT0 = 16'h5666;
    defparam add_67_6.INIT1 = 16'h5666;
    defparam add_67_6.INJECT1_0 = "NO";
    defparam add_67_6.INJECT1_1 = "NO";
    CCU2D add_67_8 (.A0(d1[43]), .B0(d2[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[44]), .B1(d2[44]), .C1(GND_net), .D1(GND_net), .CIN(n3222), 
          .COUT(n3223), .S0(n429[6]), .S1(n429[7]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_8.INIT0 = 16'h5666;
    defparam add_67_8.INIT1 = 16'h5666;
    defparam add_67_8.INJECT1_0 = "NO";
    defparam add_67_8.INJECT1_1 = "NO";
    CCU2D add_67_10 (.A0(d1[45]), .B0(d2[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[46]), .B1(d2[46]), .C1(GND_net), .D1(GND_net), .CIN(n3223), 
          .COUT(n3224), .S0(n429[8]), .S1(n429[9]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_10.INIT0 = 16'h5666;
    defparam add_67_10.INIT1 = 16'h5666;
    defparam add_67_10.INJECT1_0 = "NO";
    defparam add_67_10.INJECT1_1 = "NO";
    CCU2D add_67_12 (.A0(d1[47]), .B0(d2[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[48]), .B1(d2[48]), .C1(GND_net), .D1(GND_net), .CIN(n3224), 
          .COUT(n3225), .S0(n429[10]), .S1(n429[11]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_12.INIT0 = 16'h5666;
    defparam add_67_12.INIT1 = 16'h5666;
    defparam add_67_12.INJECT1_0 = "NO";
    defparam add_67_12.INJECT1_1 = "NO";
    CCU2D add_67_14 (.A0(d1[49]), .B0(d2[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[50]), .B1(d2[50]), .C1(GND_net), .D1(GND_net), .CIN(n3225), 
          .COUT(n3226), .S0(n429[12]), .S1(n429[13]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_14.INIT0 = 16'h5666;
    defparam add_67_14.INIT1 = 16'h5666;
    defparam add_67_14.INJECT1_0 = "NO";
    defparam add_67_14.INJECT1_1 = "NO";
    CCU2D add_67_16 (.A0(d1[51]), .B0(d2[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[52]), .B1(d2[52]), .C1(GND_net), .D1(GND_net), .CIN(n3226), 
          .COUT(n3227), .S0(n429[14]), .S1(n429[15]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_16.INIT0 = 16'h5666;
    defparam add_67_16.INIT1 = 16'h5666;
    defparam add_67_16.INJECT1_0 = "NO";
    defparam add_67_16.INJECT1_1 = "NO";
    CCU2D add_67_18 (.A0(d1[53]), .B0(d2[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[54]), .B1(d2[54]), .C1(GND_net), .D1(GND_net), .CIN(n3227), 
          .COUT(n3228), .S0(n429[16]), .S1(n429[17]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_18.INIT0 = 16'h5666;
    defparam add_67_18.INIT1 = 16'h5666;
    defparam add_67_18.INJECT1_0 = "NO";
    defparam add_67_18.INJECT1_1 = "NO";
    CCU2D add_67_20 (.A0(d1[55]), .B0(d2[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[56]), .B1(d2[56]), .C1(GND_net), .D1(GND_net), .CIN(n3228), 
          .COUT(n3229), .S0(n429[18]), .S1(n429[19]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_20.INIT0 = 16'h5666;
    defparam add_67_20.INIT1 = 16'h5666;
    defparam add_67_20.INJECT1_0 = "NO";
    defparam add_67_20.INJECT1_1 = "NO";
    CCU2D add_67_22 (.A0(d1[57]), .B0(d2[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[58]), .B1(d2[58]), .C1(GND_net), .D1(GND_net), .CIN(n3229), 
          .COUT(n3230), .S0(n429[20]), .S1(n429[21]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_22.INIT0 = 16'h5666;
    defparam add_67_22.INIT1 = 16'h5666;
    defparam add_67_22.INJECT1_0 = "NO";
    defparam add_67_22.INJECT1_1 = "NO";
    CCU2D add_67_24 (.A0(d1[59]), .B0(d2[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[60]), .B1(d2[60]), .C1(GND_net), .D1(GND_net), .CIN(n3230), 
          .COUT(n3231), .S0(n429[22]), .S1(n429[23]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_24.INIT0 = 16'h5666;
    defparam add_67_24.INIT1 = 16'h5666;
    defparam add_67_24.INJECT1_0 = "NO";
    defparam add_67_24.INJECT1_1 = "NO";
    CCU2D add_67_26 (.A0(d1[61]), .B0(d2[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[62]), .B1(d2[62]), .C1(GND_net), .D1(GND_net), .CIN(n3231), 
          .COUT(n3232), .S0(n429[24]), .S1(n429[25]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_26.INIT0 = 16'h5666;
    defparam add_67_26.INIT1 = 16'h5666;
    defparam add_67_26.INJECT1_0 = "NO";
    defparam add_67_26.INJECT1_1 = "NO";
    CCU2D add_67_28 (.A0(d1[63]), .B0(d2[63]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[64]), .B1(d2[64]), .C1(GND_net), .D1(GND_net), .CIN(n3232), 
          .COUT(n3233), .S0(n429[26]), .S1(n429[27]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_28.INIT0 = 16'h5666;
    defparam add_67_28.INIT1 = 16'h5666;
    defparam add_67_28.INJECT1_0 = "NO";
    defparam add_67_28.INJECT1_1 = "NO";
    CCU2D add_67_30 (.A0(d1[65]), .B0(d2[65]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[66]), .B1(d2[66]), .C1(GND_net), .D1(GND_net), .CIN(n3233), 
          .COUT(n3234), .S0(n429[28]), .S1(n429[29]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_30.INIT0 = 16'h5666;
    defparam add_67_30.INIT1 = 16'h5666;
    defparam add_67_30.INJECT1_0 = "NO";
    defparam add_67_30.INJECT1_1 = "NO";
    CCU2D add_67_32 (.A0(d1[67]), .B0(d2[67]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[68]), .B1(d2[68]), .C1(GND_net), .D1(GND_net), .CIN(n3234), 
          .COUT(n3235), .S0(n429[30]), .S1(n429[31]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_32.INIT0 = 16'h5666;
    defparam add_67_32.INIT1 = 16'h5666;
    defparam add_67_32.INJECT1_0 = "NO";
    defparam add_67_32.INJECT1_1 = "NO";
    CCU2D add_67_34 (.A0(d1[69]), .B0(d2[69]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[70]), .B1(d2[70]), .C1(GND_net), .D1(GND_net), .CIN(n3235), 
          .COUT(n3236), .S0(n429[32]), .S1(n429[33]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_34.INIT0 = 16'h5666;
    defparam add_67_34.INIT1 = 16'h5666;
    defparam add_67_34.INJECT1_0 = "NO";
    defparam add_67_34.INJECT1_1 = "NO";
    CCU2D add_67_36 (.A0(d1[71]), .B0(d2[71]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[72]), .B1(d2[72]), .C1(GND_net), .D1(GND_net), .CIN(n3236), 
          .COUT(n3237), .S0(n429[34]), .S1(n429[35]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_36.INIT0 = 16'h5666;
    defparam add_67_36.INIT1 = 16'h5666;
    defparam add_67_36.INJECT1_0 = "NO";
    defparam add_67_36.INJECT1_1 = "NO";
    CCU2D add_67_38 (.A0(d1[73]), .B0(d2[73]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3237), 
          .S0(n429[36]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_67_38.INIT0 = 16'h5666;
    defparam add_67_38.INIT1 = 16'h0000;
    defparam add_67_38.INJECT1_0 = "NO";
    defparam add_67_38.INJECT1_1 = "NO";
    LUT4 mux_114_i8_3_lut (.A(n1326[36]), .B(n1365[36]), .C(n1325), .Z(n1404[36])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam mux_114_i8_3_lut.init = 16'hcaca;
    CCU2D add_61_2 (.A0(MixerOutSin_c_7), .B0(d1[37]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[38]), .C1(GND_net), .D1(GND_net), 
          .COUT(n3239), .S1(n234[1]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_2.INIT0 = 16'h7000;
    defparam add_61_2.INIT1 = 16'h5666;
    defparam add_61_2.INJECT1_0 = "NO";
    defparam add_61_2.INJECT1_1 = "NO";
    CCU2D add_61_4 (.A0(MixerOutSin_c_7), .B0(d1[39]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[40]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3239), .COUT(n3240), .S0(n234[2]), .S1(n234[3]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_4.INIT0 = 16'h5666;
    defparam add_61_4.INIT1 = 16'h5666;
    defparam add_61_4.INJECT1_0 = "NO";
    defparam add_61_4.INJECT1_1 = "NO";
    CCU2D add_61_6 (.A0(MixerOutSin_c_7), .B0(d1[41]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[42]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3240), .COUT(n3241), .S0(n234[4]), .S1(n234[5]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_6.INIT0 = 16'h5666;
    defparam add_61_6.INIT1 = 16'h5666;
    defparam add_61_6.INJECT1_0 = "NO";
    defparam add_61_6.INJECT1_1 = "NO";
    CCU2D add_61_8 (.A0(MixerOutSin_c_7), .B0(d1[43]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[44]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3241), .COUT(n3242), .S0(n234[6]), .S1(n234[7]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_8.INIT0 = 16'h5666;
    defparam add_61_8.INIT1 = 16'h5666;
    defparam add_61_8.INJECT1_0 = "NO";
    defparam add_61_8.INJECT1_1 = "NO";
    CCU2D add_61_10 (.A0(MixerOutSin_c_7), .B0(d1[45]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3242), .COUT(n3243), .S0(n234[8]), .S1(n234[9]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_10.INIT0 = 16'h5666;
    defparam add_61_10.INIT1 = 16'h5666;
    defparam add_61_10.INJECT1_0 = "NO";
    defparam add_61_10.INJECT1_1 = "NO";
    CCU2D add_61_12 (.A0(MixerOutSin_c_7), .B0(d1[47]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3243), .COUT(n3244), .S0(n234[10]), .S1(n234[11]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_12.INIT0 = 16'h5666;
    defparam add_61_12.INIT1 = 16'h5666;
    defparam add_61_12.INJECT1_0 = "NO";
    defparam add_61_12.INJECT1_1 = "NO";
    CCU2D add_61_14 (.A0(MixerOutSin_c_7), .B0(d1[49]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3244), .COUT(n3245), .S0(n234[12]), .S1(n234[13]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_14.INIT0 = 16'h5666;
    defparam add_61_14.INIT1 = 16'h5666;
    defparam add_61_14.INJECT1_0 = "NO";
    defparam add_61_14.INJECT1_1 = "NO";
    CCU2D add_61_16 (.A0(MixerOutSin_c_7), .B0(d1[51]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3245), .COUT(n3246), .S0(n234[14]), .S1(n234[15]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_16.INIT0 = 16'h5666;
    defparam add_61_16.INIT1 = 16'h5666;
    defparam add_61_16.INJECT1_0 = "NO";
    defparam add_61_16.INJECT1_1 = "NO";
    CCU2D add_61_18 (.A0(MixerOutSin_c_7), .B0(d1[53]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3246), .COUT(n3247), .S0(n234[16]), .S1(n234[17]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_18.INIT0 = 16'h5666;
    defparam add_61_18.INIT1 = 16'h5666;
    defparam add_61_18.INJECT1_0 = "NO";
    defparam add_61_18.INJECT1_1 = "NO";
    CCU2D add_61_20 (.A0(MixerOutSin_c_7), .B0(d1[55]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3247), .COUT(n3248), .S0(n234[18]), .S1(n234[19]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_20.INIT0 = 16'h5666;
    defparam add_61_20.INIT1 = 16'h5666;
    defparam add_61_20.INJECT1_0 = "NO";
    defparam add_61_20.INJECT1_1 = "NO";
    CCU2D add_61_22 (.A0(MixerOutSin_c_7), .B0(d1[57]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[58]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3248), .COUT(n3249), .S0(n234[20]), .S1(n234[21]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_22.INIT0 = 16'h5666;
    defparam add_61_22.INIT1 = 16'h5666;
    defparam add_61_22.INJECT1_0 = "NO";
    defparam add_61_22.INJECT1_1 = "NO";
    CCU2D add_61_24 (.A0(MixerOutSin_c_7), .B0(d1[59]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[60]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3249), .COUT(n3250), .S0(n234[22]), .S1(n234[23]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_24.INIT0 = 16'h5666;
    defparam add_61_24.INIT1 = 16'h5666;
    defparam add_61_24.INJECT1_0 = "NO";
    defparam add_61_24.INJECT1_1 = "NO";
    CCU2D add_61_26 (.A0(MixerOutSin_c_7), .B0(d1[61]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[62]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3250), .COUT(n3251), .S0(n234[24]), .S1(n234[25]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_26.INIT0 = 16'h5666;
    defparam add_61_26.INIT1 = 16'h5666;
    defparam add_61_26.INJECT1_0 = "NO";
    defparam add_61_26.INJECT1_1 = "NO";
    CCU2D add_61_28 (.A0(MixerOutSin_c_7), .B0(d1[63]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[64]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3251), .COUT(n3252), .S0(n234[26]), .S1(n234[27]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_28.INIT0 = 16'h5666;
    defparam add_61_28.INIT1 = 16'h5666;
    defparam add_61_28.INJECT1_0 = "NO";
    defparam add_61_28.INJECT1_1 = "NO";
    CCU2D add_61_30 (.A0(MixerOutSin_c_7), .B0(d1[65]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[66]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3252), .COUT(n3253), .S0(n234[28]), .S1(n234[29]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_30.INIT0 = 16'h5666;
    defparam add_61_30.INIT1 = 16'h5666;
    defparam add_61_30.INJECT1_0 = "NO";
    defparam add_61_30.INJECT1_1 = "NO";
    CCU2D add_61_32 (.A0(MixerOutSin_c_7), .B0(d1[67]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[68]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3253), .COUT(n3254), .S0(n234[30]), .S1(n234[31]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_32.INIT0 = 16'h5666;
    defparam add_61_32.INIT1 = 16'h5666;
    defparam add_61_32.INJECT1_0 = "NO";
    defparam add_61_32.INJECT1_1 = "NO";
    CCU2D add_61_34 (.A0(MixerOutSin_c_7), .B0(d1[69]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[70]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3254), .COUT(n3255), .S0(n234[32]), .S1(n234[33]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_34.INIT0 = 16'h5666;
    defparam add_61_34.INIT1 = 16'h5666;
    defparam add_61_34.INJECT1_0 = "NO";
    defparam add_61_34.INJECT1_1 = "NO";
    CCU2D add_61_36 (.A0(MixerOutSin_c_7), .B0(d1[71]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[72]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3255), .COUT(n3256), .S0(n234[34]), .S1(n234[35]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_36.INIT0 = 16'h5666;
    defparam add_61_36.INIT1 = 16'h5666;
    defparam add_61_36.INJECT1_0 = "NO";
    defparam add_61_36.INJECT1_1 = "NO";
    CCU2D add_61_38 (.A0(MixerOutSin_c_7), .B0(d1[73]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3256), .S0(n234[36]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_61_38.INIT0 = 16'h5666;
    defparam add_61_38.INIT1 = 16'h0000;
    defparam add_61_38.INJECT1_0 = "NO";
    defparam add_61_38.INJECT1_1 = "NO";
    LUT4 i1011_2_lut (.A(MixerOutSin_c_0), .B(d1[0]), .Z(d1_73__N_1309[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1011_2_lut.init = 16'h6666;
    CCU2D add_60_2 (.A0(MixerOutSin_c_0), .B0(d1[0]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_1), .B1(d1[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n3258), .S1(d1_73__N_1309[1]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_2.INIT0 = 16'h7000;
    defparam add_60_2.INIT1 = 16'h5666;
    defparam add_60_2.INJECT1_0 = "NO";
    defparam add_60_2.INJECT1_1 = "NO";
    CCU2D add_60_4 (.A0(MixerOutSin_c_2), .B0(d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_3), .B1(d1[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3258), .COUT(n3259), .S0(d1_73__N_1309[2]), .S1(d1_73__N_1309[3]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_4.INIT0 = 16'h5666;
    defparam add_60_4.INIT1 = 16'h5666;
    defparam add_60_4.INJECT1_0 = "NO";
    defparam add_60_4.INJECT1_1 = "NO";
    CCU2D add_60_6 (.A0(MixerOutSin_c_4), .B0(d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_5), .B1(d1[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3259), .COUT(n3260), .S0(d1_73__N_1309[4]), .S1(d1_73__N_1309[5]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_6.INIT0 = 16'h5666;
    defparam add_60_6.INIT1 = 16'h5666;
    defparam add_60_6.INJECT1_0 = "NO";
    defparam add_60_6.INJECT1_1 = "NO";
    CCU2D add_60_8 (.A0(MixerOutSin_c_6), .B0(d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3260), .COUT(n3261), .S0(d1_73__N_1309[6]), .S1(d1_73__N_1309[7]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_8.INIT0 = 16'h5666;
    defparam add_60_8.INIT1 = 16'h5666;
    defparam add_60_8.INJECT1_0 = "NO";
    defparam add_60_8.INJECT1_1 = "NO";
    CCU2D add_60_10 (.A0(MixerOutSin_c_7), .B0(d1[8]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3261), .COUT(n3262), .S0(d1_73__N_1309[8]), .S1(d1_73__N_1309[9]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_10.INIT0 = 16'h5666;
    defparam add_60_10.INIT1 = 16'h5666;
    defparam add_60_10.INJECT1_0 = "NO";
    defparam add_60_10.INJECT1_1 = "NO";
    CCU2D add_60_12 (.A0(MixerOutSin_c_7), .B0(d1[10]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3262), .COUT(n3263), .S0(d1_73__N_1309[10]), 
          .S1(d1_73__N_1309[11]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_12.INIT0 = 16'h5666;
    defparam add_60_12.INIT1 = 16'h5666;
    defparam add_60_12.INJECT1_0 = "NO";
    defparam add_60_12.INJECT1_1 = "NO";
    CCU2D add_60_14 (.A0(MixerOutSin_c_7), .B0(d1[12]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3263), .COUT(n3264), .S0(d1_73__N_1309[12]), 
          .S1(d1_73__N_1309[13]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_14.INIT0 = 16'h5666;
    defparam add_60_14.INIT1 = 16'h5666;
    defparam add_60_14.INJECT1_0 = "NO";
    defparam add_60_14.INJECT1_1 = "NO";
    CCU2D add_60_16 (.A0(MixerOutSin_c_7), .B0(d1[14]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3264), .COUT(n3265), .S0(d1_73__N_1309[14]), 
          .S1(d1_73__N_1309[15]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_16.INIT0 = 16'h5666;
    defparam add_60_16.INIT1 = 16'h5666;
    defparam add_60_16.INJECT1_0 = "NO";
    defparam add_60_16.INJECT1_1 = "NO";
    CCU2D add_60_18 (.A0(MixerOutSin_c_7), .B0(d1[16]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[17]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3265), .COUT(n3266), .S0(d1_73__N_1309[16]), 
          .S1(d1_73__N_1309[17]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_18.INIT0 = 16'h5666;
    defparam add_60_18.INIT1 = 16'h5666;
    defparam add_60_18.INJECT1_0 = "NO";
    defparam add_60_18.INJECT1_1 = "NO";
    CCU2D add_60_20 (.A0(MixerOutSin_c_7), .B0(d1[18]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3266), .COUT(n3267), .S0(d1_73__N_1309[18]), 
          .S1(d1_73__N_1309[19]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_20.INIT0 = 16'h5666;
    defparam add_60_20.INIT1 = 16'h5666;
    defparam add_60_20.INJECT1_0 = "NO";
    defparam add_60_20.INJECT1_1 = "NO";
    CCU2D add_60_22 (.A0(MixerOutSin_c_7), .B0(d1[20]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[21]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3267), .COUT(n3268), .S0(d1_73__N_1309[20]), 
          .S1(d1_73__N_1309[21]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_22.INIT0 = 16'h5666;
    defparam add_60_22.INIT1 = 16'h5666;
    defparam add_60_22.INJECT1_0 = "NO";
    defparam add_60_22.INJECT1_1 = "NO";
    CCU2D add_60_24 (.A0(MixerOutSin_c_7), .B0(d1[22]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[23]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3268), .COUT(n3269), .S0(d1_73__N_1309[22]), 
          .S1(d1_73__N_1309[23]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_24.INIT0 = 16'h5666;
    defparam add_60_24.INIT1 = 16'h5666;
    defparam add_60_24.INJECT1_0 = "NO";
    defparam add_60_24.INJECT1_1 = "NO";
    CCU2D add_60_26 (.A0(MixerOutSin_c_7), .B0(d1[24]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[25]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3269), .COUT(n3270), .S0(d1_73__N_1309[24]), 
          .S1(d1_73__N_1309[25]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_26.INIT0 = 16'h5666;
    defparam add_60_26.INIT1 = 16'h5666;
    defparam add_60_26.INJECT1_0 = "NO";
    defparam add_60_26.INJECT1_1 = "NO";
    CCU2D add_60_28 (.A0(MixerOutSin_c_7), .B0(d1[26]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[27]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3270), .COUT(n3271), .S0(d1_73__N_1309[26]), 
          .S1(d1_73__N_1309[27]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_28.INIT0 = 16'h5666;
    defparam add_60_28.INIT1 = 16'h5666;
    defparam add_60_28.INJECT1_0 = "NO";
    defparam add_60_28.INJECT1_1 = "NO";
    CCU2D add_60_30 (.A0(MixerOutSin_c_7), .B0(d1[28]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[29]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3271), .COUT(n3272), .S0(d1_73__N_1309[28]), 
          .S1(d1_73__N_1309[29]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_30.INIT0 = 16'h5666;
    defparam add_60_30.INIT1 = 16'h5666;
    defparam add_60_30.INJECT1_0 = "NO";
    defparam add_60_30.INJECT1_1 = "NO";
    CCU2D add_60_32 (.A0(MixerOutSin_c_7), .B0(d1[30]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[31]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3272), .COUT(n3273), .S0(d1_73__N_1309[30]), 
          .S1(d1_73__N_1309[31]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_32.INIT0 = 16'h5666;
    defparam add_60_32.INIT1 = 16'h5666;
    defparam add_60_32.INJECT1_0 = "NO";
    defparam add_60_32.INJECT1_1 = "NO";
    CCU2D add_60_34 (.A0(MixerOutSin_c_7), .B0(d1[32]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[33]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3273), .COUT(n3274), .S0(d1_73__N_1309[32]), 
          .S1(d1_73__N_1309[33]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_34.INIT0 = 16'h5666;
    defparam add_60_34.INIT1 = 16'h5666;
    defparam add_60_34.INJECT1_0 = "NO";
    defparam add_60_34.INJECT1_1 = "NO";
    CCU2D add_60_36 (.A0(MixerOutSin_c_7), .B0(d1[34]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[35]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3274), .COUT(n3275), .S0(d1_73__N_1309[34]), 
          .S1(d1_73__N_1309[35]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_36.INIT0 = 16'h5666;
    defparam add_60_36.INIT1 = 16'h5666;
    defparam add_60_36.INJECT1_0 = "NO";
    defparam add_60_36.INJECT1_1 = "NO";
    CCU2D add_60_38 (.A0(MixerOutSin_c_7), .B0(d1[36]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3275), .S0(d1_73__N_1309[36]), .S1(n233));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_60_38.INIT0 = 16'h5666;
    defparam add_60_38.INIT1 = 16'h0000;
    defparam add_60_38.INJECT1_0 = "NO";
    defparam add_60_38.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3284), .S1(n61[0]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_1.INIT0 = 16'hF000;
    defparam count_53_54_add_4_1.INIT1 = 16'h0555;
    defparam count_53_54_add_4_1.INJECT1_0 = "NO";
    defparam count_53_54_add_4_1.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3284), .COUT(n3285), .S0(n61[1]), .S1(n61[2]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_3.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_3.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_3.INJECT1_0 = "NO";
    defparam count_53_54_add_4_3.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3285), .COUT(n3286), .S0(n61[3]), .S1(n61[4]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_5.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_5.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_5.INJECT1_0 = "NO";
    defparam count_53_54_add_4_5.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3286), .COUT(n3287), .S0(n61[5]), .S1(n61[6]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_7.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_7.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_7.INJECT1_0 = "NO";
    defparam count_53_54_add_4_7.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3287), .COUT(n3288), .S0(n61[7]), .S1(n61[8]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_9.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_9.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_9.INJECT1_0 = "NO";
    defparam count_53_54_add_4_9.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3288), .COUT(n3289), .S0(n61[9]), .S1(n61[10]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_11.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_11.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_11.INJECT1_0 = "NO";
    defparam count_53_54_add_4_11.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3289), .COUT(n3290), .S0(n61[11]), .S1(n61[12]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_13.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_13.INIT1 = 16'hfaaa;
    defparam count_53_54_add_4_13.INJECT1_0 = "NO";
    defparam count_53_54_add_4_13.INJECT1_1 = "NO";
    CCU2D count_53_54_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3290), .S0(n61[13]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_53_54_add_4_15.INIT0 = 16'hfaaa;
    defparam count_53_54_add_4_15.INIT1 = 16'h0000;
    defparam count_53_54_add_4_15.INJECT1_0 = "NO";
    defparam count_53_54_add_4_15.INJECT1_1 = "NO";
    
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
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="136.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=151 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(149[5] 151[2])
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
