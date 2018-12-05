// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Wed Dec 05 22:13:26 2018
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
    
    wire GND_net, VCC_net, sin_out_c, MixerOutSin_c_7, MixerOutSin_c_6, 
        RFIn_c, DiffOut_c, PWMOut_c, CIC_out_clk_c;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(31[13:24])
    wire [7:0]Sine;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(32[12:16])
    wire [7:0]MixerOutSin_7__N_83;
    wire [7:0]MixerOutCos_7__N_101;
    
    VHI i2 (.Z(VCC_net));
    nco_sig nco (.\phase_accum[57] (phase_accum[57]), .GND_net(GND_net), 
            .\phase_accum[58] (phase_accum[58]), .\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), 
            .osc_clk(osc_clk), .\phase_accum[62] (phase_accum[62]), .\phase_accum[61] (phase_accum[61]), 
            .\phase_accum[60] (phase_accum[60]), .\phase_accum[59] (phase_accum[59]), 
            .\phase_accum[56] (phase_accum[56]), .\MixerOutCos_7__N_101[7] (MixerOutCos_7__N_101[7])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(67[10] 73[2])
    Mixer Mixer1 (.\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), .sin_out_c(sin_out_c), 
          .DiffOut_c(DiffOut_c), .osc_clk(osc_clk), .MixerOutSin_c_7(MixerOutSin_c_7), 
          .MixerOutSin_c_6(MixerOutSin_c_6), .RFIn_c(RFIn_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(95[7] 103[2])
    OB o_Rx_Byte_pad_7 (.I(GND_net), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    PWM PWM1 (.GND_net(GND_net), .osc_clk(osc_clk), .PWMOut_c(PWMOut_c), 
        .Sine({Sine})) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(114[5] 118[2])
    OB o_Rx_DV_pad (.I(GND_net), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    GSR GSR_INST (.GSR(VCC_net));
    OB o_Tx_Serial_pad (.I(GND_net), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    OB o_Rx_Byte_pad_6 (.I(GND_net), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_5 (.I(GND_net), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_4 (.I(GND_net), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_3 (.I(GND_net), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_2 (.I(GND_net), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_1 (.I(GND_net), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_0 (.I(GND_net), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB MYLED_pad_7 (.I(sin_out_c), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_6 (.I(MixerOutCos_7__N_101[7]), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_5 (.I(MixerOutSin_c_6), .O(MYLED[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_4 (.I(MixerOutSin_c_6), .O(MYLED[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_3 (.I(MixerOutSin_c_6), .O(MYLED[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_2 (.I(MixerOutSin_c_6), .O(MYLED[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_1 (.I(MixerOutSin_c_6), .O(MYLED[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_0 (.I(VCC_net), .O(MYLED[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MixerOutSin_pad_7 (.I(MixerOutSin_c_7), .O(MixerOutSin[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_6 (.I(MixerOutSin_c_6), .O(MixerOutSin[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_5 (.I(MixerOutSin_c_6), .O(MixerOutSin[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_4 (.I(MixerOutSin_c_6), .O(MixerOutSin[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_3 (.I(MixerOutSin_c_6), .O(MixerOutSin[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_2 (.I(MixerOutSin_c_6), .O(MixerOutSin[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_1 (.I(MixerOutSin_c_6), .O(MixerOutSin[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_0 (.I(VCC_net), .O(MixerOutSin[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB XOut_pad (.I(GND_net), .O(XOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[9:13])
    OB DiffOut_pad (.I(DiffOut_c), .O(DiffOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[9:16])
    OB PWMOut_pad (.I(PWMOut_c), .O(PWMOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:15])
    OB sinGen_pad (.I(GND_net), .O(sinGen));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[9:15])
    OB sin_out_pad (.I(sin_out_c), .O(sin_out));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(18[9:16])
    OB CIC_out_clk_pad (.I(CIC_out_clk_c), .O(CIC_out_clk));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[9:20])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[8:11])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:13])
    SinCos SinCos1 (.osc_clk(osc_clk), .VCC_net(VCC_net), .GND_net(GND_net), 
           .Sine({Sine}), .\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), 
           .\phase_accum[62] (phase_accum[62]), .\phase_accum[61] (phase_accum[61]), 
           .\phase_accum[60] (phase_accum[60]), .\phase_accum[59] (phase_accum[59]), 
           .\phase_accum[58] (phase_accum[58]), .\phase_accum[57] (phase_accum[57]), 
           .\phase_accum[56] (phase_accum[56])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    \CIC(width=58)  CIC1 (.osc_clk(osc_clk), .GND_net(GND_net), .CIC_out_clk_c(CIC_out_clk_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(105[20] 112[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(120[5] 122[2])
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (\phase_accum[57] , GND_net, \phase_accum[58] , \MixerOutSin_7__N_83[7] , 
            osc_clk, \phase_accum[62] , \phase_accum[61] , \phase_accum[60] , 
            \phase_accum[59] , \phase_accum[56] , \MixerOutCos_7__N_101[7] ) /* synthesis syn_module_defined=1 */ ;
    output \phase_accum[57] ;
    input GND_net;
    output \phase_accum[58] ;
    output \MixerOutSin_7__N_83[7] ;
    input osc_clk;
    output \phase_accum[62] ;
    output \phase_accum[61] ;
    output \phase_accum[60] ;
    output \phase_accum[59] ;
    output \phase_accum[56] ;
    output \MixerOutCos_7__N_101[7] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    
    wire n300;
    wire [63:0]phase_accum_63__N_1;
    
    wire n301, n292;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(33[19:30])
    
    wire n293, n291, n290, n289, n288, n287, n286, n285, n284, 
        n283, n294, n295, n302, n303, n282, n299, n281, n298, 
        n297, n280, n279, n278, n277, n276, n275, n274, n296, 
        n273;
    
    CCU2D phase_accum_63__I_0_12_57 (.A0(\phase_accum[57] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[58] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n300), .COUT(n301), .S0(phase_accum_63__N_1[57]), 
          .S1(phase_accum_63__N_1[58]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_57.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_57.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_57.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_57.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[41]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[42]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n292), .COUT(n293), .S0(phase_accum_63__N_1[41]), 
          .S1(phase_accum_63__N_1[42]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[39]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[40]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n291), .COUT(n292), .S0(phase_accum_63__N_1[39]), 
          .S1(phase_accum_63__N_1[40]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[37]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[38]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n290), .COUT(n291), .S0(phase_accum_63__N_1[37]), 
          .S1(phase_accum_63__N_1[38]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[35]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[36]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n289), .COUT(n290), .S0(phase_accum_63__N_1[35]), 
          .S1(phase_accum_63__N_1[36]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[33]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[34]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n288), .COUT(n289), .S0(phase_accum_63__N_1[33]), 
          .S1(phase_accum_63__N_1[34]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[32]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n287), .COUT(n288), .S0(phase_accum_63__N_1[31]), 
          .S1(phase_accum_63__N_1[32]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n286), .COUT(n287), .S0(phase_accum_63__N_1[29]), 
          .S1(phase_accum_63__N_1[30]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(\MixerOutSin_7__N_83[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n285), .COUT(n286), .S0(phase_accum_63__N_1[27]), 
          .S1(phase_accum_63__N_1[28]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n284), .COUT(n285), .S0(phase_accum_63__N_1[25]), 
          .S1(phase_accum_63__N_1[26]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n283), .COUT(n284), .S0(phase_accum_63__N_1[23]), 
          .S1(phase_accum_63__N_1[24]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(\phase_accum[62] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(\phase_accum[61] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(\phase_accum[60] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(\phase_accum[59] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(\phase_accum[58] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(\phase_accum[57] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_45 (.A0(phase_accum[45]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[46]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n294), .COUT(n295), .S0(phase_accum_63__N_1[45]), 
          .S1(phase_accum_63__N_1[46]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_45.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_45.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(\phase_accum[56] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_61 (.A0(\phase_accum[61] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[62] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n302), .COUT(n303), .S0(phase_accum_63__N_1[61]), 
          .S1(phase_accum_63__N_1[62]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_61.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_61.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_61.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_61.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i3 (.D(phase_accum_63__N_1[3]), .CK(osc_clk), .Q(phase_accum[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i3.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n282), .COUT(n283), .S0(phase_accum_63__N_1[21]), 
          .S1(phase_accum_63__N_1[22]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    LUT4 phase_accum_63__I_0_2_lut (.A(\MixerOutSin_7__N_83[7] ), .B(\phase_accum[62] ), 
         .Z(\MixerOutCos_7__N_101[7] )) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(37[19:54])
    defparam phase_accum_63__I_0_2_lut.init = 16'h9999;
    CCU2D phase_accum_63__I_0_12_63 (.A0(\MixerOutSin_7__N_83[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n303), .S0(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_63.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_63.INIT1 = 16'h0000;
    defparam phase_accum_63__I_0_12_63.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_63.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_55 (.A0(phase_accum[55]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[56] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n299), .COUT(n300), .S0(phase_accum_63__N_1[55]), 
          .S1(phase_accum_63__N_1[56]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_55.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_55.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_55.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_55.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[43]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[44]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n293), .COUT(n294), .S0(phase_accum_63__N_1[43]), 
          .S1(phase_accum_63__N_1[44]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n281), .COUT(n282), .S0(phase_accum_63__N_1[19]), 
          .S1(phase_accum_63__N_1[20]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_53 (.A0(phase_accum[53]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[54]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n298), .COUT(n299), .S0(phase_accum_63__N_1[53]), 
          .S1(phase_accum_63__N_1[54]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_53.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_53.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_53.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_53.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_51 (.A0(phase_accum[51]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[52]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n297), .COUT(n298), .S0(phase_accum_63__N_1[51]), 
          .S1(phase_accum_63__N_1[52]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_51.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_51.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_51.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_51.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i2 (.D(phase_accum_63__N_1[2]), .CK(osc_clk), .Q(phase_accum[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i2.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n280), .COUT(n281), .S0(phase_accum_63__N_1[17]), 
          .S1(phase_accum_63__N_1[18]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n279), .COUT(n280), .S0(phase_accum_63__N_1[15]), 
          .S1(phase_accum_63__N_1[16]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n278), .COUT(n279), .S0(phase_accum_63__N_1[13]), 
          .S1(phase_accum_63__N_1[14]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n277), .COUT(n278), .S0(phase_accum_63__N_1[11]), 
          .S1(phase_accum_63__N_1[12]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n276), .COUT(n277), .S0(phase_accum_63__N_1[9]), 
          .S1(phase_accum_63__N_1[10]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n275), .COUT(n276), .S0(phase_accum_63__N_1[7]), 
          .S1(phase_accum_63__N_1[8]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n274), .COUT(n275), .S0(phase_accum_63__N_1[5]), 
          .S1(phase_accum_63__N_1[6]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i21 (.D(phase_accum_63__N_1[21]), .CK(osc_clk), 
            .Q(phase_accum[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i21.GSR = "ENABLED";
    FD1S3AX phase_accum_i20 (.D(phase_accum_63__N_1[20]), .CK(osc_clk), 
            .Q(phase_accum[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i20.GSR = "ENABLED";
    FD1S3AX phase_accum_i19 (.D(phase_accum_63__N_1[19]), .CK(osc_clk), 
            .Q(phase_accum[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i19.GSR = "ENABLED";
    FD1S3AX phase_accum_i18 (.D(phase_accum_63__N_1[18]), .CK(osc_clk), 
            .Q(phase_accum[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i18.GSR = "ENABLED";
    FD1S3AX phase_accum_i17 (.D(phase_accum_63__N_1[17]), .CK(osc_clk), 
            .Q(phase_accum[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i17.GSR = "ENABLED";
    FD1S3AX phase_accum_i16 (.D(phase_accum_63__N_1[16]), .CK(osc_clk), 
            .Q(phase_accum[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i16.GSR = "ENABLED";
    FD1S3AX phase_accum_i15 (.D(phase_accum_63__N_1[15]), .CK(osc_clk), 
            .Q(phase_accum[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i15.GSR = "ENABLED";
    FD1S3AX phase_accum_i14 (.D(phase_accum_63__N_1[14]), .CK(osc_clk), 
            .Q(phase_accum[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i14.GSR = "ENABLED";
    FD1S3AX phase_accum_i13 (.D(phase_accum_63__N_1[13]), .CK(osc_clk), 
            .Q(phase_accum[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i13.GSR = "ENABLED";
    FD1S3AX phase_accum_i12 (.D(phase_accum_63__N_1[12]), .CK(osc_clk), 
            .Q(phase_accum[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i12.GSR = "ENABLED";
    FD1S3AX phase_accum_i11 (.D(phase_accum_63__N_1[11]), .CK(osc_clk), 
            .Q(phase_accum[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i11.GSR = "ENABLED";
    FD1S3AX phase_accum_i10 (.D(phase_accum_63__N_1[10]), .CK(osc_clk), 
            .Q(phase_accum[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i10.GSR = "ENABLED";
    FD1S3AX phase_accum_i9 (.D(phase_accum_63__N_1[9]), .CK(osc_clk), .Q(phase_accum[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i9.GSR = "ENABLED";
    FD1S3AX phase_accum_i8 (.D(phase_accum_63__N_1[8]), .CK(osc_clk), .Q(phase_accum[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i8.GSR = "ENABLED";
    FD1S3AX phase_accum_i7 (.D(phase_accum_63__N_1[7]), .CK(osc_clk), .Q(phase_accum[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i7.GSR = "ENABLED";
    FD1S3AX phase_accum_i6 (.D(phase_accum_63__N_1[6]), .CK(osc_clk), .Q(phase_accum[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i6.GSR = "ENABLED";
    FD1S3AX phase_accum_i5 (.D(phase_accum_63__N_1[5]), .CK(osc_clk), .Q(phase_accum[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i5.GSR = "ENABLED";
    FD1S3AX phase_accum_i4 (.D(phase_accum_63__N_1[4]), .CK(osc_clk), .Q(phase_accum[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=67, LSE_RLINE=73 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(39[7] 52[4])
    defparam phase_accum_i4.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_49 (.A0(phase_accum[49]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[50]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n296), .COUT(n297), .S0(phase_accum_63__N_1[49]), 
          .S1(phase_accum_63__N_1[50]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_49.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_49.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_49.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_49.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_47 (.A0(phase_accum[47]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[48]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n295), .COUT(n296), .S0(phase_accum_63__N_1[47]), 
          .S1(phase_accum_63__N_1[48]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_47.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_47.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_47.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_47.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n273), .S1(phase_accum_63__N_1[2]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n273), .COUT(n274), .S0(phase_accum_63__N_1[3]), 
          .S1(phase_accum_63__N_1[4]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_59 (.A0(\phase_accum[59] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\phase_accum[60] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n301), .COUT(n302), .S0(phase_accum_63__N_1[59]), 
          .S1(phase_accum_63__N_1[60]));   // c:/users/user/lattice/fpgasdr/nco.v(47[17:45])
    defparam phase_accum_63__I_0_12_59.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_59.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_59.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_59.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (\MixerOutSin_7__N_83[7] , sin_out_c, DiffOut_c, osc_clk, 
            MixerOutSin_c_7, MixerOutSin_c_6, RFIn_c) /* synthesis syn_module_defined=1 */ ;
    input \MixerOutSin_7__N_83[7] ;
    output sin_out_c;
    output DiffOut_c;
    input osc_clk;
    output MixerOutSin_c_7;
    output MixerOutSin_c_6;
    input RFIn_c;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    
    wire RFInR1;
    wire [7:0]MixerOutSin_7__N_67;
    
    LUT4 phase_accum_63__I_0_13_1_lut (.A(\MixerOutSin_7__N_83[7] ), .Z(sin_out_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    FD1S3AY RFInR_21 (.D(RFInR1), .CK(osc_clk), .Q(DiffOut_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=103 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR_21.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[7]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=103 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 52[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i6 (.D(MixerOutSin_7__N_67[2]), .CK(osc_clk), .Q(MixerOutSin_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=103 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 52[5])
    defparam MixerOutSin_i6.GSR = "ENABLED";
    FD1S3AY RFInR1_20 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=103 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR1_20.GSR = "ENABLED";
    LUT4 i213_2_lut (.A(\MixerOutSin_7__N_83[7] ), .B(DiffOut_c), .Z(MixerOutSin_7__N_67[7])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[4] 40[34])
    defparam i213_2_lut.init = 16'h9999;
    LUT4 i78_2_lut (.A(\MixerOutSin_7__N_83[7] ), .B(DiffOut_c), .Z(MixerOutSin_7__N_67[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[4] 40[34])
    defparam i78_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (GND_net, osc_clk, PWMOut_c, Sine) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input osc_clk;
    output PWMOut_c;
    input [7:0]Sine;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    wire [7:0]counter;   // c:/users/user/lattice/fpgasdr/pwm.v(7[11:18])
    
    wire n10;
    wire [7:0]DataInNoSign;   // c:/users/user/lattice/fpgasdr/pwm.v(9[11:23])
    
    wire n435, n307;
    wire [7:0]n37;
    
    wire n304, n305, n306, n6, n395, n434, osc_clk_enable_9;
    wire [7:0]DataInNoSign_7__N_2060;
    
    wire PWMOut_N_2069, n433, n432, n370, n409, n396, n384, n313, 
        n314, n315, n316, n10_adj_2073, n14, n12, n381, n4;
    
    LUT4 i2_2_lut (.A(counter[2]), .B(counter[4]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 DataInNoSign_7__I_0_i9_2_lut_rep_6 (.A(DataInNoSign[4]), .B(counter[4]), 
         .Z(n435)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i9_2_lut_rep_6.init = 16'h6666;
    CCU2D counter_41_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n307), .S0(n37[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_41_add_4_9.INIT1 = 16'h0000;
    defparam counter_41_add_4_9.INJECT1_0 = "NO";
    defparam counter_41_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_41_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n304), .COUT(n305), .S0(n37[1]), .S1(n37[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_41_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_41_add_4_3.INJECT1_0 = "NO";
    defparam counter_41_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_41_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n304), .S1(n37[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41_add_4_1.INIT0 = 16'hF000;
    defparam counter_41_add_4_1.INIT1 = 16'h0555;
    defparam counter_41_add_4_1.INJECT1_0 = "NO";
    defparam counter_41_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_41_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n306), .COUT(n307), .S0(n37[5]), .S1(n37[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_41_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_41_add_4_7.INJECT1_0 = "NO";
    defparam counter_41_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_41_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n305), .COUT(n306), .S0(n37[3]), .S1(n37[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_41_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_41_add_4_5.INJECT1_0 = "NO";
    defparam counter_41_add_4_5.INJECT1_1 = "NO";
    FD1S3AX counter_41__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i0.GSR = "ENABLED";
    LUT4 i210_1_lut_3_lut_3_lut (.A(DataInNoSign[4]), .B(counter[4]), .C(n6), 
         .Z(n395)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i210_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 DataInNoSign_7__I_0_i15_2_lut_rep_5 (.A(DataInNoSign[7]), .B(counter[7]), 
         .Z(n434)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i15_2_lut_rep_5.init = 16'h6666;
    FD1P3AX DataInNoSign_i0_i0 (.D(DataInNoSign_7__N_2060[0]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i0.GSR = "ENABLED";
    FD1S3AX PWMOut_15 (.D(PWMOut_N_2069), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    FD1S3AX counter_41__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i1.GSR = "ENABLED";
    LUT4 i224_4_lut (.A(n433), .B(n432), .C(n435), .D(n370), .Z(n409)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i224_4_lut.init = 16'hefee;
    PFUMX DataInNoSign_7__I_0_i16 (.BLUT(n395), .ALUT(n396), .C0(n384), 
          .Z(PWMOut_N_2069)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;
    LUT4 i186_3_lut_4_lut (.A(DataInNoSign[3]), .B(counter[3]), .C(counter[2]), 
         .D(DataInNoSign[2]), .Z(n370)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i186_3_lut_4_lut.init = 16'h9009;
    FD1S3AX counter_41__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i2.GSR = "ENABLED";
    FD1S3AX counter_41__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i3.GSR = "ENABLED";
    FD1S3AX counter_41__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i4.GSR = "ENABLED";
    FD1S3AX counter_41__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i5.GSR = "ENABLED";
    FD1S3AX counter_41__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i6.GSR = "ENABLED";
    FD1S3AX counter_41__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_41__i7.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i1 (.D(DataInNoSign_7__N_2060[1]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i1.GSR = "ENABLED";
    LUT4 DataInNoSign_7__I_0_i6_3_lut_3_lut (.A(DataInNoSign[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX DataInNoSign_i0_i2 (.D(DataInNoSign_7__N_2060[2]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i2.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i3 (.D(DataInNoSign_7__N_2060[3]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i3.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i4 (.D(DataInNoSign_7__N_2060[4]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i4.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i5 (.D(DataInNoSign_7__N_2060[5]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i5.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i6 (.D(DataInNoSign_7__N_2060[6]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i6.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i7 (.D(DataInNoSign_7__N_2060[7]), .SP(osc_clk_enable_9), 
            .CK(osc_clk), .Q(DataInNoSign[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=118 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i7.GSR = "ENABLED";
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Sine[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n313), 
          .S1(DataInNoSign_7__N_2060[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'h5555;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    CCU2D add_5_3 (.A0(Sine[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Sine[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n313), 
          .COUT(n314), .S0(DataInNoSign_7__N_2060[1]), .S1(DataInNoSign_7__N_2060[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_3.INIT0 = 16'h5555;
    defparam add_5_3.INIT1 = 16'h5555;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(Sine[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Sine[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n314), 
          .COUT(n315), .S0(DataInNoSign_7__N_2060[3]), .S1(DataInNoSign_7__N_2060[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_5.INIT0 = 16'h5555;
    defparam add_5_5.INIT1 = 16'h5555;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    CCU2D add_5_7 (.A0(Sine[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Sine[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n315), 
          .COUT(n316), .S0(DataInNoSign_7__N_2060[5]), .S1(DataInNoSign_7__N_2060[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_7.INIT0 = 16'h5555;
    defparam add_5_7.INIT1 = 16'h5555;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D add_5_9 (.A0(Sine[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n316), 
          .S0(DataInNoSign_7__N_2060[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_9.INIT0 = 16'h5aaa;
    defparam add_5_9.INIT1 = 16'h0000;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    LUT4 DataInNoSign_7__I_0_i11_2_lut_rep_3 (.A(DataInNoSign[5]), .B(counter[5]), 
         .Z(n432)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i11_2_lut_rep_3.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i10_3_lut_3_lut (.A(DataInNoSign[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10_adj_2073)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i220_4_lut (.A(counter[0]), .B(n14), .C(n10), .D(counter[6]), 
         .Z(osc_clk_enable_9)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i220_4_lut.init = 16'h0001;
    LUT4 i225_2_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), .C(n409), 
         .Z(n384)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i225_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i6_4_lut (.A(counter[3]), .B(counter[1]), .C(counter[5]), .D(counter[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 DataInNoSign_7__I_0_i13_2_lut_rep_4 (.A(DataInNoSign[6]), .B(counter[6]), 
         .Z(n433)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i13_2_lut_rep_4.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i12_3_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), 
         .C(n10_adj_2073), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i197_2_lut_3_lut_4_lut (.A(DataInNoSign[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInNoSign[5]), .Z(n381)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i197_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 DataInNoSign_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInNoSign[1]), 
         .D(DataInNoSign[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 i211_1_lut_4_lut_4_lut (.A(n434), .B(n381), .C(n12), .D(n4), 
         .Z(n396)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i211_1_lut_4_lut_4_lut.init = 16'h0b4f;
    
endmodule
//
// Verilog Description of module SinCos
//

module SinCos (osc_clk, VCC_net, GND_net, Sine, \MixerOutSin_7__N_83[7] , 
            \phase_accum[62] , \phase_accum[61] , \phase_accum[60] , \phase_accum[59] , 
            \phase_accum[58] , \phase_accum[57] , \phase_accum[56] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk;
    input VCC_net;
    input GND_net;
    output [7:0]Sine;
    input \MixerOutSin_7__N_83[7] ;
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
            .Q(Sine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(37[13] 38[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(Sine_5_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(Sine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(41[13] 42[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(Sine_4_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(Sine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(45[13] 46[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(Sine_3_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(Sine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(49[13] 50[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(Sine_2_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(Sine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(53[13] 54[21])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(Sine_1_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(Sine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(57[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(Sine_0_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(Sine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(60[13:84])
    defparam FF_8.GSR = "ENABLED";
    ROM256X1A triglut_1_0_15 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_15.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_14 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_14.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000001111111111100000000000000000000000000000000000000000000000000000000000;
    FD1P3DX FF_15 (.D(Sine_7_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(Sine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(33[13] 34[21])
    defparam FF_15.GSR = "ENABLED";
    ROM256X1A triglut_1_0_13 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_13.initval = 256'b1111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111000000000000000000000111111111111111111111111111111111111110000000000011111111111111111111111111111111111111000000000000000000000;
    ROM256X1A triglut_1_0_12 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_12.initval = 256'b1111111111000000000001111111111111100000000000000000000000000000000000000000000000000000000011111111111111000000000001111111111000000000011111111111000000000000001111111111111111111111110000000000011111111111111111111111100000000000000111111111110000000000;
    ROM256X1A triglut_1_0_11 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_11.initval = 256'b1111100000111111000001111110000000011111111100000000000000000000000000000000000000011111111100000000111111000001111110000011111000001111100000011111000000011111110000000011111111111111110000000000011111111111111110000000011111110000000111110000001111100000;
    ROM256X1A triglut_1_0_10 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_10.initval = 256'b1100011100111000110001110001111000011110000011111100000000000000000000000000011111100000111100001111000111000110001110011100011000110001100011100011000111100011110000111100000011111111110000000000011111111110000001111000011110001111000110001110001100011000;
    ROM256X1A triglut_1_0_9 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_9.initval = 256'b1011010010100100101101101101100110011001100011000011111000000000000000001111100001100011001100110011011011011010010010100101101011010010100101101101001001101100110011001100011100001111110000000000011111100001110001100110011001101100100101101101001010010110;
    ROM256X1A triglut_1_0_8 (.AD0(\phase_accum[56] ), .AD1(\phase_accum[57] ), 
            .AD2(\phase_accum[58] ), .AD3(\phase_accum[59] ), .AD4(\phase_accum[60] ), 
            .AD5(\phase_accum[61] ), .AD6(\phase_accum[62] ), .AD7(\MixerOutSin_7__N_83[7] ), 
            .DO0(Sine_0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=82 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[8] 82[2])
    defparam triglut_1_0_8.initval = 256'b0110011000110010011001001011010101010101010010110011000111000000000001110001100110100101010101010101101001001100100110001100110001100110001100100110010010110101010101010100101100110001110000000000011100011001101001010101010101011010010011001001100011001100;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \CIC(width=58) 
//

module \CIC(width=58)  (osc_clk, GND_net, CIC_out_clk_c) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input GND_net;
    output CIC_out_clk_c;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[8:15])
    wire [15:0]count;   // c:/users/user/lattice/fpgasdr/cic.v(33[12:17])
    
    wire d_clk_tmp_N_2041;
    wire [9:0]n45;
    
    wire n308, n309, d_clk_tmp, osc_clk_enable_1, n310, n311, n312, 
        n17, n16, n407, n17_adj_2071, n16_adj_2072;
    
    FD1S3IX count_39_40__i9 (.D(n45[8]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i9.GSR = "ENABLED";
    FD1S3IX count_39_40__i8 (.D(n45[7]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i8.GSR = "ENABLED";
    FD1S3IX count_39_40__i7 (.D(n45[6]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i7.GSR = "ENABLED";
    FD1S3IX count_39_40__i6 (.D(n45[5]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i6.GSR = "ENABLED";
    FD1S3IX count_39_40__i5 (.D(n45[4]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i5.GSR = "ENABLED";
    FD1S3IX count_39_40__i4 (.D(n45[3]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i4.GSR = "ENABLED";
    FD1S3IX count_39_40__i3 (.D(n45[2]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i3.GSR = "ENABLED";
    FD1S3IX count_39_40__i2 (.D(n45[1]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i2.GSR = "ENABLED";
    CCU2D count_39_40_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n308), .COUT(n309), .S0(n45[1]), .S1(n45[2]));   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40_add_4_3.INIT0 = 16'hfaaa;
    defparam count_39_40_add_4_3.INIT1 = 16'hfaaa;
    defparam count_39_40_add_4_3.INJECT1_0 = "NO";
    defparam count_39_40_add_4_3.INJECT1_1 = "NO";
    FD1S3IX count_39_40__i1 (.D(n45[0]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i1.GSR = "ENABLED";
    FD1P3AX d_clk_tmp_83 (.D(d_clk_tmp_N_2041), .SP(osc_clk_enable_1), .CK(osc_clk), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=105, LSE_RLINE=112 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(40[9] 82[5])
    defparam d_clk_tmp_83.GSR = "ENABLED";
    FD1S3AX d_clk_85 (.D(d_clk_tmp), .CK(osc_clk), .Q(CIC_out_clk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=105, LSE_RLINE=112 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(84[9] 125[5])
    defparam d_clk_85.GSR = "ENABLED";
    CCU2D count_39_40_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n308), .S1(n45[0]));   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40_add_4_1.INIT0 = 16'hF000;
    defparam count_39_40_add_4_1.INIT1 = 16'h0555;
    defparam count_39_40_add_4_1.INJECT1_0 = "NO";
    defparam count_39_40_add_4_1.INJECT1_1 = "NO";
    FD1S3IX count_39_40__i10 (.D(n45[9]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40__i10.GSR = "ENABLED";
    CCU2D count_39_40_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n309), .COUT(n310), .S0(n45[3]), .S1(n45[4]));   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40_add_4_5.INIT0 = 16'hfaaa;
    defparam count_39_40_add_4_5.INIT1 = 16'hfaaa;
    defparam count_39_40_add_4_5.INJECT1_0 = "NO";
    defparam count_39_40_add_4_5.INJECT1_1 = "NO";
    CCU2D count_39_40_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n310), .COUT(n311), .S0(n45[5]), .S1(n45[6]));   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40_add_4_7.INIT0 = 16'hfaaa;
    defparam count_39_40_add_4_7.INIT1 = 16'hfaaa;
    defparam count_39_40_add_4_7.INJECT1_0 = "NO";
    defparam count_39_40_add_4_7.INJECT1_1 = "NO";
    CCU2D count_39_40_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n311), .COUT(n312), .S0(n45[7]), .S1(n45[8]));   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40_add_4_9.INIT0 = 16'hfaaa;
    defparam count_39_40_add_4_9.INIT1 = 16'hfaaa;
    defparam count_39_40_add_4_9.INJECT1_0 = "NO";
    defparam count_39_40_add_4_9.INJECT1_1 = "NO";
    CCU2D count_39_40_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n312), .S0(n45[9]));   // c:/users/user/lattice/fpgasdr/cic.v(78[14:27])
    defparam count_39_40_add_4_11.INIT0 = 16'hfaaa;
    defparam count_39_40_add_4_11.INIT1 = 16'h0000;
    defparam count_39_40_add_4_11.INJECT1_0 = "NO";
    defparam count_39_40_add_4_11.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(n17), .B(count[0]), .C(n16), .D(count[5]), .Z(d_clk_tmp_N_2041)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(count[1]), .B(count[8]), .C(count[4]), .D(count[6]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i223_2_lut (.A(n407), .B(d_clk_tmp_N_2041), .Z(osc_clk_enable_1)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i223_2_lut.init = 16'heeee;
    LUT4 i222_4_lut (.A(n17_adj_2071), .B(count[5]), .C(n16_adj_2072), 
         .D(count[1]), .Z(n407)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i222_4_lut.init = 16'h0001;
    LUT4 i7_4_lut_adj_2 (.A(count[0]), .B(count[8]), .C(count[9]), .D(count[2]), 
         .Z(n17_adj_2071)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(71[17:47])
    defparam i7_4_lut_adj_2.init = 16'hffef;
    LUT4 i6_4_lut (.A(count[7]), .B(count[3]), .C(count[4]), .D(count[6]), 
         .Z(n16_adj_2072)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(71[17:47])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut_adj_3 (.A(count[9]), .B(count[3]), .C(count[2]), .D(count[7]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_3.init = 16'h8000;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

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
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="136.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=120, LSE_RLINE=122 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(120[5] 122[2])
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
