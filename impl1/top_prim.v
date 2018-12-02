// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Sun Dec 02 20:16:35 2018
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, MixerOutSin, 
            RFIn, DiffIn, DiffOut, PWMOut, sinGen, CIC_out_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(2[8:11])
    input i_Rx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    output o_Tx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    output o_Rx_DV;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    output [7:0]MYLED;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    output [7:0]MixerOutSin;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    input RFIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[9:13])
    input DiffIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:14])
    output DiffOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:16])
    output PWMOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:15])
    output sinGen;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[9:15])
    output CIC_out_clk;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:20])
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[8:15])
    
    wire GND_net, VCC_net, MYLED_c_7, n138, MixerOutSin_c_7, RFIn_c, 
        DiffOut_c, PWMOut_c, sinGen_c, CIC_out_clk_c;
    wire [7:0]MixerOutCos;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(25[12:23])
    wire [7:0]CIC_out;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(27[12:19])
    wire [7:0]MixerOutSin_7__N_83;
    wire [7:0]MixerOutCos_7__N_75;
    
    wire n651;
    
    VHI i2 (.Z(VCC_net));
    nco_sig ncoGen (.GND_net(GND_net), .sinGen_c(sinGen_c), .osc_clk(osc_clk)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(66[10] 71[2])
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133.00";
    OB o_Rx_DV_pad (.I(GND_net), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    OB o_Tx_Serial_pad (.I(GND_net), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB o_Rx_Byte_pad_7 (.I(GND_net), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_6 (.I(GND_net), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_5 (.I(GND_net), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_4 (.I(GND_net), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_3 (.I(GND_net), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_2 (.I(GND_net), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_1 (.I(GND_net), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_0 (.I(GND_net), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB MYLED_pad_7 (.I(MYLED_c_7), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_6 (.I(n651), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_5 (.I(n138), .O(MYLED[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_4 (.I(n138), .O(MYLED[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_3 (.I(n138), .O(MYLED[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_2 (.I(n138), .O(MYLED[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_1 (.I(n138), .O(MYLED[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_0 (.I(VCC_net), .O(MYLED[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MixerOutSin_pad_7 (.I(MixerOutSin_c_7), .O(MixerOutSin[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_6 (.I(n138), .O(MixerOutSin[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_5 (.I(n138), .O(MixerOutSin[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_4 (.I(n138), .O(MixerOutSin[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_3 (.I(n138), .O(MixerOutSin[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_2 (.I(n138), .O(MixerOutSin[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_1 (.I(n138), .O(MixerOutSin[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_0 (.I(VCC_net), .O(MixerOutSin[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB DiffOut_pad (.I(DiffOut_c), .O(DiffOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:16])
    OB PWMOut_pad (.I(PWMOut_c), .O(PWMOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:15])
    OB sinGen_pad (.I(sinGen_c), .O(sinGen));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[9:15])
    OB CIC_out_clk_pad (.I(CIC_out_clk_c), .O(CIC_out_clk));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:20])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[9:13])
    \CIC(width=58)  CIC1 (.osc_clk(osc_clk), .CIC_out_clk_c(CIC_out_clk_c), 
            .CIC_out({CIC_out}), .GND_net(GND_net), .\MixerOutCos[7] (MixerOutCos[7]), 
            .\MixerOutCos[2] (MixerOutCos[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(85[20] 92[2])
    GSR GSR_INST (.GSR(VCC_net));
    PWM PWM1 (.osc_clk(osc_clk), .PWMOut_c(PWMOut_c), .GND_net(GND_net), 
        .CIC_out({CIC_out})) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(94[5] 98[2])
    Mixer Mixer1 (.osc_clk(osc_clk), .RFIn_c(RFIn_c), .DiffOut_c(DiffOut_c), 
          .\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), .MYLED_c_7(MYLED_c_7), 
          .n138(n138), .MixerOutSin_c_7(MixerOutSin_c_7), .\MixerOutCos[2] (MixerOutCos[2]), 
          .\MixerOutCos_7__N_75[6] (MixerOutCos_7__N_75[6]), .\MixerOutCos[7] (MixerOutCos[7]), 
          .\MixerOutCos_7__N_75[7] (MixerOutCos_7__N_75[7])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(75[7] 83[2])
    nco_sig_U0 nco (.\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), .DiffOut_c(DiffOut_c), 
            .\MixerOutCos_7__N_75[6] (MixerOutCos_7__N_75[6]), .n651(n651), 
            .osc_clk(osc_clk), .GND_net(GND_net), .\MixerOutCos_7__N_75[7] (MixerOutCos_7__N_75[7])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(58[10] 63[2])
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (GND_net, sinGen_c, osc_clk) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output sinGen_c;
    input osc_clk;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[8:15])
    
    wire n230;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(32[12:23])
    wire [63:0]phase_accum_63__N_1;
    
    wire n231, n229, n228, n227, n226, n225, n224, n223, n222, 
        n232, n221, n220, n219, n218, n217, n216, n215, n214, 
        n213, n233;
    
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[57]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[58]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n230), .COUT(n231), .S0(phase_accum_63__N_1[57]), 
          .S1(phase_accum_63__N_1[58]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[55]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[56]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n229), .COUT(n230), .S0(phase_accum_63__N_1[55]), 
          .S1(phase_accum_63__N_1[56]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[53]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[54]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n228), .COUT(n229), .S0(phase_accum_63__N_1[53]), 
          .S1(phase_accum_63__N_1[54]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[51]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[52]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n227), .COUT(n228), .S0(phase_accum_63__N_1[51]), 
          .S1(phase_accum_63__N_1[52]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[49]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[50]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n226), .COUT(n227), .S0(phase_accum_63__N_1[49]), 
          .S1(phase_accum_63__N_1[50]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[47]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[48]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n225), .COUT(n226), .S0(phase_accum_63__N_1[47]), 
          .S1(phase_accum_63__N_1[48]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[45]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[46]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n224), .COUT(n225), .S0(phase_accum_63__N_1[45]), 
          .S1(phase_accum_63__N_1[46]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[43]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[44]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n223), .COUT(n224), .S0(phase_accum_63__N_1[43]), 
          .S1(phase_accum_63__N_1[44]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[41]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[42]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n222), .COUT(n223), .S0(phase_accum_63__N_1[41]), 
          .S1(phase_accum_63__N_1[42]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[59]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[60]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n231), .COUT(n232), .S0(phase_accum_63__N_1[59]), 
          .S1(phase_accum_63__N_1[60]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[39]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[40]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n221), .COUT(n222), .S0(phase_accum_63__N_1[39]), 
          .S1(phase_accum_63__N_1[40]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[37]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[38]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n220), .COUT(n221), .S0(phase_accum_63__N_1[37]), 
          .S1(phase_accum_63__N_1[38]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[35]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[36]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n219), .COUT(n220), .S0(phase_accum_63__N_1[35]), 
          .S1(phase_accum_63__N_1[36]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[33]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[34]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n218), .COUT(n219), .S0(phase_accum_63__N_1[33]), 
          .S1(phase_accum_63__N_1[34]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[32]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n217), .COUT(n218), .S0(phase_accum_63__N_1[31]), 
          .S1(phase_accum_63__N_1[32]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n216), .COUT(n217), .S0(phase_accum_63__N_1[29]), 
          .S1(phase_accum_63__N_1[30]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n215), .COUT(n216), .S0(phase_accum_63__N_1[27]), 
          .S1(phase_accum_63__N_1[28]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n214), .COUT(n215), .S0(phase_accum_63__N_1[25]), 
          .S1(phase_accum_63__N_1[26]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n213), .COUT(n214), .S0(phase_accum_63__N_1[23]), 
          .S1(phase_accum_63__N_1[24]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    LUT4 phase_accum_63__I_0_13_1_lut (.A(phase_accum[63]), .Z(sinGen_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(35[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(phase_accum[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(phase_accum[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(phase_accum[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(phase_accum[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(phase_accum[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(phase_accum[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(phase_accum[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(phase_accum[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n213), .S1(phase_accum_63__N_1[22]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[63]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n233), .S0(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h0000;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[61]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[62]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n232), .COUT(n233), .S0(phase_accum_63__N_1[61]), 
          .S1(phase_accum_63__N_1[62]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \CIC(width=58) 
//

module \CIC(width=58)  (osc_clk, CIC_out_clk_c, CIC_out, GND_net, \MixerOutCos[7] , 
            \MixerOutCos[2] ) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output CIC_out_clk_c;
    output [7:0]CIC_out;
    input GND_net;
    input \MixerOutCos[7] ;
    input \MixerOutCos[2] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[8:15])
    wire [57:0]d2;   // c:/users/user/lattice/fpgasdr/cic.v(18[24:26])
    wire [57:0]d2_57__N_1127;
    wire [57:0]d3;   // c:/users/user/lattice/fpgasdr/cic.v(19[24:26])
    wire [57:0]d3_57__N_1185;
    wire [57:0]d4;   // c:/users/user/lattice/fpgasdr/cic.v(20[24:26])
    wire [57:0]d4_57__N_1243;
    wire [57:0]d5;   // c:/users/user/lattice/fpgasdr/cic.v(21[24:26])
    wire [57:0]d5_57__N_1301;
    wire [57:0]d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(12[24:29])
    
    wire osc_clk_enable_59;
    wire [57:0]d7;   // c:/users/user/lattice/fpgasdr/cic.v(26[24:26])
    
    wire osc_clk_enable_98;
    wire [57:0]n1258;
    
    wire d_clk_tmp, n164, v_comb;
    wire [57:0]d8;   // c:/users/user/lattice/fpgasdr/cic.v(27[24:26])
    wire [57:0]n1317;
    wire [57:0]d9;   // c:/users/user/lattice/fpgasdr/cic.v(28[24:26])
    wire [57:0]n1376;
    wire [57:0]d_d6;   // c:/users/user/lattice/fpgasdr/cic.v(25[28:32])
    wire [57:0]d6;   // c:/users/user/lattice/fpgasdr/cic.v(25[24:26])
    wire [57:0]n1199;
    wire [57:0]d_d7;   // c:/users/user/lattice/fpgasdr/cic.v(26[28:32])
    wire [57:0]d_d8;   // c:/users/user/lattice/fpgasdr/cic.v(27[28:32])
    wire [57:0]d_d9;   // c:/users/user/lattice/fpgasdr/cic.v(28[28:32])
    wire [57:0]d10;   // c:/users/user/lattice/fpgasdr/cic.v(29[24:27])
    wire [57:0]d_d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(12[31:38])
    wire [57:0]n1435;
    wire [57:0]d1;   // c:/users/user/lattice/fpgasdr/cic.v(17[24:26])
    wire [57:0]d1_57__N_1069;
    wire [15:0]count;   // c:/users/user/lattice/fpgasdr/cic.v(31[12:17])
    wire [9:0]n45;
    
    wire n15, n16, n16_adj_2072, n17, n17_adj_2073, d_clk_tmp_N_2041, 
        osc_clk_enable_548, osc_clk_enable_498, osc_clk_enable_448, osc_clk_enable_398, 
        osc_clk_enable_148, osc_clk_enable_198, osc_clk_enable_248, osc_clk_enable_298, 
        n563, n562, n561, n560, n559, n531, n530, n529, n528, 
        n527, n526, n525, n524, n523, n522, n521, n520, n519, 
        n518, n517, n516, osc_clk_enable_348, n515, n514, n513, 
        n512, n511, n510, n509, n508, n507, n506, n505, n504, 
        n503, n498, n497, n496, n495, n494, n493, n492, n491, 
        n490, n489, n488, n487, n486, n485, n484, n483, n482, 
        n481, n480, n479, n478, n477, n476, n475, n474, n473, 
        n472, n471, n470, n469, n468, n467, n466, n465, n464, 
        n463, n462, n461, n460, n459, n458, n457, n456, n455, 
        n454, n453, n452, n451, n450, n449, n448, n447, n446, 
        n445, n444, n443, n442, n441, n440, n439, n438, n437, 
        n436, n435, n434, n433, n432, n431, n430, n429, n428, 
        n427, n426, n425, n424, n423, n422, n421, n420, n419, 
        n418, n417, n416, n415, n414, n413, n412, n411, n410, 
        n409, n408, n407, n406, n405, n404, n403, n402, n401, 
        n400, n399, n398, n397, n396, n395, n394, n393, n392, 
        n391, n390, n389, n388, n387, n386, n385, n384, n383, 
        n381, n380, n379, n378, n377, n376, n375, n374, n373, 
        n372, n371, n370, n369, n368, n367, n366, n365, n364, 
        n363, n362, n361, n360, n359, n358, n357, n356, n355, 
        n354, n351, n350, n349, n348, n347, n346, n345, n344, 
        n343, n342, n341, n340, n339, n338, n337, n336, n335, 
        n334, n333, n332, n331, n330, n329, n328, n327, n326, 
        n325, n324, n321, n320, n319, n318, n317, n316, n315, 
        n314, n313, n312, n311, n310, n309, n308, n307, n306, 
        n305, n304, n303, n302, n301, n300, n299, n298, n297, 
        n296, n295, n294, n291, n290, n289, n288, n287, n286, 
        n285, n284, n283, n282, n281, n280, n279, n278, n277, 
        n276, n275, n274, n273, n272, n271, n270, n269, n268, 
        n267, n266, n265, n264, n262, n261, n260, n259, n258, 
        n257, n256, n255, n254, n253, n252, n251, n250, n249, 
        n248, n247, n246, n245, n244, n235, n236, n238, n239, 
        n240, n241, n237, n243, n242, n234;
    
    FD1S3AX d2_i0 (.D(d2_57__N_1127[0]), .CK(osc_clk), .Q(d2[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i0.GSR = "ENABLED";
    FD1S3AX d3_i0 (.D(d3_57__N_1185[0]), .CK(osc_clk), .Q(d3[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i0.GSR = "ENABLED";
    FD1S3AX d4_i0 (.D(d4_57__N_1243[0]), .CK(osc_clk), .Q(d4[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i0.GSR = "ENABLED";
    FD1S3AX d5_i0 (.D(d5_57__N_1301[0]), .CK(osc_clk), .Q(d5[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(n1258[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    FD1S3JX d_clk_tmp_83 (.D(n164), .CK(osc_clk), .PD(osc_clk_enable_59), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_clk_tmp_83.GSR = "ENABLED";
    FD1S3AX v_comb_84 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84.GSR = "ENABLED";
    FD1S3AX d_clk_85 (.D(d_clk_tmp), .CK(osc_clk), .Q(CIC_out_clk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_clk_85.GSR = "ENABLED";
    FD1P3AX d8_i0_i0 (.D(n1317[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d9_i0_i0 (.D(n1376[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d6_i0_i0 (.D(n1199[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[50]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(CIC_out[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d10__0__i1 (.D(n1435[50]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d10[50]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i1.GSR = "ENABLED";
    FD1S3AX d1_i0 (.D(d1_57__N_1069[0]), .CK(osc_clk), .Q(d1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i0.GSR = "ENABLED";
    FD1S3IX count_66_67__i1 (.D(n45[0]), .CK(osc_clk), .CD(osc_clk_enable_59), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i1.GSR = "ENABLED";
    LUT4 i5_2_lut (.A(count[5]), .B(count[1]), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(69[17:47])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i6_4_lut (.A(count[7]), .B(count[3]), .C(count[4]), .D(count[6]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(69[17:47])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut_adj_2 (.A(count[9]), .B(count[3]), .C(count[2]), .D(count[7]), 
         .Z(n16_adj_2072)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_2.init = 16'h8000;
    LUT4 i158_2_lut (.A(d3[0]), .B(d4[0]), .Z(d4_57__N_1243[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i158_2_lut.init = 16'h6666;
    LUT4 i7_4_lut (.A(count[0]), .B(count[8]), .C(count[9]), .D(count[2]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(69[17:47])
    defparam i7_4_lut.init = 16'hffef;
    LUT4 i159_2_lut (.A(d4[0]), .B(d5[0]), .Z(d5_57__N_1301[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i159_2_lut.init = 16'h6666;
    LUT4 i106_4_lut (.A(n17), .B(d_clk_tmp), .C(n15), .D(n16), .Z(n164)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam i106_4_lut.init = 16'hccc8;
    LUT4 i9_4_lut (.A(n17_adj_2073), .B(count[0]), .C(n16_adj_2072), .D(count[5]), 
         .Z(d_clk_tmp_N_2041)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    FD1S3AX v_comb_84_rep_20 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_548)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_20.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_19 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_498)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_19.GSR = "ENABLED";
    LUT4 i7_4_lut_adj_3 (.A(count[1]), .B(count[8]), .C(count[4]), .D(count[6]), 
         .Z(n17_adj_2073)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_3.init = 16'h8000;
    FD1S3AX v_comb_84_rep_18 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_448)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_18.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_17 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_398)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_17.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_12 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_148)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_12.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_13 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_198)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_13.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_14 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_248)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_14.GSR = "ENABLED";
    LUT4 i156_2_lut (.A(d1[0]), .B(d2[0]), .Z(d2_57__N_1127[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i156_2_lut.init = 16'h6666;
    FD1S3AX v_comb_84_rep_15 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_298)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_15.GSR = "ENABLED";
    LUT4 i9_4_lut_rep_9 (.A(n17_adj_2073), .B(count[0]), .C(n16_adj_2072), 
         .D(count[5]), .Z(osc_clk_enable_59)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut_rep_9.init = 16'h8000;
    FD1S3AX d2_i1 (.D(d2_57__N_1127[1]), .CK(osc_clk), .Q(d2[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i1.GSR = "ENABLED";
    CCU2D count_66_67_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n563), .S0(n45[9]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67_add_4_11.INIT0 = 16'hfaaa;
    defparam count_66_67_add_4_11.INIT1 = 16'h0000;
    defparam count_66_67_add_4_11.INJECT1_0 = "NO";
    defparam count_66_67_add_4_11.INJECT1_1 = "NO";
    CCU2D count_66_67_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n562), .COUT(n563), .S0(n45[7]), .S1(n45[8]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67_add_4_9.INIT0 = 16'hfaaa;
    defparam count_66_67_add_4_9.INIT1 = 16'hfaaa;
    defparam count_66_67_add_4_9.INJECT1_0 = "NO";
    defparam count_66_67_add_4_9.INJECT1_1 = "NO";
    CCU2D count_66_67_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n561), .COUT(n562), .S0(n45[5]), .S1(n45[6]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67_add_4_7.INIT0 = 16'hfaaa;
    defparam count_66_67_add_4_7.INIT1 = 16'hfaaa;
    defparam count_66_67_add_4_7.INJECT1_0 = "NO";
    defparam count_66_67_add_4_7.INJECT1_1 = "NO";
    CCU2D count_66_67_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n560), .COUT(n561), .S0(n45[3]), .S1(n45[4]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67_add_4_5.INIT0 = 16'hfaaa;
    defparam count_66_67_add_4_5.INIT1 = 16'hfaaa;
    defparam count_66_67_add_4_5.INJECT1_0 = "NO";
    defparam count_66_67_add_4_5.INJECT1_1 = "NO";
    CCU2D count_66_67_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n559), .COUT(n560), .S0(n45[1]), .S1(n45[2]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67_add_4_3.INIT0 = 16'hfaaa;
    defparam count_66_67_add_4_3.INIT1 = 16'hfaaa;
    defparam count_66_67_add_4_3.INJECT1_0 = "NO";
    defparam count_66_67_add_4_3.INJECT1_1 = "NO";
    CCU2D count_66_67_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n559), .S1(n45[0]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67_add_4_1.INIT0 = 16'hF000;
    defparam count_66_67_add_4_1.INIT1 = 16'h0555;
    defparam count_66_67_add_4_1.INJECT1_0 = "NO";
    defparam count_66_67_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_59 (.A0(d8[57]), .B0(d_d8[57]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n531), 
          .S0(n1376[57]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_59.INIT0 = 16'h5999;
    defparam sub_39_add_2_59.INIT1 = 16'h0000;
    defparam sub_39_add_2_59.INJECT1_0 = "NO";
    defparam sub_39_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_57 (.A0(d8[55]), .B0(d_d8[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[56]), .B1(d_d8[56]), .C1(GND_net), .D1(GND_net), .CIN(n530), 
          .COUT(n531), .S0(n1376[55]), .S1(n1376[56]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_57.INIT0 = 16'h5999;
    defparam sub_39_add_2_57.INIT1 = 16'h5999;
    defparam sub_39_add_2_57.INJECT1_0 = "NO";
    defparam sub_39_add_2_57.INJECT1_1 = "NO";
    FD1S3AX d2_i2 (.D(d2_57__N_1127[2]), .CK(osc_clk), .Q(d2[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i2.GSR = "ENABLED";
    FD1S3AX d2_i3 (.D(d2_57__N_1127[3]), .CK(osc_clk), .Q(d2[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i3.GSR = "ENABLED";
    FD1S3AX d2_i4 (.D(d2_57__N_1127[4]), .CK(osc_clk), .Q(d2[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i4.GSR = "ENABLED";
    FD1S3AX d2_i5 (.D(d2_57__N_1127[5]), .CK(osc_clk), .Q(d2[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i5.GSR = "ENABLED";
    FD1S3AX d2_i6 (.D(d2_57__N_1127[6]), .CK(osc_clk), .Q(d2[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i6.GSR = "ENABLED";
    FD1S3AX d2_i7 (.D(d2_57__N_1127[7]), .CK(osc_clk), .Q(d2[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i7.GSR = "ENABLED";
    FD1S3AX d2_i8 (.D(d2_57__N_1127[8]), .CK(osc_clk), .Q(d2[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i8.GSR = "ENABLED";
    FD1S3AX d2_i9 (.D(d2_57__N_1127[9]), .CK(osc_clk), .Q(d2[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i9.GSR = "ENABLED";
    FD1S3AX d2_i10 (.D(d2_57__N_1127[10]), .CK(osc_clk), .Q(d2[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i10.GSR = "ENABLED";
    FD1S3AX d2_i11 (.D(d2_57__N_1127[11]), .CK(osc_clk), .Q(d2[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i11.GSR = "ENABLED";
    FD1S3AX d2_i12 (.D(d2_57__N_1127[12]), .CK(osc_clk), .Q(d2[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i12.GSR = "ENABLED";
    FD1S3AX d2_i13 (.D(d2_57__N_1127[13]), .CK(osc_clk), .Q(d2[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i13.GSR = "ENABLED";
    FD1S3AX d2_i14 (.D(d2_57__N_1127[14]), .CK(osc_clk), .Q(d2[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i14.GSR = "ENABLED";
    FD1S3AX d2_i15 (.D(d2_57__N_1127[15]), .CK(osc_clk), .Q(d2[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i15.GSR = "ENABLED";
    FD1S3AX d2_i16 (.D(d2_57__N_1127[16]), .CK(osc_clk), .Q(d2[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i16.GSR = "ENABLED";
    FD1S3AX d2_i17 (.D(d2_57__N_1127[17]), .CK(osc_clk), .Q(d2[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i17.GSR = "ENABLED";
    FD1S3AX d2_i18 (.D(d2_57__N_1127[18]), .CK(osc_clk), .Q(d2[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i18.GSR = "ENABLED";
    FD1S3AX d2_i19 (.D(d2_57__N_1127[19]), .CK(osc_clk), .Q(d2[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i19.GSR = "ENABLED";
    FD1S3AX d2_i20 (.D(d2_57__N_1127[20]), .CK(osc_clk), .Q(d2[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i20.GSR = "ENABLED";
    FD1S3AX d2_i21 (.D(d2_57__N_1127[21]), .CK(osc_clk), .Q(d2[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i21.GSR = "ENABLED";
    FD1S3AX d2_i22 (.D(d2_57__N_1127[22]), .CK(osc_clk), .Q(d2[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i22.GSR = "ENABLED";
    FD1S3AX d2_i23 (.D(d2_57__N_1127[23]), .CK(osc_clk), .Q(d2[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i23.GSR = "ENABLED";
    FD1S3AX d2_i24 (.D(d2_57__N_1127[24]), .CK(osc_clk), .Q(d2[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i24.GSR = "ENABLED";
    FD1S3AX d2_i25 (.D(d2_57__N_1127[25]), .CK(osc_clk), .Q(d2[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i25.GSR = "ENABLED";
    FD1S3AX d2_i26 (.D(d2_57__N_1127[26]), .CK(osc_clk), .Q(d2[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i26.GSR = "ENABLED";
    FD1S3AX d2_i27 (.D(d2_57__N_1127[27]), .CK(osc_clk), .Q(d2[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i27.GSR = "ENABLED";
    FD1S3AX d2_i28 (.D(d2_57__N_1127[28]), .CK(osc_clk), .Q(d2[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i28.GSR = "ENABLED";
    FD1S3AX d2_i29 (.D(d2_57__N_1127[29]), .CK(osc_clk), .Q(d2[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i29.GSR = "ENABLED";
    FD1S3AX d2_i30 (.D(d2_57__N_1127[30]), .CK(osc_clk), .Q(d2[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i30.GSR = "ENABLED";
    FD1S3AX d2_i31 (.D(d2_57__N_1127[31]), .CK(osc_clk), .Q(d2[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i31.GSR = "ENABLED";
    FD1S3AX d2_i32 (.D(d2_57__N_1127[32]), .CK(osc_clk), .Q(d2[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i32.GSR = "ENABLED";
    FD1S3AX d2_i33 (.D(d2_57__N_1127[33]), .CK(osc_clk), .Q(d2[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i33.GSR = "ENABLED";
    FD1S3AX d2_i34 (.D(d2_57__N_1127[34]), .CK(osc_clk), .Q(d2[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i34.GSR = "ENABLED";
    FD1S3AX d2_i35 (.D(d2_57__N_1127[35]), .CK(osc_clk), .Q(d2[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i35.GSR = "ENABLED";
    FD1S3AX d2_i36 (.D(d2_57__N_1127[36]), .CK(osc_clk), .Q(d2[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i36.GSR = "ENABLED";
    FD1S3AX d2_i37 (.D(d2_57__N_1127[37]), .CK(osc_clk), .Q(d2[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i37.GSR = "ENABLED";
    FD1S3AX d2_i38 (.D(d2_57__N_1127[38]), .CK(osc_clk), .Q(d2[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i38.GSR = "ENABLED";
    FD1S3AX d2_i39 (.D(d2_57__N_1127[39]), .CK(osc_clk), .Q(d2[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i39.GSR = "ENABLED";
    FD1S3AX d2_i40 (.D(d2_57__N_1127[40]), .CK(osc_clk), .Q(d2[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i40.GSR = "ENABLED";
    FD1S3AX d2_i41 (.D(d2_57__N_1127[41]), .CK(osc_clk), .Q(d2[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i41.GSR = "ENABLED";
    FD1S3AX d2_i42 (.D(d2_57__N_1127[42]), .CK(osc_clk), .Q(d2[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i42.GSR = "ENABLED";
    FD1S3AX d2_i43 (.D(d2_57__N_1127[43]), .CK(osc_clk), .Q(d2[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i43.GSR = "ENABLED";
    FD1S3AX d2_i44 (.D(d2_57__N_1127[44]), .CK(osc_clk), .Q(d2[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i44.GSR = "ENABLED";
    FD1S3AX d2_i45 (.D(d2_57__N_1127[45]), .CK(osc_clk), .Q(d2[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i45.GSR = "ENABLED";
    FD1S3AX d2_i46 (.D(d2_57__N_1127[46]), .CK(osc_clk), .Q(d2[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i46.GSR = "ENABLED";
    FD1S3AX d2_i47 (.D(d2_57__N_1127[47]), .CK(osc_clk), .Q(d2[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i47.GSR = "ENABLED";
    FD1S3AX d2_i48 (.D(d2_57__N_1127[48]), .CK(osc_clk), .Q(d2[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i48.GSR = "ENABLED";
    FD1S3AX d2_i49 (.D(d2_57__N_1127[49]), .CK(osc_clk), .Q(d2[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i49.GSR = "ENABLED";
    FD1S3AX d2_i50 (.D(d2_57__N_1127[50]), .CK(osc_clk), .Q(d2[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i50.GSR = "ENABLED";
    FD1S3AX d2_i51 (.D(d2_57__N_1127[51]), .CK(osc_clk), .Q(d2[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i51.GSR = "ENABLED";
    FD1S3AX d2_i52 (.D(d2_57__N_1127[52]), .CK(osc_clk), .Q(d2[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i52.GSR = "ENABLED";
    FD1S3AX d2_i53 (.D(d2_57__N_1127[53]), .CK(osc_clk), .Q(d2[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i53.GSR = "ENABLED";
    FD1S3AX d2_i54 (.D(d2_57__N_1127[54]), .CK(osc_clk), .Q(d2[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i54.GSR = "ENABLED";
    FD1S3AX d2_i55 (.D(d2_57__N_1127[55]), .CK(osc_clk), .Q(d2[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i55.GSR = "ENABLED";
    FD1S3AX d2_i56 (.D(d2_57__N_1127[56]), .CK(osc_clk), .Q(d2[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i56.GSR = "ENABLED";
    FD1S3AX d2_i57 (.D(d2_57__N_1127[57]), .CK(osc_clk), .Q(d2[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i57.GSR = "ENABLED";
    FD1S3AX d3_i1 (.D(d3_57__N_1185[1]), .CK(osc_clk), .Q(d3[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i1.GSR = "ENABLED";
    FD1S3AX d3_i2 (.D(d3_57__N_1185[2]), .CK(osc_clk), .Q(d3[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i2.GSR = "ENABLED";
    FD1S3AX d3_i3 (.D(d3_57__N_1185[3]), .CK(osc_clk), .Q(d3[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i3.GSR = "ENABLED";
    FD1S3AX d3_i4 (.D(d3_57__N_1185[4]), .CK(osc_clk), .Q(d3[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i4.GSR = "ENABLED";
    FD1S3AX d3_i5 (.D(d3_57__N_1185[5]), .CK(osc_clk), .Q(d3[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i5.GSR = "ENABLED";
    FD1S3AX d3_i6 (.D(d3_57__N_1185[6]), .CK(osc_clk), .Q(d3[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i6.GSR = "ENABLED";
    FD1S3AX d3_i7 (.D(d3_57__N_1185[7]), .CK(osc_clk), .Q(d3[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i7.GSR = "ENABLED";
    FD1S3AX d3_i8 (.D(d3_57__N_1185[8]), .CK(osc_clk), .Q(d3[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i8.GSR = "ENABLED";
    FD1S3AX d3_i9 (.D(d3_57__N_1185[9]), .CK(osc_clk), .Q(d3[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i9.GSR = "ENABLED";
    FD1S3AX d3_i10 (.D(d3_57__N_1185[10]), .CK(osc_clk), .Q(d3[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i10.GSR = "ENABLED";
    FD1S3AX d3_i11 (.D(d3_57__N_1185[11]), .CK(osc_clk), .Q(d3[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i11.GSR = "ENABLED";
    FD1S3AX d3_i12 (.D(d3_57__N_1185[12]), .CK(osc_clk), .Q(d3[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i12.GSR = "ENABLED";
    FD1S3AX d3_i13 (.D(d3_57__N_1185[13]), .CK(osc_clk), .Q(d3[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i13.GSR = "ENABLED";
    FD1S3AX d3_i14 (.D(d3_57__N_1185[14]), .CK(osc_clk), .Q(d3[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i14.GSR = "ENABLED";
    FD1S3AX d3_i15 (.D(d3_57__N_1185[15]), .CK(osc_clk), .Q(d3[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i15.GSR = "ENABLED";
    FD1S3AX d3_i16 (.D(d3_57__N_1185[16]), .CK(osc_clk), .Q(d3[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i16.GSR = "ENABLED";
    FD1S3AX d3_i17 (.D(d3_57__N_1185[17]), .CK(osc_clk), .Q(d3[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i17.GSR = "ENABLED";
    FD1S3AX d3_i18 (.D(d3_57__N_1185[18]), .CK(osc_clk), .Q(d3[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i18.GSR = "ENABLED";
    FD1S3AX d3_i19 (.D(d3_57__N_1185[19]), .CK(osc_clk), .Q(d3[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i19.GSR = "ENABLED";
    FD1S3AX d3_i20 (.D(d3_57__N_1185[20]), .CK(osc_clk), .Q(d3[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i20.GSR = "ENABLED";
    FD1S3AX d3_i21 (.D(d3_57__N_1185[21]), .CK(osc_clk), .Q(d3[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i21.GSR = "ENABLED";
    FD1S3AX d3_i22 (.D(d3_57__N_1185[22]), .CK(osc_clk), .Q(d3[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i22.GSR = "ENABLED";
    FD1S3AX d3_i23 (.D(d3_57__N_1185[23]), .CK(osc_clk), .Q(d3[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i23.GSR = "ENABLED";
    FD1S3AX d3_i24 (.D(d3_57__N_1185[24]), .CK(osc_clk), .Q(d3[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i24.GSR = "ENABLED";
    FD1S3AX d3_i25 (.D(d3_57__N_1185[25]), .CK(osc_clk), .Q(d3[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i25.GSR = "ENABLED";
    FD1S3AX d3_i26 (.D(d3_57__N_1185[26]), .CK(osc_clk), .Q(d3[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i26.GSR = "ENABLED";
    FD1S3AX d3_i27 (.D(d3_57__N_1185[27]), .CK(osc_clk), .Q(d3[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i27.GSR = "ENABLED";
    FD1S3AX d3_i28 (.D(d3_57__N_1185[28]), .CK(osc_clk), .Q(d3[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i28.GSR = "ENABLED";
    FD1S3AX d3_i29 (.D(d3_57__N_1185[29]), .CK(osc_clk), .Q(d3[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i29.GSR = "ENABLED";
    FD1S3AX d3_i30 (.D(d3_57__N_1185[30]), .CK(osc_clk), .Q(d3[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i30.GSR = "ENABLED";
    FD1S3AX d3_i31 (.D(d3_57__N_1185[31]), .CK(osc_clk), .Q(d3[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i31.GSR = "ENABLED";
    FD1S3AX d3_i32 (.D(d3_57__N_1185[32]), .CK(osc_clk), .Q(d3[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i32.GSR = "ENABLED";
    FD1S3AX d3_i33 (.D(d3_57__N_1185[33]), .CK(osc_clk), .Q(d3[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i33.GSR = "ENABLED";
    FD1S3AX d3_i34 (.D(d3_57__N_1185[34]), .CK(osc_clk), .Q(d3[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i34.GSR = "ENABLED";
    FD1S3AX d3_i35 (.D(d3_57__N_1185[35]), .CK(osc_clk), .Q(d3[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i35.GSR = "ENABLED";
    FD1S3AX d3_i36 (.D(d3_57__N_1185[36]), .CK(osc_clk), .Q(d3[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i36.GSR = "ENABLED";
    FD1S3AX d3_i37 (.D(d3_57__N_1185[37]), .CK(osc_clk), .Q(d3[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i37.GSR = "ENABLED";
    FD1S3AX d3_i38 (.D(d3_57__N_1185[38]), .CK(osc_clk), .Q(d3[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i38.GSR = "ENABLED";
    FD1S3AX d3_i39 (.D(d3_57__N_1185[39]), .CK(osc_clk), .Q(d3[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i39.GSR = "ENABLED";
    FD1S3AX d3_i40 (.D(d3_57__N_1185[40]), .CK(osc_clk), .Q(d3[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i40.GSR = "ENABLED";
    FD1S3AX d3_i41 (.D(d3_57__N_1185[41]), .CK(osc_clk), .Q(d3[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i41.GSR = "ENABLED";
    FD1S3AX d3_i42 (.D(d3_57__N_1185[42]), .CK(osc_clk), .Q(d3[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i42.GSR = "ENABLED";
    FD1S3AX d3_i43 (.D(d3_57__N_1185[43]), .CK(osc_clk), .Q(d3[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i43.GSR = "ENABLED";
    FD1S3AX d3_i44 (.D(d3_57__N_1185[44]), .CK(osc_clk), .Q(d3[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i44.GSR = "ENABLED";
    FD1S3AX d3_i45 (.D(d3_57__N_1185[45]), .CK(osc_clk), .Q(d3[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i45.GSR = "ENABLED";
    FD1S3AX d3_i46 (.D(d3_57__N_1185[46]), .CK(osc_clk), .Q(d3[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i46.GSR = "ENABLED";
    FD1S3AX d3_i47 (.D(d3_57__N_1185[47]), .CK(osc_clk), .Q(d3[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i47.GSR = "ENABLED";
    FD1S3AX d3_i48 (.D(d3_57__N_1185[48]), .CK(osc_clk), .Q(d3[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i48.GSR = "ENABLED";
    FD1S3AX d3_i49 (.D(d3_57__N_1185[49]), .CK(osc_clk), .Q(d3[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i49.GSR = "ENABLED";
    FD1S3AX d3_i50 (.D(d3_57__N_1185[50]), .CK(osc_clk), .Q(d3[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i50.GSR = "ENABLED";
    FD1S3AX d3_i51 (.D(d3_57__N_1185[51]), .CK(osc_clk), .Q(d3[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i51.GSR = "ENABLED";
    FD1S3AX d3_i52 (.D(d3_57__N_1185[52]), .CK(osc_clk), .Q(d3[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i52.GSR = "ENABLED";
    FD1S3AX d3_i53 (.D(d3_57__N_1185[53]), .CK(osc_clk), .Q(d3[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i53.GSR = "ENABLED";
    FD1S3AX d3_i54 (.D(d3_57__N_1185[54]), .CK(osc_clk), .Q(d3[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i54.GSR = "ENABLED";
    FD1S3AX d3_i55 (.D(d3_57__N_1185[55]), .CK(osc_clk), .Q(d3[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i55.GSR = "ENABLED";
    FD1S3AX d3_i56 (.D(d3_57__N_1185[56]), .CK(osc_clk), .Q(d3[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i56.GSR = "ENABLED";
    FD1S3AX d3_i57 (.D(d3_57__N_1185[57]), .CK(osc_clk), .Q(d3[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i57.GSR = "ENABLED";
    FD1S3AX d4_i1 (.D(d4_57__N_1243[1]), .CK(osc_clk), .Q(d4[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i1.GSR = "ENABLED";
    FD1S3AX d4_i2 (.D(d4_57__N_1243[2]), .CK(osc_clk), .Q(d4[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i2.GSR = "ENABLED";
    FD1S3AX d4_i3 (.D(d4_57__N_1243[3]), .CK(osc_clk), .Q(d4[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i3.GSR = "ENABLED";
    FD1S3AX d4_i4 (.D(d4_57__N_1243[4]), .CK(osc_clk), .Q(d4[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i4.GSR = "ENABLED";
    FD1S3AX d4_i5 (.D(d4_57__N_1243[5]), .CK(osc_clk), .Q(d4[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i5.GSR = "ENABLED";
    FD1S3AX d4_i6 (.D(d4_57__N_1243[6]), .CK(osc_clk), .Q(d4[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i6.GSR = "ENABLED";
    FD1S3AX d4_i7 (.D(d4_57__N_1243[7]), .CK(osc_clk), .Q(d4[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i7.GSR = "ENABLED";
    FD1S3AX d4_i8 (.D(d4_57__N_1243[8]), .CK(osc_clk), .Q(d4[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i8.GSR = "ENABLED";
    FD1S3AX d4_i9 (.D(d4_57__N_1243[9]), .CK(osc_clk), .Q(d4[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i9.GSR = "ENABLED";
    FD1S3AX d4_i10 (.D(d4_57__N_1243[10]), .CK(osc_clk), .Q(d4[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i10.GSR = "ENABLED";
    FD1S3AX d4_i11 (.D(d4_57__N_1243[11]), .CK(osc_clk), .Q(d4[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i11.GSR = "ENABLED";
    FD1S3AX d4_i12 (.D(d4_57__N_1243[12]), .CK(osc_clk), .Q(d4[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i12.GSR = "ENABLED";
    FD1S3AX d4_i13 (.D(d4_57__N_1243[13]), .CK(osc_clk), .Q(d4[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i13.GSR = "ENABLED";
    FD1S3AX d4_i14 (.D(d4_57__N_1243[14]), .CK(osc_clk), .Q(d4[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i14.GSR = "ENABLED";
    FD1S3AX d4_i15 (.D(d4_57__N_1243[15]), .CK(osc_clk), .Q(d4[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i15.GSR = "ENABLED";
    FD1S3AX d4_i16 (.D(d4_57__N_1243[16]), .CK(osc_clk), .Q(d4[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i16.GSR = "ENABLED";
    FD1S3AX d4_i17 (.D(d4_57__N_1243[17]), .CK(osc_clk), .Q(d4[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i17.GSR = "ENABLED";
    FD1S3AX d4_i18 (.D(d4_57__N_1243[18]), .CK(osc_clk), .Q(d4[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i18.GSR = "ENABLED";
    FD1S3AX d4_i19 (.D(d4_57__N_1243[19]), .CK(osc_clk), .Q(d4[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i19.GSR = "ENABLED";
    FD1S3AX d4_i20 (.D(d4_57__N_1243[20]), .CK(osc_clk), .Q(d4[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i20.GSR = "ENABLED";
    FD1S3AX d4_i21 (.D(d4_57__N_1243[21]), .CK(osc_clk), .Q(d4[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i21.GSR = "ENABLED";
    FD1S3AX d4_i22 (.D(d4_57__N_1243[22]), .CK(osc_clk), .Q(d4[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i22.GSR = "ENABLED";
    FD1S3AX d4_i23 (.D(d4_57__N_1243[23]), .CK(osc_clk), .Q(d4[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i23.GSR = "ENABLED";
    FD1S3AX d4_i24 (.D(d4_57__N_1243[24]), .CK(osc_clk), .Q(d4[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i24.GSR = "ENABLED";
    FD1S3AX d4_i25 (.D(d4_57__N_1243[25]), .CK(osc_clk), .Q(d4[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i25.GSR = "ENABLED";
    FD1S3AX d4_i26 (.D(d4_57__N_1243[26]), .CK(osc_clk), .Q(d4[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i26.GSR = "ENABLED";
    FD1S3AX d4_i27 (.D(d4_57__N_1243[27]), .CK(osc_clk), .Q(d4[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i27.GSR = "ENABLED";
    FD1S3AX d4_i28 (.D(d4_57__N_1243[28]), .CK(osc_clk), .Q(d4[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i28.GSR = "ENABLED";
    FD1S3AX d4_i29 (.D(d4_57__N_1243[29]), .CK(osc_clk), .Q(d4[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i29.GSR = "ENABLED";
    FD1S3AX d4_i30 (.D(d4_57__N_1243[30]), .CK(osc_clk), .Q(d4[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i30.GSR = "ENABLED";
    FD1S3AX d4_i31 (.D(d4_57__N_1243[31]), .CK(osc_clk), .Q(d4[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i31.GSR = "ENABLED";
    FD1S3AX d4_i32 (.D(d4_57__N_1243[32]), .CK(osc_clk), .Q(d4[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i32.GSR = "ENABLED";
    FD1S3AX d4_i33 (.D(d4_57__N_1243[33]), .CK(osc_clk), .Q(d4[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i33.GSR = "ENABLED";
    FD1S3AX d4_i34 (.D(d4_57__N_1243[34]), .CK(osc_clk), .Q(d4[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i34.GSR = "ENABLED";
    FD1S3AX d4_i35 (.D(d4_57__N_1243[35]), .CK(osc_clk), .Q(d4[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i35.GSR = "ENABLED";
    FD1S3AX d4_i36 (.D(d4_57__N_1243[36]), .CK(osc_clk), .Q(d4[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i36.GSR = "ENABLED";
    FD1S3AX d4_i37 (.D(d4_57__N_1243[37]), .CK(osc_clk), .Q(d4[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i37.GSR = "ENABLED";
    FD1S3AX d4_i38 (.D(d4_57__N_1243[38]), .CK(osc_clk), .Q(d4[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i38.GSR = "ENABLED";
    FD1S3AX d4_i39 (.D(d4_57__N_1243[39]), .CK(osc_clk), .Q(d4[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i39.GSR = "ENABLED";
    FD1S3AX d4_i40 (.D(d4_57__N_1243[40]), .CK(osc_clk), .Q(d4[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i40.GSR = "ENABLED";
    FD1S3AX d4_i41 (.D(d4_57__N_1243[41]), .CK(osc_clk), .Q(d4[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i41.GSR = "ENABLED";
    FD1S3AX d4_i42 (.D(d4_57__N_1243[42]), .CK(osc_clk), .Q(d4[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i42.GSR = "ENABLED";
    FD1S3AX d4_i43 (.D(d4_57__N_1243[43]), .CK(osc_clk), .Q(d4[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i43.GSR = "ENABLED";
    FD1S3AX d4_i44 (.D(d4_57__N_1243[44]), .CK(osc_clk), .Q(d4[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i44.GSR = "ENABLED";
    FD1S3AX d4_i45 (.D(d4_57__N_1243[45]), .CK(osc_clk), .Q(d4[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i45.GSR = "ENABLED";
    FD1S3AX d4_i46 (.D(d4_57__N_1243[46]), .CK(osc_clk), .Q(d4[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i46.GSR = "ENABLED";
    FD1S3AX d4_i47 (.D(d4_57__N_1243[47]), .CK(osc_clk), .Q(d4[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i47.GSR = "ENABLED";
    FD1S3AX d4_i48 (.D(d4_57__N_1243[48]), .CK(osc_clk), .Q(d4[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i48.GSR = "ENABLED";
    FD1S3AX d4_i49 (.D(d4_57__N_1243[49]), .CK(osc_clk), .Q(d4[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i49.GSR = "ENABLED";
    FD1S3AX d4_i50 (.D(d4_57__N_1243[50]), .CK(osc_clk), .Q(d4[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i50.GSR = "ENABLED";
    FD1S3AX d4_i51 (.D(d4_57__N_1243[51]), .CK(osc_clk), .Q(d4[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i51.GSR = "ENABLED";
    FD1S3AX d4_i52 (.D(d4_57__N_1243[52]), .CK(osc_clk), .Q(d4[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i52.GSR = "ENABLED";
    FD1S3AX d4_i53 (.D(d4_57__N_1243[53]), .CK(osc_clk), .Q(d4[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i53.GSR = "ENABLED";
    FD1S3AX d4_i54 (.D(d4_57__N_1243[54]), .CK(osc_clk), .Q(d4[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i54.GSR = "ENABLED";
    FD1S3AX d4_i55 (.D(d4_57__N_1243[55]), .CK(osc_clk), .Q(d4[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i55.GSR = "ENABLED";
    FD1S3AX d4_i56 (.D(d4_57__N_1243[56]), .CK(osc_clk), .Q(d4[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i56.GSR = "ENABLED";
    FD1S3AX d4_i57 (.D(d4_57__N_1243[57]), .CK(osc_clk), .Q(d4[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i57.GSR = "ENABLED";
    FD1S3AX d5_i1 (.D(d5_57__N_1301[1]), .CK(osc_clk), .Q(d5[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i1.GSR = "ENABLED";
    FD1S3AX d5_i2 (.D(d5_57__N_1301[2]), .CK(osc_clk), .Q(d5[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i2.GSR = "ENABLED";
    FD1S3AX d5_i3 (.D(d5_57__N_1301[3]), .CK(osc_clk), .Q(d5[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i3.GSR = "ENABLED";
    FD1S3AX d5_i4 (.D(d5_57__N_1301[4]), .CK(osc_clk), .Q(d5[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i4.GSR = "ENABLED";
    FD1S3AX d5_i5 (.D(d5_57__N_1301[5]), .CK(osc_clk), .Q(d5[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i5.GSR = "ENABLED";
    FD1S3AX d5_i6 (.D(d5_57__N_1301[6]), .CK(osc_clk), .Q(d5[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i6.GSR = "ENABLED";
    FD1S3AX d5_i7 (.D(d5_57__N_1301[7]), .CK(osc_clk), .Q(d5[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i7.GSR = "ENABLED";
    FD1S3AX d5_i8 (.D(d5_57__N_1301[8]), .CK(osc_clk), .Q(d5[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i8.GSR = "ENABLED";
    FD1S3AX d5_i9 (.D(d5_57__N_1301[9]), .CK(osc_clk), .Q(d5[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i9.GSR = "ENABLED";
    FD1S3AX d5_i10 (.D(d5_57__N_1301[10]), .CK(osc_clk), .Q(d5[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i10.GSR = "ENABLED";
    FD1S3AX d5_i11 (.D(d5_57__N_1301[11]), .CK(osc_clk), .Q(d5[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i11.GSR = "ENABLED";
    FD1S3AX d5_i12 (.D(d5_57__N_1301[12]), .CK(osc_clk), .Q(d5[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i12.GSR = "ENABLED";
    FD1S3AX d5_i13 (.D(d5_57__N_1301[13]), .CK(osc_clk), .Q(d5[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i13.GSR = "ENABLED";
    FD1S3AX d5_i14 (.D(d5_57__N_1301[14]), .CK(osc_clk), .Q(d5[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i14.GSR = "ENABLED";
    FD1S3AX d5_i15 (.D(d5_57__N_1301[15]), .CK(osc_clk), .Q(d5[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i15.GSR = "ENABLED";
    FD1S3AX d5_i16 (.D(d5_57__N_1301[16]), .CK(osc_clk), .Q(d5[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i16.GSR = "ENABLED";
    FD1S3AX d5_i17 (.D(d5_57__N_1301[17]), .CK(osc_clk), .Q(d5[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i17.GSR = "ENABLED";
    FD1S3AX d5_i18 (.D(d5_57__N_1301[18]), .CK(osc_clk), .Q(d5[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i18.GSR = "ENABLED";
    FD1S3AX d5_i19 (.D(d5_57__N_1301[19]), .CK(osc_clk), .Q(d5[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i19.GSR = "ENABLED";
    FD1S3AX d5_i20 (.D(d5_57__N_1301[20]), .CK(osc_clk), .Q(d5[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i20.GSR = "ENABLED";
    FD1S3AX d5_i21 (.D(d5_57__N_1301[21]), .CK(osc_clk), .Q(d5[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i21.GSR = "ENABLED";
    FD1S3AX d5_i22 (.D(d5_57__N_1301[22]), .CK(osc_clk), .Q(d5[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i22.GSR = "ENABLED";
    FD1S3AX d5_i23 (.D(d5_57__N_1301[23]), .CK(osc_clk), .Q(d5[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i23.GSR = "ENABLED";
    FD1S3AX d5_i24 (.D(d5_57__N_1301[24]), .CK(osc_clk), .Q(d5[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i24.GSR = "ENABLED";
    FD1S3AX d5_i25 (.D(d5_57__N_1301[25]), .CK(osc_clk), .Q(d5[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i25.GSR = "ENABLED";
    FD1S3AX d5_i26 (.D(d5_57__N_1301[26]), .CK(osc_clk), .Q(d5[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i26.GSR = "ENABLED";
    FD1S3AX d5_i27 (.D(d5_57__N_1301[27]), .CK(osc_clk), .Q(d5[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i27.GSR = "ENABLED";
    FD1S3AX d5_i28 (.D(d5_57__N_1301[28]), .CK(osc_clk), .Q(d5[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i28.GSR = "ENABLED";
    FD1S3AX d5_i29 (.D(d5_57__N_1301[29]), .CK(osc_clk), .Q(d5[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i29.GSR = "ENABLED";
    FD1S3AX d5_i30 (.D(d5_57__N_1301[30]), .CK(osc_clk), .Q(d5[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i30.GSR = "ENABLED";
    FD1S3AX d5_i31 (.D(d5_57__N_1301[31]), .CK(osc_clk), .Q(d5[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i31.GSR = "ENABLED";
    FD1S3AX d5_i32 (.D(d5_57__N_1301[32]), .CK(osc_clk), .Q(d5[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i32.GSR = "ENABLED";
    FD1S3AX d5_i33 (.D(d5_57__N_1301[33]), .CK(osc_clk), .Q(d5[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i33.GSR = "ENABLED";
    FD1S3AX d5_i34 (.D(d5_57__N_1301[34]), .CK(osc_clk), .Q(d5[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i34.GSR = "ENABLED";
    FD1S3AX d5_i35 (.D(d5_57__N_1301[35]), .CK(osc_clk), .Q(d5[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i35.GSR = "ENABLED";
    FD1S3AX d5_i36 (.D(d5_57__N_1301[36]), .CK(osc_clk), .Q(d5[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i36.GSR = "ENABLED";
    FD1S3AX d5_i37 (.D(d5_57__N_1301[37]), .CK(osc_clk), .Q(d5[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i37.GSR = "ENABLED";
    FD1S3AX d5_i38 (.D(d5_57__N_1301[38]), .CK(osc_clk), .Q(d5[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i38.GSR = "ENABLED";
    FD1S3AX d5_i39 (.D(d5_57__N_1301[39]), .CK(osc_clk), .Q(d5[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i39.GSR = "ENABLED";
    FD1S3AX d5_i40 (.D(d5_57__N_1301[40]), .CK(osc_clk), .Q(d5[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i40.GSR = "ENABLED";
    FD1S3AX d5_i41 (.D(d5_57__N_1301[41]), .CK(osc_clk), .Q(d5[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i41.GSR = "ENABLED";
    FD1S3AX d5_i42 (.D(d5_57__N_1301[42]), .CK(osc_clk), .Q(d5[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i42.GSR = "ENABLED";
    FD1S3AX d5_i43 (.D(d5_57__N_1301[43]), .CK(osc_clk), .Q(d5[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i43.GSR = "ENABLED";
    FD1S3AX d5_i44 (.D(d5_57__N_1301[44]), .CK(osc_clk), .Q(d5[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i44.GSR = "ENABLED";
    FD1S3AX d5_i45 (.D(d5_57__N_1301[45]), .CK(osc_clk), .Q(d5[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i45.GSR = "ENABLED";
    FD1S3AX d5_i46 (.D(d5_57__N_1301[46]), .CK(osc_clk), .Q(d5[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i46.GSR = "ENABLED";
    FD1S3AX d5_i47 (.D(d5_57__N_1301[47]), .CK(osc_clk), .Q(d5[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i47.GSR = "ENABLED";
    FD1S3AX d5_i48 (.D(d5_57__N_1301[48]), .CK(osc_clk), .Q(d5[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i48.GSR = "ENABLED";
    FD1S3AX d5_i49 (.D(d5_57__N_1301[49]), .CK(osc_clk), .Q(d5[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i49.GSR = "ENABLED";
    FD1S3AX d5_i50 (.D(d5_57__N_1301[50]), .CK(osc_clk), .Q(d5[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i50.GSR = "ENABLED";
    FD1S3AX d5_i51 (.D(d5_57__N_1301[51]), .CK(osc_clk), .Q(d5[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i51.GSR = "ENABLED";
    FD1S3AX d5_i52 (.D(d5_57__N_1301[52]), .CK(osc_clk), .Q(d5[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i52.GSR = "ENABLED";
    FD1S3AX d5_i53 (.D(d5_57__N_1301[53]), .CK(osc_clk), .Q(d5[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i53.GSR = "ENABLED";
    FD1S3AX d5_i54 (.D(d5_57__N_1301[54]), .CK(osc_clk), .Q(d5[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i54.GSR = "ENABLED";
    FD1S3AX d5_i55 (.D(d5_57__N_1301[55]), .CK(osc_clk), .Q(d5[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i55.GSR = "ENABLED";
    FD1S3AX d5_i56 (.D(d5_57__N_1301[56]), .CK(osc_clk), .Q(d5[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i56.GSR = "ENABLED";
    FD1S3AX d5_i57 (.D(d5_57__N_1301[57]), .CK(osc_clk), .Q(d5[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i57.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i12 (.D(d5[12]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i13 (.D(d5[13]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i14 (.D(d5[14]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i15 (.D(d5[15]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i16 (.D(d5[16]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i17 (.D(d5[17]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i18 (.D(d5[18]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i19 (.D(d5[19]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i20 (.D(d5[20]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i21 (.D(d5[21]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i22 (.D(d5[22]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i23 (.D(d5[23]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i24 (.D(d5[24]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i25 (.D(d5[25]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i26 (.D(d5[26]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i27 (.D(d5[27]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i28 (.D(d5[28]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i29 (.D(d5[29]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i30 (.D(d5[30]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i31 (.D(d5[31]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i32 (.D(d5[32]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i33 (.D(d5[33]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i34 (.D(d5[34]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i35 (.D(d5[35]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i36 (.D(d5[36]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i37 (.D(d5[37]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i38 (.D(d5[38]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i39 (.D(d5[39]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i40 (.D(d5[40]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i41 (.D(d5[41]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i42 (.D(d5[42]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i43 (.D(d5[43]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i44 (.D(d5[44]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i45 (.D(d5[45]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i46 (.D(d5[46]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i47 (.D(d5[47]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i48 (.D(d5[48]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i49 (.D(d5[49]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i50 (.D(d5[50]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i51 (.D(d5[51]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i52 (.D(d5[52]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i53 (.D(d5[53]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i54 (.D(d5[54]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i55 (.D(d5[55]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i56 (.D(d5[56]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i57 (.D(d5[57]), .SP(d_clk_tmp_N_2041), .CK(osc_clk), 
            .Q(d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(n1258[1]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(n1258[2]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(n1258[3]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(n1258[4]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(n1258[5]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(n1258[6]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(n1258[7]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(n1258[8]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(n1258[9]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(n1258[10]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(n1258[11]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i12 (.D(n1258[12]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d7_i0_i13 (.D(n1258[13]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d7_i0_i14 (.D(n1258[14]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d7_i0_i15 (.D(n1258[15]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d7_i0_i16 (.D(n1258[16]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d7_i0_i17 (.D(n1258[17]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d7_i0_i18 (.D(n1258[18]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d7_i0_i19 (.D(n1258[19]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d7_i0_i20 (.D(n1258[20]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d7_i0_i21 (.D(n1258[21]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d7_i0_i22 (.D(n1258[22]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d7_i0_i23 (.D(n1258[23]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d7_i0_i24 (.D(n1258[24]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d7_i0_i25 (.D(n1258[25]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d7_i0_i26 (.D(n1258[26]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d7_i0_i27 (.D(n1258[27]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d7_i0_i28 (.D(n1258[28]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d7_i0_i29 (.D(n1258[29]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d7_i0_i30 (.D(n1258[30]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d7_i0_i31 (.D(n1258[31]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d7_i0_i32 (.D(n1258[32]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d7_i0_i33 (.D(n1258[33]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d7_i0_i34 (.D(n1258[34]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d7_i0_i35 (.D(n1258[35]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d7_i0_i36 (.D(n1258[36]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d7_i0_i37 (.D(n1258[37]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d7_i0_i38 (.D(n1258[38]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d7_i0_i39 (.D(n1258[39]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d7_i0_i40 (.D(n1258[40]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d7_i0_i41 (.D(n1258[41]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d7_i0_i42 (.D(n1258[42]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d7_i0_i43 (.D(n1258[43]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d7_i0_i44 (.D(n1258[44]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d7_i0_i45 (.D(n1258[45]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d7_i0_i46 (.D(n1258[46]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d7_i0_i47 (.D(n1258[47]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d7_i0_i48 (.D(n1258[48]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d7_i0_i49 (.D(n1258[49]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d7_i0_i50 (.D(n1258[50]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d7_i0_i51 (.D(n1258[51]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d7_i0_i52 (.D(n1258[52]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d7_i0_i53 (.D(n1258[53]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d7_i0_i54 (.D(n1258[54]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d7_i0_i55 (.D(n1258[55]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d7_i0_i56 (.D(n1258[56]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d7_i0_i57 (.D(n1258[57]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(n1317[1]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    CCU2D sub_39_add_2_55 (.A0(d8[53]), .B0(d_d8[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[54]), .B1(d_d8[54]), .C1(GND_net), .D1(GND_net), .CIN(n529), 
          .COUT(n530), .S0(n1376[53]), .S1(n1376[54]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_55.INIT0 = 16'h5999;
    defparam sub_39_add_2_55.INIT1 = 16'h5999;
    defparam sub_39_add_2_55.INJECT1_0 = "NO";
    defparam sub_39_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_53 (.A0(d8[51]), .B0(d_d8[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[52]), .B1(d_d8[52]), .C1(GND_net), .D1(GND_net), .CIN(n528), 
          .COUT(n529), .S0(n1376[51]), .S1(n1376[52]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_53.INIT0 = 16'h5999;
    defparam sub_39_add_2_53.INIT1 = 16'h5999;
    defparam sub_39_add_2_53.INJECT1_0 = "NO";
    defparam sub_39_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_51 (.A0(d8[49]), .B0(d_d8[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[50]), .B1(d_d8[50]), .C1(GND_net), .D1(GND_net), .CIN(n527), 
          .COUT(n528), .S0(n1376[49]), .S1(n1376[50]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_51.INIT0 = 16'h5999;
    defparam sub_39_add_2_51.INIT1 = 16'h5999;
    defparam sub_39_add_2_51.INJECT1_0 = "NO";
    defparam sub_39_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_49 (.A0(d8[47]), .B0(d_d8[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[48]), .B1(d_d8[48]), .C1(GND_net), .D1(GND_net), .CIN(n526), 
          .COUT(n527), .S0(n1376[47]), .S1(n1376[48]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_49.INIT0 = 16'h5999;
    defparam sub_39_add_2_49.INIT1 = 16'h5999;
    defparam sub_39_add_2_49.INJECT1_0 = "NO";
    defparam sub_39_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_47 (.A0(d8[45]), .B0(d_d8[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[46]), .B1(d_d8[46]), .C1(GND_net), .D1(GND_net), .CIN(n525), 
          .COUT(n526), .S0(n1376[45]), .S1(n1376[46]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_47.INIT0 = 16'h5999;
    defparam sub_39_add_2_47.INIT1 = 16'h5999;
    defparam sub_39_add_2_47.INJECT1_0 = "NO";
    defparam sub_39_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_45 (.A0(d8[43]), .B0(d_d8[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[44]), .B1(d_d8[44]), .C1(GND_net), .D1(GND_net), .CIN(n524), 
          .COUT(n525), .S0(n1376[43]), .S1(n1376[44]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_45.INIT0 = 16'h5999;
    defparam sub_39_add_2_45.INIT1 = 16'h5999;
    defparam sub_39_add_2_45.INJECT1_0 = "NO";
    defparam sub_39_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_43 (.A0(d8[41]), .B0(d_d8[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[42]), .B1(d_d8[42]), .C1(GND_net), .D1(GND_net), .CIN(n523), 
          .COUT(n524), .S0(n1376[41]), .S1(n1376[42]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_43.INIT0 = 16'h5999;
    defparam sub_39_add_2_43.INIT1 = 16'h5999;
    defparam sub_39_add_2_43.INJECT1_0 = "NO";
    defparam sub_39_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_41 (.A0(d8[39]), .B0(d_d8[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[40]), .B1(d_d8[40]), .C1(GND_net), .D1(GND_net), .CIN(n522), 
          .COUT(n523), .S0(n1376[39]), .S1(n1376[40]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_41.INIT0 = 16'h5999;
    defparam sub_39_add_2_41.INIT1 = 16'h5999;
    defparam sub_39_add_2_41.INJECT1_0 = "NO";
    defparam sub_39_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_39 (.A0(d8[37]), .B0(d_d8[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[38]), .B1(d_d8[38]), .C1(GND_net), .D1(GND_net), .CIN(n521), 
          .COUT(n522), .S0(n1376[37]), .S1(n1376[38]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_39.INIT0 = 16'h5999;
    defparam sub_39_add_2_39.INIT1 = 16'h5999;
    defparam sub_39_add_2_39.INJECT1_0 = "NO";
    defparam sub_39_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_37 (.A0(d8[35]), .B0(d_d8[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[36]), .B1(d_d8[36]), .C1(GND_net), .D1(GND_net), .CIN(n520), 
          .COUT(n521), .S0(n1376[35]), .S1(n1376[36]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_37.INIT0 = 16'h5999;
    defparam sub_39_add_2_37.INIT1 = 16'h5999;
    defparam sub_39_add_2_37.INJECT1_0 = "NO";
    defparam sub_39_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_35 (.A0(d8[33]), .B0(d_d8[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[34]), .B1(d_d8[34]), .C1(GND_net), .D1(GND_net), .CIN(n519), 
          .COUT(n520), .S0(n1376[33]), .S1(n1376[34]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_35.INIT0 = 16'h5999;
    defparam sub_39_add_2_35.INIT1 = 16'h5999;
    defparam sub_39_add_2_35.INJECT1_0 = "NO";
    defparam sub_39_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_33 (.A0(d8[31]), .B0(d_d8[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[32]), .B1(d_d8[32]), .C1(GND_net), .D1(GND_net), .CIN(n518), 
          .COUT(n519), .S0(n1376[31]), .S1(n1376[32]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_33.INIT0 = 16'h5999;
    defparam sub_39_add_2_33.INIT1 = 16'h5999;
    defparam sub_39_add_2_33.INJECT1_0 = "NO";
    defparam sub_39_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_31 (.A0(d8[29]), .B0(d_d8[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[30]), .B1(d_d8[30]), .C1(GND_net), .D1(GND_net), .CIN(n517), 
          .COUT(n518), .S0(n1376[29]), .S1(n1376[30]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_31.INIT0 = 16'h5999;
    defparam sub_39_add_2_31.INIT1 = 16'h5999;
    defparam sub_39_add_2_31.INJECT1_0 = "NO";
    defparam sub_39_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_29 (.A0(d8[27]), .B0(d_d8[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[28]), .B1(d_d8[28]), .C1(GND_net), .D1(GND_net), .CIN(n516), 
          .COUT(n517), .S0(n1376[27]), .S1(n1376[28]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_29.INIT0 = 16'h5999;
    defparam sub_39_add_2_29.INIT1 = 16'h5999;
    defparam sub_39_add_2_29.INJECT1_0 = "NO";
    defparam sub_39_add_2_29.INJECT1_1 = "NO";
    FD1S3AX v_comb_84_rep_11 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_98)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_11.GSR = "ENABLED";
    FD1P3AX d8_i0_i2 (.D(n1317[2]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(n1317[3]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(n1317[4]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(n1317[5]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(n1317[6]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i7 (.D(n1317[7]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(n1317[8]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(n1317[9]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(n1317[10]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(n1317[11]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i12 (.D(n1317[12]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d8_i0_i13 (.D(n1317[13]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d8_i0_i14 (.D(n1317[14]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d8_i0_i15 (.D(n1317[15]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d8_i0_i16 (.D(n1317[16]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d8_i0_i17 (.D(n1317[17]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d8_i0_i18 (.D(n1317[18]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d8_i0_i19 (.D(n1317[19]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d8_i0_i20 (.D(n1317[20]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d8_i0_i21 (.D(n1317[21]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d8_i0_i22 (.D(n1317[22]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d8_i0_i23 (.D(n1317[23]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d8_i0_i24 (.D(n1317[24]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d8_i0_i25 (.D(n1317[25]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d8_i0_i26 (.D(n1317[26]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d8_i0_i27 (.D(n1317[27]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d8_i0_i28 (.D(n1317[28]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d8_i0_i29 (.D(n1317[29]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d8_i0_i30 (.D(n1317[30]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d8_i0_i31 (.D(n1317[31]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d8_i0_i32 (.D(n1317[32]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d8_i0_i33 (.D(n1317[33]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d8_i0_i34 (.D(n1317[34]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d8_i0_i35 (.D(n1317[35]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d8_i0_i36 (.D(n1317[36]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d8_i0_i37 (.D(n1317[37]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d8_i0_i38 (.D(n1317[38]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d8_i0_i39 (.D(n1317[39]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d8_i0_i40 (.D(n1317[40]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d8_i0_i41 (.D(n1317[41]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d8_i0_i42 (.D(n1317[42]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d8_i0_i43 (.D(n1317[43]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d8_i0_i44 (.D(n1317[44]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d8_i0_i45 (.D(n1317[45]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d8_i0_i46 (.D(n1317[46]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d8_i0_i47 (.D(n1317[47]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d8_i0_i48 (.D(n1317[48]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d8_i0_i49 (.D(n1317[49]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d8_i0_i50 (.D(n1317[50]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d8_i0_i51 (.D(n1317[51]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d8_i0_i52 (.D(n1317[52]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d8_i0_i53 (.D(n1317[53]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d8_i0_i54 (.D(n1317[54]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d8_i0_i55 (.D(n1317[55]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d8_i0_i56 (.D(n1317[56]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d8_i0_i57 (.D(n1317[57]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(n1376[1]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(n1376[2]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(n1376[3]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(n1376[4]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(n1376[5]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(n1376[6]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(n1376[7]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(n1376[8]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(n1376[9]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(n1376[10]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(n1376[11]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i12 (.D(n1376[12]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d9_i0_i13 (.D(n1376[13]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d9_i0_i14 (.D(n1376[14]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d9_i0_i15 (.D(n1376[15]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d9_i0_i16 (.D(n1376[16]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d9_i0_i17 (.D(n1376[17]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d9_i0_i18 (.D(n1376[18]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d9_i0_i19 (.D(n1376[19]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d9_i0_i20 (.D(n1376[20]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d9_i0_i21 (.D(n1376[21]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d9_i0_i22 (.D(n1376[22]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d9_i0_i23 (.D(n1376[23]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d9_i0_i24 (.D(n1376[24]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d9_i0_i25 (.D(n1376[25]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d9_i0_i26 (.D(n1376[26]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d9_i0_i27 (.D(n1376[27]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d9_i0_i28 (.D(n1376[28]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d9_i0_i29 (.D(n1376[29]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d9_i0_i30 (.D(n1376[30]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d9_i0_i31 (.D(n1376[31]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d9_i0_i32 (.D(n1376[32]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d9_i0_i33 (.D(n1376[33]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d9_i0_i34 (.D(n1376[34]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d9_i0_i35 (.D(n1376[35]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d9_i0_i36 (.D(n1376[36]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d9_i0_i37 (.D(n1376[37]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d9_i0_i38 (.D(n1376[38]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d9_i0_i39 (.D(n1376[39]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d9_i0_i40 (.D(n1376[40]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d9_i0_i41 (.D(n1376[41]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d9_i0_i42 (.D(n1376[42]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d9_i0_i43 (.D(n1376[43]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d9_i0_i44 (.D(n1376[44]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d9_i0_i45 (.D(n1376[45]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d9_i0_i46 (.D(n1376[46]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d9_i0_i47 (.D(n1376[47]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d9_i0_i48 (.D(n1376[48]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d9_i0_i49 (.D(n1376[49]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d9_i0_i50 (.D(n1376[50]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d9_i0_i51 (.D(n1376[51]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d9_i0_i52 (.D(n1376[52]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d9_i0_i53 (.D(n1376[53]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d9_i0_i54 (.D(n1376[54]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d9_i0_i55 (.D(n1376[55]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d9_i0_i56 (.D(n1376[56]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d9_i0_i57 (.D(n1376[57]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i12 (.D(d6[12]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i13 (.D(d6[13]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i14 (.D(d6[14]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i15 (.D(d6[15]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i16 (.D(d6[16]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i17 (.D(d6[17]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i18 (.D(d6[18]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d_d6[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i19 (.D(d6[19]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i20 (.D(d6[20]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i21 (.D(d6[21]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i22 (.D(d6[22]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i23 (.D(d6[23]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i24 (.D(d6[24]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i25 (.D(d6[25]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i26 (.D(d6[26]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i27 (.D(d6[27]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i28 (.D(d6[28]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i29 (.D(d6[29]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i30 (.D(d6[30]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i31 (.D(d6[31]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i32 (.D(d6[32]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i33 (.D(d6[33]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i34 (.D(d6[34]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i35 (.D(d6[35]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i36 (.D(d6[36]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i37 (.D(d6[37]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i38 (.D(d6[38]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i39 (.D(d6[39]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i40 (.D(d6[40]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i41 (.D(d6[41]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i42 (.D(d6[42]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i43 (.D(d6[43]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i44 (.D(d6[44]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i45 (.D(d6[45]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i46 (.D(d6[46]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i47 (.D(d6[47]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i48 (.D(d6[48]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i49 (.D(d6[49]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i50 (.D(d6[50]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i51 (.D(d6[51]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i52 (.D(d6[52]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i53 (.D(d6[53]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i54 (.D(d6[54]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i55 (.D(d6[55]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i56 (.D(d6[56]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i57 (.D(d6[57]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d6_i0_i1 (.D(n1199[1]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d6_i0_i2 (.D(n1199[2]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(n1199[3]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(n1199[4]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(n1199[5]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(n1199[6]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(n1199[7]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(n1199[8]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(n1199[9]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(n1199[10]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i11 (.D(n1199[11]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i12 (.D(n1199[12]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d6_i0_i13 (.D(n1199[13]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d6_i0_i14 (.D(n1199[14]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d6_i0_i15 (.D(n1199[15]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d6_i0_i16 (.D(n1199[16]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d6_i0_i17 (.D(n1199[17]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d6_i0_i18 (.D(n1199[18]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d6_i0_i19 (.D(n1199[19]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d6_i0_i20 (.D(n1199[20]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d6_i0_i21 (.D(n1199[21]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d6_i0_i22 (.D(n1199[22]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d6_i0_i23 (.D(n1199[23]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d6_i0_i24 (.D(n1199[24]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d6_i0_i25 (.D(n1199[25]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d6_i0_i26 (.D(n1199[26]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d6_i0_i27 (.D(n1199[27]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d6_i0_i28 (.D(n1199[28]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d6_i0_i29 (.D(n1199[29]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d6_i0_i30 (.D(n1199[30]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d6_i0_i31 (.D(n1199[31]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d6_i0_i32 (.D(n1199[32]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d6_i0_i33 (.D(n1199[33]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d6_i0_i34 (.D(n1199[34]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d6_i0_i35 (.D(n1199[35]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d6_i0_i36 (.D(n1199[36]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d6_i0_i37 (.D(n1199[37]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d6_i0_i38 (.D(n1199[38]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d6_i0_i39 (.D(n1199[39]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d6_i0_i40 (.D(n1199[40]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d6_i0_i41 (.D(n1199[41]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d6_i0_i42 (.D(n1199[42]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d6_i0_i43 (.D(n1199[43]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d6_i0_i44 (.D(n1199[44]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d6_i0_i45 (.D(n1199[45]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d6_i0_i46 (.D(n1199[46]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d6_i0_i47 (.D(n1199[47]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d6_i0_i48 (.D(n1199[48]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d6_i0_i49 (.D(n1199[49]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d6_i0_i50 (.D(n1199[50]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d6_i0_i51 (.D(n1199[51]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d6_i0_i52 (.D(n1199[52]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d6_i0_i53 (.D(n1199[53]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d6_i0_i54 (.D(n1199[54]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d6_i0_i55 (.D(n1199[55]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d6_i0_i56 (.D(n1199[56]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d6_i0_i57 (.D(n1199[57]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d6[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i12 (.D(d7[12]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i13 (.D(d7[13]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i14 (.D(d7[14]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i15 (.D(d7[15]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i16 (.D(d7[16]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i17 (.D(d7[17]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i18 (.D(d7[18]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i19 (.D(d7[19]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i20 (.D(d7[20]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i21 (.D(d7[21]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i22 (.D(d7[22]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i23 (.D(d7[23]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i24 (.D(d7[24]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i25 (.D(d7[25]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i26 (.D(d7[26]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i27 (.D(d7[27]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i28 (.D(d7[28]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i29 (.D(d7[29]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i30 (.D(d7[30]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i31 (.D(d7[31]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i32 (.D(d7[32]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i33 (.D(d7[33]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i34 (.D(d7[34]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i35 (.D(d7[35]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i36 (.D(d7[36]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i37 (.D(d7[37]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i38 (.D(d7[38]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i39 (.D(d7[39]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i40 (.D(d7[40]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i41 (.D(d7[41]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i42 (.D(d7[42]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i43 (.D(d7[43]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i44 (.D(d7[44]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i45 (.D(d7[45]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i46 (.D(d7[46]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i47 (.D(d7[47]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i48 (.D(d7[48]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i49 (.D(d7[49]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i50 (.D(d7[50]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i51 (.D(d7[51]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i52 (.D(d7[52]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i53 (.D(d7[53]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i54 (.D(d7[54]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i55 (.D(d7[55]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d7[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i56 (.D(d7[56]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d7[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i57 (.D(d7[57]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d7[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i12 (.D(d8[12]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i13 (.D(d8[13]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i14 (.D(d8[14]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i15 (.D(d8[15]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i16 (.D(d8[16]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i17 (.D(d8[17]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i18 (.D(d8[18]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i19 (.D(d8[19]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i20 (.D(d8[20]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i21 (.D(d8[21]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i22 (.D(d8[22]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i23 (.D(d8[23]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i24 (.D(d8[24]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i25 (.D(d8[25]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i26 (.D(d8[26]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i27 (.D(d8[27]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i28 (.D(d8[28]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i29 (.D(d8[29]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i30 (.D(d8[30]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i31 (.D(d8[31]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i32 (.D(d8[32]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i33 (.D(d8[33]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i34 (.D(d8[34]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i35 (.D(d8[35]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i36 (.D(d8[36]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i37 (.D(d8[37]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i38 (.D(d8[38]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i39 (.D(d8[39]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i40 (.D(d8[40]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i41 (.D(d8[41]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i42 (.D(d8[42]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i43 (.D(d8[43]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i44 (.D(d8[44]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i45 (.D(d8[45]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i46 (.D(d8[46]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i47 (.D(d8[47]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i48 (.D(d8[48]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i49 (.D(d8[49]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i50 (.D(d8[50]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i51 (.D(d8[51]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i52 (.D(d8[52]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i53 (.D(d8[53]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i54 (.D(d8[54]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i55 (.D(d8[55]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i56 (.D(d8[56]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i57 (.D(d8[57]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d8[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i12 (.D(d9[12]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i13 (.D(d9[13]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i14 (.D(d9[14]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i15 (.D(d9[15]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i16 (.D(d9[16]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i17 (.D(d9[17]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i18 (.D(d9[18]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i19 (.D(d9[19]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i20 (.D(d9[20]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i21 (.D(d9[21]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i22 (.D(d9[22]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i23 (.D(d9[23]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i24 (.D(d9[24]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i25 (.D(d9[25]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i26 (.D(d9[26]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i27 (.D(d9[27]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i28 (.D(d9[28]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i29 (.D(d9[29]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i30 (.D(d9[30]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i31 (.D(d9[31]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i32 (.D(d9[32]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i33 (.D(d9[33]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i34 (.D(d9[34]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i35 (.D(d9[35]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i36 (.D(d9[36]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i37 (.D(d9[37]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i38 (.D(d9[38]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i39 (.D(d9[39]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i40 (.D(d9[40]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i41 (.D(d9[41]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i42 (.D(d9[42]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i43 (.D(d9[43]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i44 (.D(d9[44]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i45 (.D(d9[45]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i46 (.D(d9[46]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i47 (.D(d9[47]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i48 (.D(d9[48]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i49 (.D(d9[49]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i50 (.D(d9[50]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i51 (.D(d9[51]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i52 (.D(d9[52]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i53 (.D(d9[53]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i54 (.D(d9[54]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i55 (.D(d9[55]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i56 (.D(d9[56]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i57 (.D(d9[57]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[51]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(CIC_out[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[52]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(CIC_out[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[53]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(CIC_out[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[54]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(CIC_out[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[55]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(CIC_out[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[56]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(CIC_out[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[57]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(CIC_out[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i12 (.D(d_tmp[12]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i13 (.D(d_tmp[13]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i14 (.D(d_tmp[14]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i15 (.D(d_tmp[15]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i16 (.D(d_tmp[16]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i17 (.D(d_tmp[17]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i18 (.D(d_tmp[18]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i19 (.D(d_tmp[19]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i20 (.D(d_tmp[20]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i21 (.D(d_tmp[21]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i22 (.D(d_tmp[22]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i23 (.D(d_tmp[23]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i24 (.D(d_tmp[24]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i25 (.D(d_tmp[25]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i26 (.D(d_tmp[26]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i27 (.D(d_tmp[27]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i28 (.D(d_tmp[28]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i29 (.D(d_tmp[29]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i30 (.D(d_tmp[30]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i31 (.D(d_tmp[31]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i32 (.D(d_tmp[32]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i33 (.D(d_tmp[33]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i34 (.D(d_tmp[34]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i35 (.D(d_tmp[35]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i36 (.D(d_tmp[36]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i37 (.D(d_tmp[37]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i38 (.D(d_tmp[38]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i39 (.D(d_tmp[39]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i40 (.D(d_tmp[40]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i41 (.D(d_tmp[41]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i42 (.D(d_tmp[42]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i43 (.D(d_tmp[43]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i44 (.D(d_tmp[44]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i45 (.D(d_tmp[45]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i46 (.D(d_tmp[46]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i47 (.D(d_tmp[47]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i48 (.D(d_tmp[48]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i49 (.D(d_tmp[49]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i50 (.D(d_tmp[50]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i51 (.D(d_tmp[51]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i52 (.D(d_tmp[52]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i53 (.D(d_tmp[53]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i54 (.D(d_tmp[54]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i55 (.D(d_tmp[55]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i56 (.D(d_tmp[56]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i57 (.D(d_tmp[57]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d_d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d10__0__i2 (.D(n1435[51]), .SP(v_comb), .CK(osc_clk), .Q(d10[51]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i2.GSR = "ENABLED";
    FD1P3AX d10__0__i3 (.D(n1435[52]), .SP(v_comb), .CK(osc_clk), .Q(d10[52]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i3.GSR = "ENABLED";
    FD1P3AX d10__0__i4 (.D(n1435[53]), .SP(v_comb), .CK(osc_clk), .Q(d10[53]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i4.GSR = "ENABLED";
    FD1P3AX d10__0__i5 (.D(n1435[54]), .SP(v_comb), .CK(osc_clk), .Q(d10[54]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i5.GSR = "ENABLED";
    FD1P3AX d10__0__i6 (.D(n1435[55]), .SP(v_comb), .CK(osc_clk), .Q(d10[55]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i6.GSR = "ENABLED";
    FD1P3AX d10__0__i7 (.D(n1435[56]), .SP(v_comb), .CK(osc_clk), .Q(d10[56]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i7.GSR = "ENABLED";
    FD1P3AX d10__0__i8 (.D(n1435[57]), .SP(v_comb), .CK(osc_clk), .Q(d10[57]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 123[5])
    defparam d10__0__i8.GSR = "ENABLED";
    FD1S3AX d1_i1 (.D(d1_57__N_1069[1]), .CK(osc_clk), .Q(d1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i1.GSR = "ENABLED";
    FD1S3AX d1_i2 (.D(d1_57__N_1069[2]), .CK(osc_clk), .Q(d1[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i2.GSR = "ENABLED";
    FD1S3AX d1_i3 (.D(d1_57__N_1069[3]), .CK(osc_clk), .Q(d1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i3.GSR = "ENABLED";
    FD1S3AX d1_i4 (.D(d1_57__N_1069[4]), .CK(osc_clk), .Q(d1[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i4.GSR = "ENABLED";
    FD1S3AX d1_i5 (.D(d1_57__N_1069[5]), .CK(osc_clk), .Q(d1[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i5.GSR = "ENABLED";
    FD1S3AX d1_i6 (.D(d1_57__N_1069[6]), .CK(osc_clk), .Q(d1[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i6.GSR = "ENABLED";
    FD1S3AX d1_i7 (.D(d1_57__N_1069[7]), .CK(osc_clk), .Q(d1[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i7.GSR = "ENABLED";
    FD1S3AX d1_i8 (.D(d1_57__N_1069[8]), .CK(osc_clk), .Q(d1[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i8.GSR = "ENABLED";
    FD1S3AX d1_i9 (.D(d1_57__N_1069[9]), .CK(osc_clk), .Q(d1[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i9.GSR = "ENABLED";
    FD1S3AX d1_i10 (.D(d1_57__N_1069[10]), .CK(osc_clk), .Q(d1[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i10.GSR = "ENABLED";
    FD1S3AX d1_i11 (.D(d1_57__N_1069[11]), .CK(osc_clk), .Q(d1[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i11.GSR = "ENABLED";
    FD1S3AX d1_i12 (.D(d1_57__N_1069[12]), .CK(osc_clk), .Q(d1[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i12.GSR = "ENABLED";
    FD1S3AX d1_i13 (.D(d1_57__N_1069[13]), .CK(osc_clk), .Q(d1[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i13.GSR = "ENABLED";
    FD1S3AX d1_i14 (.D(d1_57__N_1069[14]), .CK(osc_clk), .Q(d1[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i14.GSR = "ENABLED";
    FD1S3AX d1_i15 (.D(d1_57__N_1069[15]), .CK(osc_clk), .Q(d1[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i15.GSR = "ENABLED";
    FD1S3AX d1_i16 (.D(d1_57__N_1069[16]), .CK(osc_clk), .Q(d1[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i16.GSR = "ENABLED";
    FD1S3AX d1_i17 (.D(d1_57__N_1069[17]), .CK(osc_clk), .Q(d1[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i17.GSR = "ENABLED";
    FD1S3AX d1_i18 (.D(d1_57__N_1069[18]), .CK(osc_clk), .Q(d1[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i18.GSR = "ENABLED";
    FD1S3AX d1_i19 (.D(d1_57__N_1069[19]), .CK(osc_clk), .Q(d1[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i19.GSR = "ENABLED";
    FD1S3AX d1_i20 (.D(d1_57__N_1069[20]), .CK(osc_clk), .Q(d1[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i20.GSR = "ENABLED";
    FD1S3AX d1_i21 (.D(d1_57__N_1069[21]), .CK(osc_clk), .Q(d1[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i21.GSR = "ENABLED";
    FD1S3AX d1_i22 (.D(d1_57__N_1069[22]), .CK(osc_clk), .Q(d1[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i22.GSR = "ENABLED";
    FD1S3AX d1_i23 (.D(d1_57__N_1069[23]), .CK(osc_clk), .Q(d1[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i23.GSR = "ENABLED";
    FD1S3AX d1_i24 (.D(d1_57__N_1069[24]), .CK(osc_clk), .Q(d1[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i24.GSR = "ENABLED";
    FD1S3AX d1_i25 (.D(d1_57__N_1069[25]), .CK(osc_clk), .Q(d1[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i25.GSR = "ENABLED";
    FD1S3AX d1_i26 (.D(d1_57__N_1069[26]), .CK(osc_clk), .Q(d1[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i26.GSR = "ENABLED";
    FD1S3AX d1_i27 (.D(d1_57__N_1069[27]), .CK(osc_clk), .Q(d1[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i27.GSR = "ENABLED";
    FD1S3AX d1_i28 (.D(d1_57__N_1069[28]), .CK(osc_clk), .Q(d1[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i28.GSR = "ENABLED";
    FD1S3AX d1_i29 (.D(d1_57__N_1069[29]), .CK(osc_clk), .Q(d1[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i29.GSR = "ENABLED";
    FD1S3AX d1_i30 (.D(d1_57__N_1069[30]), .CK(osc_clk), .Q(d1[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i30.GSR = "ENABLED";
    FD1S3AX d1_i31 (.D(d1_57__N_1069[31]), .CK(osc_clk), .Q(d1[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i31.GSR = "ENABLED";
    FD1S3AX d1_i32 (.D(d1_57__N_1069[32]), .CK(osc_clk), .Q(d1[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i32.GSR = "ENABLED";
    FD1S3AX d1_i33 (.D(d1_57__N_1069[33]), .CK(osc_clk), .Q(d1[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i33.GSR = "ENABLED";
    FD1S3AX d1_i34 (.D(d1_57__N_1069[34]), .CK(osc_clk), .Q(d1[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i34.GSR = "ENABLED";
    FD1S3AX d1_i35 (.D(d1_57__N_1069[35]), .CK(osc_clk), .Q(d1[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i35.GSR = "ENABLED";
    FD1S3AX d1_i36 (.D(d1_57__N_1069[36]), .CK(osc_clk), .Q(d1[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i36.GSR = "ENABLED";
    FD1S3AX d1_i37 (.D(d1_57__N_1069[37]), .CK(osc_clk), .Q(d1[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i37.GSR = "ENABLED";
    FD1S3AX d1_i38 (.D(d1_57__N_1069[38]), .CK(osc_clk), .Q(d1[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i38.GSR = "ENABLED";
    FD1S3AX d1_i39 (.D(d1_57__N_1069[39]), .CK(osc_clk), .Q(d1[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i39.GSR = "ENABLED";
    FD1S3AX d1_i40 (.D(d1_57__N_1069[40]), .CK(osc_clk), .Q(d1[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i40.GSR = "ENABLED";
    FD1S3AX d1_i41 (.D(d1_57__N_1069[41]), .CK(osc_clk), .Q(d1[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i41.GSR = "ENABLED";
    FD1S3AX d1_i42 (.D(d1_57__N_1069[42]), .CK(osc_clk), .Q(d1[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i42.GSR = "ENABLED";
    FD1S3AX d1_i43 (.D(d1_57__N_1069[43]), .CK(osc_clk), .Q(d1[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i43.GSR = "ENABLED";
    FD1S3AX d1_i44 (.D(d1_57__N_1069[44]), .CK(osc_clk), .Q(d1[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i44.GSR = "ENABLED";
    FD1S3AX d1_i45 (.D(d1_57__N_1069[45]), .CK(osc_clk), .Q(d1[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i45.GSR = "ENABLED";
    FD1S3AX d1_i46 (.D(d1_57__N_1069[46]), .CK(osc_clk), .Q(d1[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i46.GSR = "ENABLED";
    FD1S3AX d1_i47 (.D(d1_57__N_1069[47]), .CK(osc_clk), .Q(d1[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i47.GSR = "ENABLED";
    FD1S3AX d1_i48 (.D(d1_57__N_1069[48]), .CK(osc_clk), .Q(d1[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i48.GSR = "ENABLED";
    FD1S3AX d1_i49 (.D(d1_57__N_1069[49]), .CK(osc_clk), .Q(d1[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i49.GSR = "ENABLED";
    FD1S3AX d1_i50 (.D(d1_57__N_1069[50]), .CK(osc_clk), .Q(d1[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i50.GSR = "ENABLED";
    FD1S3AX d1_i51 (.D(d1_57__N_1069[51]), .CK(osc_clk), .Q(d1[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i51.GSR = "ENABLED";
    FD1S3AX d1_i52 (.D(d1_57__N_1069[52]), .CK(osc_clk), .Q(d1[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i52.GSR = "ENABLED";
    FD1S3AX d1_i53 (.D(d1_57__N_1069[53]), .CK(osc_clk), .Q(d1[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i53.GSR = "ENABLED";
    FD1S3AX d1_i54 (.D(d1_57__N_1069[54]), .CK(osc_clk), .Q(d1[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i54.GSR = "ENABLED";
    FD1S3AX d1_i55 (.D(d1_57__N_1069[55]), .CK(osc_clk), .Q(d1[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i55.GSR = "ENABLED";
    FD1S3AX d1_i56 (.D(d1_57__N_1069[56]), .CK(osc_clk), .Q(d1[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i56.GSR = "ENABLED";
    FD1S3AX d1_i57 (.D(d1_57__N_1069[57]), .CK(osc_clk), .Q(d1[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i57.GSR = "ENABLED";
    CCU2D sub_39_add_2_27 (.A0(d8[25]), .B0(d_d8[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[26]), .B1(d_d8[26]), .C1(GND_net), .D1(GND_net), .CIN(n515), 
          .COUT(n516), .S0(n1376[25]), .S1(n1376[26]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_27.INIT0 = 16'h5999;
    defparam sub_39_add_2_27.INIT1 = 16'h5999;
    defparam sub_39_add_2_27.INJECT1_0 = "NO";
    defparam sub_39_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_25 (.A0(d8[23]), .B0(d_d8[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[24]), .B1(d_d8[24]), .C1(GND_net), .D1(GND_net), .CIN(n514), 
          .COUT(n515), .S0(n1376[23]), .S1(n1376[24]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_25.INIT0 = 16'h5999;
    defparam sub_39_add_2_25.INIT1 = 16'h5999;
    defparam sub_39_add_2_25.INJECT1_0 = "NO";
    defparam sub_39_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_23 (.A0(d8[21]), .B0(d_d8[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[22]), .B1(d_d8[22]), .C1(GND_net), .D1(GND_net), .CIN(n513), 
          .COUT(n514), .S0(n1376[21]), .S1(n1376[22]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_23.INIT0 = 16'h5999;
    defparam sub_39_add_2_23.INIT1 = 16'h5999;
    defparam sub_39_add_2_23.INJECT1_0 = "NO";
    defparam sub_39_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_21 (.A0(d8[19]), .B0(d_d8[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[20]), .B1(d_d8[20]), .C1(GND_net), .D1(GND_net), .CIN(n512), 
          .COUT(n513), .S0(n1376[19]), .S1(n1376[20]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_21.INIT0 = 16'h5999;
    defparam sub_39_add_2_21.INIT1 = 16'h5999;
    defparam sub_39_add_2_21.INJECT1_0 = "NO";
    defparam sub_39_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_19 (.A0(d8[17]), .B0(d_d8[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[18]), .B1(d_d8[18]), .C1(GND_net), .D1(GND_net), .CIN(n511), 
          .COUT(n512), .S0(n1376[17]), .S1(n1376[18]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_19.INIT0 = 16'h5999;
    defparam sub_39_add_2_19.INIT1 = 16'h5999;
    defparam sub_39_add_2_19.INJECT1_0 = "NO";
    defparam sub_39_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_17 (.A0(d8[15]), .B0(d_d8[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[16]), .B1(d_d8[16]), .C1(GND_net), .D1(GND_net), .CIN(n510), 
          .COUT(n511), .S0(n1376[15]), .S1(n1376[16]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_17.INIT0 = 16'h5999;
    defparam sub_39_add_2_17.INIT1 = 16'h5999;
    defparam sub_39_add_2_17.INJECT1_0 = "NO";
    defparam sub_39_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_15 (.A0(d8[13]), .B0(d_d8[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[14]), .B1(d_d8[14]), .C1(GND_net), .D1(GND_net), .CIN(n509), 
          .COUT(n510), .S0(n1376[13]), .S1(n1376[14]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_15.INIT0 = 16'h5999;
    defparam sub_39_add_2_15.INIT1 = 16'h5999;
    defparam sub_39_add_2_15.INJECT1_0 = "NO";
    defparam sub_39_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[12]), .B1(d_d8[12]), .C1(GND_net), .D1(GND_net), .CIN(n508), 
          .COUT(n509), .S0(n1376[11]), .S1(n1376[12]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_13.INIT0 = 16'h5999;
    defparam sub_39_add_2_13.INIT1 = 16'h5999;
    defparam sub_39_add_2_13.INJECT1_0 = "NO";
    defparam sub_39_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n507), 
          .COUT(n508), .S0(n1376[9]), .S1(n1376[10]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_11.INIT0 = 16'h5999;
    defparam sub_39_add_2_11.INIT1 = 16'h5999;
    defparam sub_39_add_2_11.INJECT1_0 = "NO";
    defparam sub_39_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n506), 
          .COUT(n507), .S0(n1376[7]), .S1(n1376[8]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_9.INIT0 = 16'h5999;
    defparam sub_39_add_2_9.INIT1 = 16'h5999;
    defparam sub_39_add_2_9.INJECT1_0 = "NO";
    defparam sub_39_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n505), 
          .COUT(n506), .S0(n1376[5]), .S1(n1376[6]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_7.INIT0 = 16'h5999;
    defparam sub_39_add_2_7.INIT1 = 16'h5999;
    defparam sub_39_add_2_7.INJECT1_0 = "NO";
    defparam sub_39_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n504), 
          .COUT(n505), .S0(n1376[3]), .S1(n1376[4]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_5.INIT0 = 16'h5999;
    defparam sub_39_add_2_5.INIT1 = 16'h5999;
    defparam sub_39_add_2_5.INJECT1_0 = "NO";
    defparam sub_39_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n503), 
          .COUT(n504), .S0(n1376[1]), .S1(n1376[2]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_3.INIT0 = 16'h5999;
    defparam sub_39_add_2_3.INIT1 = 16'h5999;
    defparam sub_39_add_2_3.INJECT1_0 = "NO";
    defparam sub_39_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n503), 
          .S1(n1376[0]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_1.INIT0 = 16'h0000;
    defparam sub_39_add_2_1.INIT1 = 16'h5999;
    defparam sub_39_add_2_1.INJECT1_0 = "NO";
    defparam sub_39_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_59 (.A0(d9[57]), .B0(d_d9[57]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n498), 
          .S0(n1435[57]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_59.INIT0 = 16'h5999;
    defparam sub_40_add_2_59.INIT1 = 16'h0000;
    defparam sub_40_add_2_59.INJECT1_0 = "NO";
    defparam sub_40_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_57 (.A0(d9[55]), .B0(d_d9[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[56]), .B1(d_d9[56]), .C1(GND_net), .D1(GND_net), .CIN(n497), 
          .COUT(n498), .S0(n1435[55]), .S1(n1435[56]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_57.INIT0 = 16'h5999;
    defparam sub_40_add_2_57.INIT1 = 16'h5999;
    defparam sub_40_add_2_57.INJECT1_0 = "NO";
    defparam sub_40_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_55 (.A0(d9[53]), .B0(d_d9[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[54]), .B1(d_d9[54]), .C1(GND_net), .D1(GND_net), .CIN(n496), 
          .COUT(n497), .S0(n1435[53]), .S1(n1435[54]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_55.INIT0 = 16'h5999;
    defparam sub_40_add_2_55.INIT1 = 16'h5999;
    defparam sub_40_add_2_55.INJECT1_0 = "NO";
    defparam sub_40_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_53 (.A0(d9[51]), .B0(d_d9[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[52]), .B1(d_d9[52]), .C1(GND_net), .D1(GND_net), .CIN(n495), 
          .COUT(n496), .S0(n1435[51]), .S1(n1435[52]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_53.INIT0 = 16'h5999;
    defparam sub_40_add_2_53.INIT1 = 16'h5999;
    defparam sub_40_add_2_53.INJECT1_0 = "NO";
    defparam sub_40_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_51 (.A0(d9[49]), .B0(d_d9[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[50]), .B1(d_d9[50]), .C1(GND_net), .D1(GND_net), .CIN(n494), 
          .COUT(n495), .S1(n1435[50]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_51.INIT0 = 16'h5999;
    defparam sub_40_add_2_51.INIT1 = 16'h5999;
    defparam sub_40_add_2_51.INJECT1_0 = "NO";
    defparam sub_40_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_49 (.A0(d9[47]), .B0(d_d9[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[48]), .B1(d_d9[48]), .C1(GND_net), .D1(GND_net), .CIN(n493), 
          .COUT(n494));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_49.INIT0 = 16'h5999;
    defparam sub_40_add_2_49.INIT1 = 16'h5999;
    defparam sub_40_add_2_49.INJECT1_0 = "NO";
    defparam sub_40_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_47 (.A0(d9[45]), .B0(d_d9[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[46]), .B1(d_d9[46]), .C1(GND_net), .D1(GND_net), .CIN(n492), 
          .COUT(n493));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_47.INIT0 = 16'h5999;
    defparam sub_40_add_2_47.INIT1 = 16'h5999;
    defparam sub_40_add_2_47.INJECT1_0 = "NO";
    defparam sub_40_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_45 (.A0(d9[43]), .B0(d_d9[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[44]), .B1(d_d9[44]), .C1(GND_net), .D1(GND_net), .CIN(n491), 
          .COUT(n492));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_45.INIT0 = 16'h5999;
    defparam sub_40_add_2_45.INIT1 = 16'h5999;
    defparam sub_40_add_2_45.INJECT1_0 = "NO";
    defparam sub_40_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_43 (.A0(d9[41]), .B0(d_d9[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[42]), .B1(d_d9[42]), .C1(GND_net), .D1(GND_net), .CIN(n490), 
          .COUT(n491));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_43.INIT0 = 16'h5999;
    defparam sub_40_add_2_43.INIT1 = 16'h5999;
    defparam sub_40_add_2_43.INJECT1_0 = "NO";
    defparam sub_40_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_41 (.A0(d9[39]), .B0(d_d9[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[40]), .B1(d_d9[40]), .C1(GND_net), .D1(GND_net), .CIN(n489), 
          .COUT(n490));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_41.INIT0 = 16'h5999;
    defparam sub_40_add_2_41.INIT1 = 16'h5999;
    defparam sub_40_add_2_41.INJECT1_0 = "NO";
    defparam sub_40_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_39 (.A0(d9[37]), .B0(d_d9[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[38]), .B1(d_d9[38]), .C1(GND_net), .D1(GND_net), .CIN(n488), 
          .COUT(n489));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_39.INIT0 = 16'h5999;
    defparam sub_40_add_2_39.INIT1 = 16'h5999;
    defparam sub_40_add_2_39.INJECT1_0 = "NO";
    defparam sub_40_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_37 (.A0(d9[35]), .B0(d_d9[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[36]), .B1(d_d9[36]), .C1(GND_net), .D1(GND_net), .CIN(n487), 
          .COUT(n488));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_37.INIT0 = 16'h5999;
    defparam sub_40_add_2_37.INIT1 = 16'h5999;
    defparam sub_40_add_2_37.INJECT1_0 = "NO";
    defparam sub_40_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_35 (.A0(d9[33]), .B0(d_d9[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[34]), .B1(d_d9[34]), .C1(GND_net), .D1(GND_net), .CIN(n486), 
          .COUT(n487));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_35.INIT0 = 16'h5999;
    defparam sub_40_add_2_35.INIT1 = 16'h5999;
    defparam sub_40_add_2_35.INJECT1_0 = "NO";
    defparam sub_40_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_33 (.A0(d9[31]), .B0(d_d9[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[32]), .B1(d_d9[32]), .C1(GND_net), .D1(GND_net), .CIN(n485), 
          .COUT(n486));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_33.INIT0 = 16'h5999;
    defparam sub_40_add_2_33.INIT1 = 16'h5999;
    defparam sub_40_add_2_33.INJECT1_0 = "NO";
    defparam sub_40_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_31 (.A0(d9[29]), .B0(d_d9[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[30]), .B1(d_d9[30]), .C1(GND_net), .D1(GND_net), .CIN(n484), 
          .COUT(n485));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_31.INIT0 = 16'h5999;
    defparam sub_40_add_2_31.INIT1 = 16'h5999;
    defparam sub_40_add_2_31.INJECT1_0 = "NO";
    defparam sub_40_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_29 (.A0(d9[27]), .B0(d_d9[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[28]), .B1(d_d9[28]), .C1(GND_net), .D1(GND_net), .CIN(n483), 
          .COUT(n484));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_29.INIT0 = 16'h5999;
    defparam sub_40_add_2_29.INIT1 = 16'h5999;
    defparam sub_40_add_2_29.INJECT1_0 = "NO";
    defparam sub_40_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_27 (.A0(d9[25]), .B0(d_d9[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[26]), .B1(d_d9[26]), .C1(GND_net), .D1(GND_net), .CIN(n482), 
          .COUT(n483));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_27.INIT0 = 16'h5999;
    defparam sub_40_add_2_27.INIT1 = 16'h5999;
    defparam sub_40_add_2_27.INJECT1_0 = "NO";
    defparam sub_40_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_25 (.A0(d9[23]), .B0(d_d9[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[24]), .B1(d_d9[24]), .C1(GND_net), .D1(GND_net), .CIN(n481), 
          .COUT(n482));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_25.INIT0 = 16'h5999;
    defparam sub_40_add_2_25.INIT1 = 16'h5999;
    defparam sub_40_add_2_25.INJECT1_0 = "NO";
    defparam sub_40_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_23 (.A0(d9[21]), .B0(d_d9[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[22]), .B1(d_d9[22]), .C1(GND_net), .D1(GND_net), .CIN(n480), 
          .COUT(n481));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_23.INIT0 = 16'h5999;
    defparam sub_40_add_2_23.INIT1 = 16'h5999;
    defparam sub_40_add_2_23.INJECT1_0 = "NO";
    defparam sub_40_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_21 (.A0(d9[19]), .B0(d_d9[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[20]), .B1(d_d9[20]), .C1(GND_net), .D1(GND_net), .CIN(n479), 
          .COUT(n480));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_21.INIT0 = 16'h5999;
    defparam sub_40_add_2_21.INIT1 = 16'h5999;
    defparam sub_40_add_2_21.INJECT1_0 = "NO";
    defparam sub_40_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_19 (.A0(d9[17]), .B0(d_d9[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[18]), .B1(d_d9[18]), .C1(GND_net), .D1(GND_net), .CIN(n478), 
          .COUT(n479));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_19.INIT0 = 16'h5999;
    defparam sub_40_add_2_19.INIT1 = 16'h5999;
    defparam sub_40_add_2_19.INJECT1_0 = "NO";
    defparam sub_40_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_17 (.A0(d9[15]), .B0(d_d9[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[16]), .B1(d_d9[16]), .C1(GND_net), .D1(GND_net), .CIN(n477), 
          .COUT(n478));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_17.INIT0 = 16'h5999;
    defparam sub_40_add_2_17.INIT1 = 16'h5999;
    defparam sub_40_add_2_17.INJECT1_0 = "NO";
    defparam sub_40_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_15 (.A0(d9[13]), .B0(d_d9[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[14]), .B1(d_d9[14]), .C1(GND_net), .D1(GND_net), .CIN(n476), 
          .COUT(n477));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_15.INIT0 = 16'h5999;
    defparam sub_40_add_2_15.INIT1 = 16'h5999;
    defparam sub_40_add_2_15.INJECT1_0 = "NO";
    defparam sub_40_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[12]), .B1(d_d9[12]), .C1(GND_net), .D1(GND_net), .CIN(n475), 
          .COUT(n476));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_13.INIT0 = 16'h5999;
    defparam sub_40_add_2_13.INIT1 = 16'h5999;
    defparam sub_40_add_2_13.INJECT1_0 = "NO";
    defparam sub_40_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n474), 
          .COUT(n475));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_11.INIT0 = 16'h5999;
    defparam sub_40_add_2_11.INIT1 = 16'h5999;
    defparam sub_40_add_2_11.INJECT1_0 = "NO";
    defparam sub_40_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n473), 
          .COUT(n474));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_9.INIT0 = 16'h5999;
    defparam sub_40_add_2_9.INIT1 = 16'h5999;
    defparam sub_40_add_2_9.INJECT1_0 = "NO";
    defparam sub_40_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n472), 
          .COUT(n473));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_7.INIT0 = 16'h5999;
    defparam sub_40_add_2_7.INIT1 = 16'h5999;
    defparam sub_40_add_2_7.INJECT1_0 = "NO";
    defparam sub_40_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n471), 
          .COUT(n472));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_5.INIT0 = 16'h5999;
    defparam sub_40_add_2_5.INIT1 = 16'h5999;
    defparam sub_40_add_2_5.INJECT1_0 = "NO";
    defparam sub_40_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n470), 
          .COUT(n471));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_3.INIT0 = 16'h5999;
    defparam sub_40_add_2_3.INIT1 = 16'h5999;
    defparam sub_40_add_2_3.INJECT1_0 = "NO";
    defparam sub_40_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n470));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_1.INIT0 = 16'h0000;
    defparam sub_40_add_2_1.INIT1 = 16'h5999;
    defparam sub_40_add_2_1.INJECT1_0 = "NO";
    defparam sub_40_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_59 (.A0(d6[57]), .B0(d_d6[57]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n469), 
          .S0(n1258[57]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_59.INIT0 = 16'h5999;
    defparam sub_37_add_2_59.INIT1 = 16'h0000;
    defparam sub_37_add_2_59.INJECT1_0 = "NO";
    defparam sub_37_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_57 (.A0(d6[55]), .B0(d_d6[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[56]), .B1(d_d6[56]), .C1(GND_net), .D1(GND_net), .CIN(n468), 
          .COUT(n469), .S0(n1258[55]), .S1(n1258[56]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_57.INIT0 = 16'h5999;
    defparam sub_37_add_2_57.INIT1 = 16'h5999;
    defparam sub_37_add_2_57.INJECT1_0 = "NO";
    defparam sub_37_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_55 (.A0(d6[53]), .B0(d_d6[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[54]), .B1(d_d6[54]), .C1(GND_net), .D1(GND_net), .CIN(n467), 
          .COUT(n468), .S0(n1258[53]), .S1(n1258[54]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_55.INIT0 = 16'h5999;
    defparam sub_37_add_2_55.INIT1 = 16'h5999;
    defparam sub_37_add_2_55.INJECT1_0 = "NO";
    defparam sub_37_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_53 (.A0(d6[51]), .B0(d_d6[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[52]), .B1(d_d6[52]), .C1(GND_net), .D1(GND_net), .CIN(n466), 
          .COUT(n467), .S0(n1258[51]), .S1(n1258[52]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_53.INIT0 = 16'h5999;
    defparam sub_37_add_2_53.INIT1 = 16'h5999;
    defparam sub_37_add_2_53.INJECT1_0 = "NO";
    defparam sub_37_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_51 (.A0(d6[49]), .B0(d_d6[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[50]), .B1(d_d6[50]), .C1(GND_net), .D1(GND_net), .CIN(n465), 
          .COUT(n466), .S0(n1258[49]), .S1(n1258[50]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_51.INIT0 = 16'h5999;
    defparam sub_37_add_2_51.INIT1 = 16'h5999;
    defparam sub_37_add_2_51.INJECT1_0 = "NO";
    defparam sub_37_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_49 (.A0(d6[47]), .B0(d_d6[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[48]), .B1(d_d6[48]), .C1(GND_net), .D1(GND_net), .CIN(n464), 
          .COUT(n465), .S0(n1258[47]), .S1(n1258[48]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_49.INIT0 = 16'h5999;
    defparam sub_37_add_2_49.INIT1 = 16'h5999;
    defparam sub_37_add_2_49.INJECT1_0 = "NO";
    defparam sub_37_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_47 (.A0(d6[45]), .B0(d_d6[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[46]), .B1(d_d6[46]), .C1(GND_net), .D1(GND_net), .CIN(n463), 
          .COUT(n464), .S0(n1258[45]), .S1(n1258[46]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_47.INIT0 = 16'h5999;
    defparam sub_37_add_2_47.INIT1 = 16'h5999;
    defparam sub_37_add_2_47.INJECT1_0 = "NO";
    defparam sub_37_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_45 (.A0(d6[43]), .B0(d_d6[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[44]), .B1(d_d6[44]), .C1(GND_net), .D1(GND_net), .CIN(n462), 
          .COUT(n463), .S0(n1258[43]), .S1(n1258[44]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_45.INIT0 = 16'h5999;
    defparam sub_37_add_2_45.INIT1 = 16'h5999;
    defparam sub_37_add_2_45.INJECT1_0 = "NO";
    defparam sub_37_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_43 (.A0(d6[41]), .B0(d_d6[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[42]), .B1(d_d6[42]), .C1(GND_net), .D1(GND_net), .CIN(n461), 
          .COUT(n462), .S0(n1258[41]), .S1(n1258[42]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_43.INIT0 = 16'h5999;
    defparam sub_37_add_2_43.INIT1 = 16'h5999;
    defparam sub_37_add_2_43.INJECT1_0 = "NO";
    defparam sub_37_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_41 (.A0(d6[39]), .B0(d_d6[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[40]), .B1(d_d6[40]), .C1(GND_net), .D1(GND_net), .CIN(n460), 
          .COUT(n461), .S0(n1258[39]), .S1(n1258[40]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_41.INIT0 = 16'h5999;
    defparam sub_37_add_2_41.INIT1 = 16'h5999;
    defparam sub_37_add_2_41.INJECT1_0 = "NO";
    defparam sub_37_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_39 (.A0(d6[37]), .B0(d_d6[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[38]), .B1(d_d6[38]), .C1(GND_net), .D1(GND_net), .CIN(n459), 
          .COUT(n460), .S0(n1258[37]), .S1(n1258[38]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_39.INIT0 = 16'h5999;
    defparam sub_37_add_2_39.INIT1 = 16'h5999;
    defparam sub_37_add_2_39.INJECT1_0 = "NO";
    defparam sub_37_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_37 (.A0(d6[35]), .B0(d_d6[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[36]), .B1(d_d6[36]), .C1(GND_net), .D1(GND_net), .CIN(n458), 
          .COUT(n459), .S0(n1258[35]), .S1(n1258[36]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_37.INIT0 = 16'h5999;
    defparam sub_37_add_2_37.INIT1 = 16'h5999;
    defparam sub_37_add_2_37.INJECT1_0 = "NO";
    defparam sub_37_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_35 (.A0(d6[33]), .B0(d_d6[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[34]), .B1(d_d6[34]), .C1(GND_net), .D1(GND_net), .CIN(n457), 
          .COUT(n458), .S0(n1258[33]), .S1(n1258[34]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_35.INIT0 = 16'h5999;
    defparam sub_37_add_2_35.INIT1 = 16'h5999;
    defparam sub_37_add_2_35.INJECT1_0 = "NO";
    defparam sub_37_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_33 (.A0(d6[31]), .B0(d_d6[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[32]), .B1(d_d6[32]), .C1(GND_net), .D1(GND_net), .CIN(n456), 
          .COUT(n457), .S0(n1258[31]), .S1(n1258[32]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_33.INIT0 = 16'h5999;
    defparam sub_37_add_2_33.INIT1 = 16'h5999;
    defparam sub_37_add_2_33.INJECT1_0 = "NO";
    defparam sub_37_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_31 (.A0(d6[29]), .B0(d_d6[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[30]), .B1(d_d6[30]), .C1(GND_net), .D1(GND_net), .CIN(n455), 
          .COUT(n456), .S0(n1258[29]), .S1(n1258[30]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_31.INIT0 = 16'h5999;
    defparam sub_37_add_2_31.INIT1 = 16'h5999;
    defparam sub_37_add_2_31.INJECT1_0 = "NO";
    defparam sub_37_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_29 (.A0(d6[27]), .B0(d_d6[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[28]), .B1(d_d6[28]), .C1(GND_net), .D1(GND_net), .CIN(n454), 
          .COUT(n455), .S0(n1258[27]), .S1(n1258[28]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_29.INIT0 = 16'h5999;
    defparam sub_37_add_2_29.INIT1 = 16'h5999;
    defparam sub_37_add_2_29.INJECT1_0 = "NO";
    defparam sub_37_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_27 (.A0(d6[25]), .B0(d_d6[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[26]), .B1(d_d6[26]), .C1(GND_net), .D1(GND_net), .CIN(n453), 
          .COUT(n454), .S0(n1258[25]), .S1(n1258[26]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_27.INIT0 = 16'h5999;
    defparam sub_37_add_2_27.INIT1 = 16'h5999;
    defparam sub_37_add_2_27.INJECT1_0 = "NO";
    defparam sub_37_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_25 (.A0(d6[23]), .B0(d_d6[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[24]), .B1(d_d6[24]), .C1(GND_net), .D1(GND_net), .CIN(n452), 
          .COUT(n453), .S0(n1258[23]), .S1(n1258[24]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_25.INIT0 = 16'h5999;
    defparam sub_37_add_2_25.INIT1 = 16'h5999;
    defparam sub_37_add_2_25.INJECT1_0 = "NO";
    defparam sub_37_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_23 (.A0(d6[21]), .B0(d_d6[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[22]), .B1(d_d6[22]), .C1(GND_net), .D1(GND_net), .CIN(n451), 
          .COUT(n452), .S0(n1258[21]), .S1(n1258[22]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_23.INIT0 = 16'h5999;
    defparam sub_37_add_2_23.INIT1 = 16'h5999;
    defparam sub_37_add_2_23.INJECT1_0 = "NO";
    defparam sub_37_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_21 (.A0(d6[19]), .B0(d_d6[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[20]), .B1(d_d6[20]), .C1(GND_net), .D1(GND_net), .CIN(n450), 
          .COUT(n451), .S0(n1258[19]), .S1(n1258[20]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_21.INIT0 = 16'h5999;
    defparam sub_37_add_2_21.INIT1 = 16'h5999;
    defparam sub_37_add_2_21.INJECT1_0 = "NO";
    defparam sub_37_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_19 (.A0(d6[17]), .B0(d_d6[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[18]), .B1(d_d6[18]), .C1(GND_net), .D1(GND_net), .CIN(n449), 
          .COUT(n450), .S0(n1258[17]), .S1(n1258[18]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_19.INIT0 = 16'h5999;
    defparam sub_37_add_2_19.INIT1 = 16'h5999;
    defparam sub_37_add_2_19.INJECT1_0 = "NO";
    defparam sub_37_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_17 (.A0(d6[15]), .B0(d_d6[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[16]), .B1(d_d6[16]), .C1(GND_net), .D1(GND_net), .CIN(n448), 
          .COUT(n449), .S0(n1258[15]), .S1(n1258[16]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_17.INIT0 = 16'h5999;
    defparam sub_37_add_2_17.INIT1 = 16'h5999;
    defparam sub_37_add_2_17.INJECT1_0 = "NO";
    defparam sub_37_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_15 (.A0(d6[13]), .B0(d_d6[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[14]), .B1(d_d6[14]), .C1(GND_net), .D1(GND_net), .CIN(n447), 
          .COUT(n448), .S0(n1258[13]), .S1(n1258[14]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_15.INIT0 = 16'h5999;
    defparam sub_37_add_2_15.INIT1 = 16'h5999;
    defparam sub_37_add_2_15.INJECT1_0 = "NO";
    defparam sub_37_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[12]), .B1(d_d6[12]), .C1(GND_net), .D1(GND_net), .CIN(n446), 
          .COUT(n447), .S0(n1258[11]), .S1(n1258[12]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_13.INIT0 = 16'h5999;
    defparam sub_37_add_2_13.INIT1 = 16'h5999;
    defparam sub_37_add_2_13.INJECT1_0 = "NO";
    defparam sub_37_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n445), 
          .COUT(n446), .S0(n1258[9]), .S1(n1258[10]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_11.INIT0 = 16'h5999;
    defparam sub_37_add_2_11.INIT1 = 16'h5999;
    defparam sub_37_add_2_11.INJECT1_0 = "NO";
    defparam sub_37_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n444), 
          .COUT(n445), .S0(n1258[7]), .S1(n1258[8]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_9.INIT0 = 16'h5999;
    defparam sub_37_add_2_9.INIT1 = 16'h5999;
    defparam sub_37_add_2_9.INJECT1_0 = "NO";
    defparam sub_37_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n443), 
          .COUT(n444), .S0(n1258[5]), .S1(n1258[6]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_7.INIT0 = 16'h5999;
    defparam sub_37_add_2_7.INIT1 = 16'h5999;
    defparam sub_37_add_2_7.INJECT1_0 = "NO";
    defparam sub_37_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n442), 
          .COUT(n443), .S0(n1258[3]), .S1(n1258[4]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_5.INIT0 = 16'h5999;
    defparam sub_37_add_2_5.INIT1 = 16'h5999;
    defparam sub_37_add_2_5.INJECT1_0 = "NO";
    defparam sub_37_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n441), 
          .COUT(n442), .S0(n1258[1]), .S1(n1258[2]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_3.INIT0 = 16'h5999;
    defparam sub_37_add_2_3.INIT1 = 16'h5999;
    defparam sub_37_add_2_3.INJECT1_0 = "NO";
    defparam sub_37_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n441), 
          .S1(n1258[0]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_1.INIT0 = 16'h0000;
    defparam sub_37_add_2_1.INIT1 = 16'h5999;
    defparam sub_37_add_2_1.INJECT1_0 = "NO";
    defparam sub_37_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_59 (.A0(d_tmp[57]), .B0(d_d_tmp[57]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n440), .S0(n1199[57]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_59.INIT0 = 16'h5999;
    defparam sub_36_add_2_59.INIT1 = 16'h0000;
    defparam sub_36_add_2_59.INJECT1_0 = "NO";
    defparam sub_36_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_57 (.A0(d_tmp[55]), .B0(d_d_tmp[55]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[56]), .B1(d_d_tmp[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n439), .COUT(n440), .S0(n1199[55]), .S1(n1199[56]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_57.INIT0 = 16'h5999;
    defparam sub_36_add_2_57.INIT1 = 16'h5999;
    defparam sub_36_add_2_57.INJECT1_0 = "NO";
    defparam sub_36_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_55 (.A0(d_tmp[53]), .B0(d_d_tmp[53]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[54]), .B1(d_d_tmp[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n438), .COUT(n439), .S0(n1199[53]), .S1(n1199[54]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_55.INIT0 = 16'h5999;
    defparam sub_36_add_2_55.INIT1 = 16'h5999;
    defparam sub_36_add_2_55.INJECT1_0 = "NO";
    defparam sub_36_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_53 (.A0(d_tmp[51]), .B0(d_d_tmp[51]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[52]), .B1(d_d_tmp[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n437), .COUT(n438), .S0(n1199[51]), .S1(n1199[52]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_53.INIT0 = 16'h5999;
    defparam sub_36_add_2_53.INIT1 = 16'h5999;
    defparam sub_36_add_2_53.INJECT1_0 = "NO";
    defparam sub_36_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_51 (.A0(d_tmp[49]), .B0(d_d_tmp[49]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[50]), .B1(d_d_tmp[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n436), .COUT(n437), .S0(n1199[49]), .S1(n1199[50]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_51.INIT0 = 16'h5999;
    defparam sub_36_add_2_51.INIT1 = 16'h5999;
    defparam sub_36_add_2_51.INJECT1_0 = "NO";
    defparam sub_36_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_49 (.A0(d_tmp[47]), .B0(d_d_tmp[47]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[48]), .B1(d_d_tmp[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n435), .COUT(n436), .S0(n1199[47]), .S1(n1199[48]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_49.INIT0 = 16'h5999;
    defparam sub_36_add_2_49.INIT1 = 16'h5999;
    defparam sub_36_add_2_49.INJECT1_0 = "NO";
    defparam sub_36_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_47 (.A0(d_tmp[45]), .B0(d_d_tmp[45]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[46]), .B1(d_d_tmp[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n434), .COUT(n435), .S0(n1199[45]), .S1(n1199[46]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_47.INIT0 = 16'h5999;
    defparam sub_36_add_2_47.INIT1 = 16'h5999;
    defparam sub_36_add_2_47.INJECT1_0 = "NO";
    defparam sub_36_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_45 (.A0(d_tmp[43]), .B0(d_d_tmp[43]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[44]), .B1(d_d_tmp[44]), .C1(GND_net), 
          .D1(GND_net), .CIN(n433), .COUT(n434), .S0(n1199[43]), .S1(n1199[44]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_45.INIT0 = 16'h5999;
    defparam sub_36_add_2_45.INIT1 = 16'h5999;
    defparam sub_36_add_2_45.INJECT1_0 = "NO";
    defparam sub_36_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_43 (.A0(d_tmp[41]), .B0(d_d_tmp[41]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[42]), .B1(d_d_tmp[42]), .C1(GND_net), 
          .D1(GND_net), .CIN(n432), .COUT(n433), .S0(n1199[41]), .S1(n1199[42]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_43.INIT0 = 16'h5999;
    defparam sub_36_add_2_43.INIT1 = 16'h5999;
    defparam sub_36_add_2_43.INJECT1_0 = "NO";
    defparam sub_36_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_41 (.A0(d_tmp[39]), .B0(d_d_tmp[39]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[40]), .B1(d_d_tmp[40]), .C1(GND_net), 
          .D1(GND_net), .CIN(n431), .COUT(n432), .S0(n1199[39]), .S1(n1199[40]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_41.INIT0 = 16'h5999;
    defparam sub_36_add_2_41.INIT1 = 16'h5999;
    defparam sub_36_add_2_41.INJECT1_0 = "NO";
    defparam sub_36_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_39 (.A0(d_tmp[37]), .B0(d_d_tmp[37]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[38]), .B1(d_d_tmp[38]), .C1(GND_net), 
          .D1(GND_net), .CIN(n430), .COUT(n431), .S0(n1199[37]), .S1(n1199[38]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_39.INIT0 = 16'h5999;
    defparam sub_36_add_2_39.INIT1 = 16'h5999;
    defparam sub_36_add_2_39.INJECT1_0 = "NO";
    defparam sub_36_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_37 (.A0(d_tmp[35]), .B0(d_d_tmp[35]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[36]), .B1(d_d_tmp[36]), .C1(GND_net), 
          .D1(GND_net), .CIN(n429), .COUT(n430), .S0(n1199[35]), .S1(n1199[36]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_37.INIT0 = 16'h5999;
    defparam sub_36_add_2_37.INIT1 = 16'h5999;
    defparam sub_36_add_2_37.INJECT1_0 = "NO";
    defparam sub_36_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_35 (.A0(d_tmp[33]), .B0(d_d_tmp[33]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[34]), .B1(d_d_tmp[34]), .C1(GND_net), 
          .D1(GND_net), .CIN(n428), .COUT(n429), .S0(n1199[33]), .S1(n1199[34]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_35.INIT0 = 16'h5999;
    defparam sub_36_add_2_35.INIT1 = 16'h5999;
    defparam sub_36_add_2_35.INJECT1_0 = "NO";
    defparam sub_36_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_33 (.A0(d_tmp[31]), .B0(d_d_tmp[31]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[32]), .B1(d_d_tmp[32]), .C1(GND_net), 
          .D1(GND_net), .CIN(n427), .COUT(n428), .S0(n1199[31]), .S1(n1199[32]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_33.INIT0 = 16'h5999;
    defparam sub_36_add_2_33.INIT1 = 16'h5999;
    defparam sub_36_add_2_33.INJECT1_0 = "NO";
    defparam sub_36_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_31 (.A0(d_tmp[29]), .B0(d_d_tmp[29]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[30]), .B1(d_d_tmp[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n426), .COUT(n427), .S0(n1199[29]), .S1(n1199[30]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_31.INIT0 = 16'h5999;
    defparam sub_36_add_2_31.INIT1 = 16'h5999;
    defparam sub_36_add_2_31.INJECT1_0 = "NO";
    defparam sub_36_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_29 (.A0(d_tmp[27]), .B0(d_d_tmp[27]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[28]), .B1(d_d_tmp[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n425), .COUT(n426), .S0(n1199[27]), .S1(n1199[28]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_29.INIT0 = 16'h5999;
    defparam sub_36_add_2_29.INIT1 = 16'h5999;
    defparam sub_36_add_2_29.INJECT1_0 = "NO";
    defparam sub_36_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_27 (.A0(d_tmp[25]), .B0(d_d_tmp[25]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[26]), .B1(d_d_tmp[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n424), .COUT(n425), .S0(n1199[25]), .S1(n1199[26]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_27.INIT0 = 16'h5999;
    defparam sub_36_add_2_27.INIT1 = 16'h5999;
    defparam sub_36_add_2_27.INJECT1_0 = "NO";
    defparam sub_36_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_25 (.A0(d_tmp[23]), .B0(d_d_tmp[23]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[24]), .B1(d_d_tmp[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n423), .COUT(n424), .S0(n1199[23]), .S1(n1199[24]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_25.INIT0 = 16'h5999;
    defparam sub_36_add_2_25.INIT1 = 16'h5999;
    defparam sub_36_add_2_25.INJECT1_0 = "NO";
    defparam sub_36_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_23 (.A0(d_tmp[21]), .B0(d_d_tmp[21]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[22]), .B1(d_d_tmp[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n422), .COUT(n423), .S0(n1199[21]), .S1(n1199[22]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_23.INIT0 = 16'h5999;
    defparam sub_36_add_2_23.INIT1 = 16'h5999;
    defparam sub_36_add_2_23.INJECT1_0 = "NO";
    defparam sub_36_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_21 (.A0(d_tmp[19]), .B0(d_d_tmp[19]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[20]), .B1(d_d_tmp[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n421), .COUT(n422), .S0(n1199[19]), .S1(n1199[20]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_21.INIT0 = 16'h5999;
    defparam sub_36_add_2_21.INIT1 = 16'h5999;
    defparam sub_36_add_2_21.INJECT1_0 = "NO";
    defparam sub_36_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_19 (.A0(d_tmp[17]), .B0(d_d_tmp[17]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[18]), .B1(d_d_tmp[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n420), .COUT(n421), .S0(n1199[17]), .S1(n1199[18]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_19.INIT0 = 16'h5999;
    defparam sub_36_add_2_19.INIT1 = 16'h5999;
    defparam sub_36_add_2_19.INJECT1_0 = "NO";
    defparam sub_36_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_17 (.A0(d_tmp[15]), .B0(d_d_tmp[15]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[16]), .B1(d_d_tmp[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n419), .COUT(n420), .S0(n1199[15]), .S1(n1199[16]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_17.INIT0 = 16'h5999;
    defparam sub_36_add_2_17.INIT1 = 16'h5999;
    defparam sub_36_add_2_17.INJECT1_0 = "NO";
    defparam sub_36_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_15 (.A0(d_tmp[13]), .B0(d_d_tmp[13]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[14]), .B1(d_d_tmp[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n418), .COUT(n419), .S0(n1199[13]), .S1(n1199[14]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_15.INIT0 = 16'h5999;
    defparam sub_36_add_2_15.INIT1 = 16'h5999;
    defparam sub_36_add_2_15.INJECT1_0 = "NO";
    defparam sub_36_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[12]), .B1(d_d_tmp[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n417), .COUT(n418), .S0(n1199[11]), .S1(n1199[12]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_13.INIT0 = 16'h5999;
    defparam sub_36_add_2_13.INIT1 = 16'h5999;
    defparam sub_36_add_2_13.INJECT1_0 = "NO";
    defparam sub_36_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n416), .COUT(n417), .S0(n1199[9]), .S1(n1199[10]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_11.INIT0 = 16'h5999;
    defparam sub_36_add_2_11.INIT1 = 16'h5999;
    defparam sub_36_add_2_11.INJECT1_0 = "NO";
    defparam sub_36_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n415), .COUT(n416), .S0(n1199[7]), .S1(n1199[8]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_9.INIT0 = 16'h5999;
    defparam sub_36_add_2_9.INIT1 = 16'h5999;
    defparam sub_36_add_2_9.INJECT1_0 = "NO";
    defparam sub_36_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n414), .COUT(n415), .S0(n1199[5]), .S1(n1199[6]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_7.INIT0 = 16'h5999;
    defparam sub_36_add_2_7.INIT1 = 16'h5999;
    defparam sub_36_add_2_7.INJECT1_0 = "NO";
    defparam sub_36_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n413), .COUT(n414), .S0(n1199[3]), .S1(n1199[4]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_5.INIT0 = 16'h5999;
    defparam sub_36_add_2_5.INIT1 = 16'h5999;
    defparam sub_36_add_2_5.INJECT1_0 = "NO";
    defparam sub_36_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n412), .COUT(n413), .S0(n1199[1]), .S1(n1199[2]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_3.INIT0 = 16'h5999;
    defparam sub_36_add_2_3.INIT1 = 16'h5999;
    defparam sub_36_add_2_3.INJECT1_0 = "NO";
    defparam sub_36_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n412), .S1(n1199[0]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_1.INIT0 = 16'h0000;
    defparam sub_36_add_2_1.INIT1 = 16'h5999;
    defparam sub_36_add_2_1.INJECT1_0 = "NO";
    defparam sub_36_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_59 (.A0(d7[57]), .B0(d_d7[57]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n411), 
          .S0(n1317[57]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_59.INIT0 = 16'h5999;
    defparam sub_38_add_2_59.INIT1 = 16'h0000;
    defparam sub_38_add_2_59.INJECT1_0 = "NO";
    defparam sub_38_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_57 (.A0(d7[55]), .B0(d_d7[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[56]), .B1(d_d7[56]), .C1(GND_net), .D1(GND_net), .CIN(n410), 
          .COUT(n411), .S0(n1317[55]), .S1(n1317[56]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_57.INIT0 = 16'h5999;
    defparam sub_38_add_2_57.INIT1 = 16'h5999;
    defparam sub_38_add_2_57.INJECT1_0 = "NO";
    defparam sub_38_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_55 (.A0(d7[53]), .B0(d_d7[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[54]), .B1(d_d7[54]), .C1(GND_net), .D1(GND_net), .CIN(n409), 
          .COUT(n410), .S0(n1317[53]), .S1(n1317[54]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_55.INIT0 = 16'h5999;
    defparam sub_38_add_2_55.INIT1 = 16'h5999;
    defparam sub_38_add_2_55.INJECT1_0 = "NO";
    defparam sub_38_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_53 (.A0(d7[51]), .B0(d_d7[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[52]), .B1(d_d7[52]), .C1(GND_net), .D1(GND_net), .CIN(n408), 
          .COUT(n409), .S0(n1317[51]), .S1(n1317[52]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_53.INIT0 = 16'h5999;
    defparam sub_38_add_2_53.INIT1 = 16'h5999;
    defparam sub_38_add_2_53.INJECT1_0 = "NO";
    defparam sub_38_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_51 (.A0(d7[49]), .B0(d_d7[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[50]), .B1(d_d7[50]), .C1(GND_net), .D1(GND_net), .CIN(n407), 
          .COUT(n408), .S0(n1317[49]), .S1(n1317[50]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_51.INIT0 = 16'h5999;
    defparam sub_38_add_2_51.INIT1 = 16'h5999;
    defparam sub_38_add_2_51.INJECT1_0 = "NO";
    defparam sub_38_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_49 (.A0(d7[47]), .B0(d_d7[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[48]), .B1(d_d7[48]), .C1(GND_net), .D1(GND_net), .CIN(n406), 
          .COUT(n407), .S0(n1317[47]), .S1(n1317[48]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_49.INIT0 = 16'h5999;
    defparam sub_38_add_2_49.INIT1 = 16'h5999;
    defparam sub_38_add_2_49.INJECT1_0 = "NO";
    defparam sub_38_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_47 (.A0(d7[45]), .B0(d_d7[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[46]), .B1(d_d7[46]), .C1(GND_net), .D1(GND_net), .CIN(n405), 
          .COUT(n406), .S0(n1317[45]), .S1(n1317[46]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_47.INIT0 = 16'h5999;
    defparam sub_38_add_2_47.INIT1 = 16'h5999;
    defparam sub_38_add_2_47.INJECT1_0 = "NO";
    defparam sub_38_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_45 (.A0(d7[43]), .B0(d_d7[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[44]), .B1(d_d7[44]), .C1(GND_net), .D1(GND_net), .CIN(n404), 
          .COUT(n405), .S0(n1317[43]), .S1(n1317[44]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_45.INIT0 = 16'h5999;
    defparam sub_38_add_2_45.INIT1 = 16'h5999;
    defparam sub_38_add_2_45.INJECT1_0 = "NO";
    defparam sub_38_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_43 (.A0(d7[41]), .B0(d_d7[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[42]), .B1(d_d7[42]), .C1(GND_net), .D1(GND_net), .CIN(n403), 
          .COUT(n404), .S0(n1317[41]), .S1(n1317[42]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_43.INIT0 = 16'h5999;
    defparam sub_38_add_2_43.INIT1 = 16'h5999;
    defparam sub_38_add_2_43.INJECT1_0 = "NO";
    defparam sub_38_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_41 (.A0(d7[39]), .B0(d_d7[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[40]), .B1(d_d7[40]), .C1(GND_net), .D1(GND_net), .CIN(n402), 
          .COUT(n403), .S0(n1317[39]), .S1(n1317[40]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_41.INIT0 = 16'h5999;
    defparam sub_38_add_2_41.INIT1 = 16'h5999;
    defparam sub_38_add_2_41.INJECT1_0 = "NO";
    defparam sub_38_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_39 (.A0(d7[37]), .B0(d_d7[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[38]), .B1(d_d7[38]), .C1(GND_net), .D1(GND_net), .CIN(n401), 
          .COUT(n402), .S0(n1317[37]), .S1(n1317[38]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_39.INIT0 = 16'h5999;
    defparam sub_38_add_2_39.INIT1 = 16'h5999;
    defparam sub_38_add_2_39.INJECT1_0 = "NO";
    defparam sub_38_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_37 (.A0(d7[35]), .B0(d_d7[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[36]), .B1(d_d7[36]), .C1(GND_net), .D1(GND_net), .CIN(n400), 
          .COUT(n401), .S0(n1317[35]), .S1(n1317[36]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_37.INIT0 = 16'h5999;
    defparam sub_38_add_2_37.INIT1 = 16'h5999;
    defparam sub_38_add_2_37.INJECT1_0 = "NO";
    defparam sub_38_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_35 (.A0(d7[33]), .B0(d_d7[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[34]), .B1(d_d7[34]), .C1(GND_net), .D1(GND_net), .CIN(n399), 
          .COUT(n400), .S0(n1317[33]), .S1(n1317[34]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_35.INIT0 = 16'h5999;
    defparam sub_38_add_2_35.INIT1 = 16'h5999;
    defparam sub_38_add_2_35.INJECT1_0 = "NO";
    defparam sub_38_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_33 (.A0(d7[31]), .B0(d_d7[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[32]), .B1(d_d7[32]), .C1(GND_net), .D1(GND_net), .CIN(n398), 
          .COUT(n399), .S0(n1317[31]), .S1(n1317[32]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_33.INIT0 = 16'h5999;
    defparam sub_38_add_2_33.INIT1 = 16'h5999;
    defparam sub_38_add_2_33.INJECT1_0 = "NO";
    defparam sub_38_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_31 (.A0(d7[29]), .B0(d_d7[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[30]), .B1(d_d7[30]), .C1(GND_net), .D1(GND_net), .CIN(n397), 
          .COUT(n398), .S0(n1317[29]), .S1(n1317[30]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_31.INIT0 = 16'h5999;
    defparam sub_38_add_2_31.INIT1 = 16'h5999;
    defparam sub_38_add_2_31.INJECT1_0 = "NO";
    defparam sub_38_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_29 (.A0(d7[27]), .B0(d_d7[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[28]), .B1(d_d7[28]), .C1(GND_net), .D1(GND_net), .CIN(n396), 
          .COUT(n397), .S0(n1317[27]), .S1(n1317[28]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_29.INIT0 = 16'h5999;
    defparam sub_38_add_2_29.INIT1 = 16'h5999;
    defparam sub_38_add_2_29.INJECT1_0 = "NO";
    defparam sub_38_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_27 (.A0(d7[25]), .B0(d_d7[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[26]), .B1(d_d7[26]), .C1(GND_net), .D1(GND_net), .CIN(n395), 
          .COUT(n396), .S0(n1317[25]), .S1(n1317[26]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_27.INIT0 = 16'h5999;
    defparam sub_38_add_2_27.INIT1 = 16'h5999;
    defparam sub_38_add_2_27.INJECT1_0 = "NO";
    defparam sub_38_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_25 (.A0(d7[23]), .B0(d_d7[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[24]), .B1(d_d7[24]), .C1(GND_net), .D1(GND_net), .CIN(n394), 
          .COUT(n395), .S0(n1317[23]), .S1(n1317[24]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_25.INIT0 = 16'h5999;
    defparam sub_38_add_2_25.INIT1 = 16'h5999;
    defparam sub_38_add_2_25.INJECT1_0 = "NO";
    defparam sub_38_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_23 (.A0(d7[21]), .B0(d_d7[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[22]), .B1(d_d7[22]), .C1(GND_net), .D1(GND_net), .CIN(n393), 
          .COUT(n394), .S0(n1317[21]), .S1(n1317[22]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_23.INIT0 = 16'h5999;
    defparam sub_38_add_2_23.INIT1 = 16'h5999;
    defparam sub_38_add_2_23.INJECT1_0 = "NO";
    defparam sub_38_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_21 (.A0(d7[19]), .B0(d_d7[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[20]), .B1(d_d7[20]), .C1(GND_net), .D1(GND_net), .CIN(n392), 
          .COUT(n393), .S0(n1317[19]), .S1(n1317[20]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_21.INIT0 = 16'h5999;
    defparam sub_38_add_2_21.INIT1 = 16'h5999;
    defparam sub_38_add_2_21.INJECT1_0 = "NO";
    defparam sub_38_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_19 (.A0(d7[17]), .B0(d_d7[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[18]), .B1(d_d7[18]), .C1(GND_net), .D1(GND_net), .CIN(n391), 
          .COUT(n392), .S0(n1317[17]), .S1(n1317[18]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_19.INIT0 = 16'h5999;
    defparam sub_38_add_2_19.INIT1 = 16'h5999;
    defparam sub_38_add_2_19.INJECT1_0 = "NO";
    defparam sub_38_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_17 (.A0(d7[15]), .B0(d_d7[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[16]), .B1(d_d7[16]), .C1(GND_net), .D1(GND_net), .CIN(n390), 
          .COUT(n391), .S0(n1317[15]), .S1(n1317[16]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_17.INIT0 = 16'h5999;
    defparam sub_38_add_2_17.INIT1 = 16'h5999;
    defparam sub_38_add_2_17.INJECT1_0 = "NO";
    defparam sub_38_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_15 (.A0(d7[13]), .B0(d_d7[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[14]), .B1(d_d7[14]), .C1(GND_net), .D1(GND_net), .CIN(n389), 
          .COUT(n390), .S0(n1317[13]), .S1(n1317[14]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_15.INIT0 = 16'h5999;
    defparam sub_38_add_2_15.INIT1 = 16'h5999;
    defparam sub_38_add_2_15.INJECT1_0 = "NO";
    defparam sub_38_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[12]), .B1(d_d7[12]), .C1(GND_net), .D1(GND_net), .CIN(n388), 
          .COUT(n389), .S0(n1317[11]), .S1(n1317[12]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_13.INIT0 = 16'h5999;
    defparam sub_38_add_2_13.INIT1 = 16'h5999;
    defparam sub_38_add_2_13.INJECT1_0 = "NO";
    defparam sub_38_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n387), 
          .COUT(n388), .S0(n1317[9]), .S1(n1317[10]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_11.INIT0 = 16'h5999;
    defparam sub_38_add_2_11.INIT1 = 16'h5999;
    defparam sub_38_add_2_11.INJECT1_0 = "NO";
    defparam sub_38_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n386), 
          .COUT(n387), .S0(n1317[7]), .S1(n1317[8]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_9.INIT0 = 16'h5999;
    defparam sub_38_add_2_9.INIT1 = 16'h5999;
    defparam sub_38_add_2_9.INJECT1_0 = "NO";
    defparam sub_38_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n385), 
          .COUT(n386), .S0(n1317[5]), .S1(n1317[6]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_7.INIT0 = 16'h5999;
    defparam sub_38_add_2_7.INIT1 = 16'h5999;
    defparam sub_38_add_2_7.INJECT1_0 = "NO";
    defparam sub_38_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n384), 
          .COUT(n385), .S0(n1317[3]), .S1(n1317[4]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_5.INIT0 = 16'h5999;
    defparam sub_38_add_2_5.INIT1 = 16'h5999;
    defparam sub_38_add_2_5.INJECT1_0 = "NO";
    defparam sub_38_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n383), 
          .COUT(n384), .S0(n1317[1]), .S1(n1317[2]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_3.INIT0 = 16'h5999;
    defparam sub_38_add_2_3.INIT1 = 16'h5999;
    defparam sub_38_add_2_3.INJECT1_0 = "NO";
    defparam sub_38_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n383), 
          .S1(n1317[0]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_1.INIT0 = 16'h0000;
    defparam sub_38_add_2_1.INIT1 = 16'h5999;
    defparam sub_38_add_2_1.INJECT1_0 = "NO";
    defparam sub_38_add_2_1.INJECT1_1 = "NO";
    CCU2D add_7_58 (.A0(d4[56]), .B0(d5[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[57]), .B1(d5[57]), .C1(GND_net), .D1(GND_net), .CIN(n381), 
          .S0(d5_57__N_1301[56]), .S1(d5_57__N_1301[57]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_58.INIT0 = 16'h5666;
    defparam add_7_58.INIT1 = 16'h5666;
    defparam add_7_58.INJECT1_0 = "NO";
    defparam add_7_58.INJECT1_1 = "NO";
    CCU2D add_7_56 (.A0(d4[54]), .B0(d5[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[55]), .B1(d5[55]), .C1(GND_net), .D1(GND_net), .CIN(n380), 
          .COUT(n381), .S0(d5_57__N_1301[54]), .S1(d5_57__N_1301[55]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_56.INIT0 = 16'h5666;
    defparam add_7_56.INIT1 = 16'h5666;
    defparam add_7_56.INJECT1_0 = "NO";
    defparam add_7_56.INJECT1_1 = "NO";
    CCU2D add_7_54 (.A0(d4[52]), .B0(d5[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[53]), .B1(d5[53]), .C1(GND_net), .D1(GND_net), .CIN(n379), 
          .COUT(n380), .S0(d5_57__N_1301[52]), .S1(d5_57__N_1301[53]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_54.INIT0 = 16'h5666;
    defparam add_7_54.INIT1 = 16'h5666;
    defparam add_7_54.INJECT1_0 = "NO";
    defparam add_7_54.INJECT1_1 = "NO";
    CCU2D add_7_52 (.A0(d4[50]), .B0(d5[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[51]), .B1(d5[51]), .C1(GND_net), .D1(GND_net), .CIN(n378), 
          .COUT(n379), .S0(d5_57__N_1301[50]), .S1(d5_57__N_1301[51]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_52.INIT0 = 16'h5666;
    defparam add_7_52.INIT1 = 16'h5666;
    defparam add_7_52.INJECT1_0 = "NO";
    defparam add_7_52.INJECT1_1 = "NO";
    CCU2D add_7_50 (.A0(d4[48]), .B0(d5[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[49]), .B1(d5[49]), .C1(GND_net), .D1(GND_net), .CIN(n377), 
          .COUT(n378), .S0(d5_57__N_1301[48]), .S1(d5_57__N_1301[49]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_50.INIT0 = 16'h5666;
    defparam add_7_50.INIT1 = 16'h5666;
    defparam add_7_50.INJECT1_0 = "NO";
    defparam add_7_50.INJECT1_1 = "NO";
    CCU2D add_7_48 (.A0(d4[46]), .B0(d5[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[47]), .B1(d5[47]), .C1(GND_net), .D1(GND_net), .CIN(n376), 
          .COUT(n377), .S0(d5_57__N_1301[46]), .S1(d5_57__N_1301[47]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_48.INIT0 = 16'h5666;
    defparam add_7_48.INIT1 = 16'h5666;
    defparam add_7_48.INJECT1_0 = "NO";
    defparam add_7_48.INJECT1_1 = "NO";
    CCU2D add_7_46 (.A0(d4[44]), .B0(d5[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[45]), .B1(d5[45]), .C1(GND_net), .D1(GND_net), .CIN(n375), 
          .COUT(n376), .S0(d5_57__N_1301[44]), .S1(d5_57__N_1301[45]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_46.INIT0 = 16'h5666;
    defparam add_7_46.INIT1 = 16'h5666;
    defparam add_7_46.INJECT1_0 = "NO";
    defparam add_7_46.INJECT1_1 = "NO";
    CCU2D add_7_44 (.A0(d4[42]), .B0(d5[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[43]), .B1(d5[43]), .C1(GND_net), .D1(GND_net), .CIN(n374), 
          .COUT(n375), .S0(d5_57__N_1301[42]), .S1(d5_57__N_1301[43]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_44.INIT0 = 16'h5666;
    defparam add_7_44.INIT1 = 16'h5666;
    defparam add_7_44.INJECT1_0 = "NO";
    defparam add_7_44.INJECT1_1 = "NO";
    CCU2D add_7_42 (.A0(d4[40]), .B0(d5[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[41]), .B1(d5[41]), .C1(GND_net), .D1(GND_net), .CIN(n373), 
          .COUT(n374), .S0(d5_57__N_1301[40]), .S1(d5_57__N_1301[41]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_42.INIT0 = 16'h5666;
    defparam add_7_42.INIT1 = 16'h5666;
    defparam add_7_42.INJECT1_0 = "NO";
    defparam add_7_42.INJECT1_1 = "NO";
    CCU2D add_7_40 (.A0(d4[38]), .B0(d5[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[39]), .B1(d5[39]), .C1(GND_net), .D1(GND_net), .CIN(n372), 
          .COUT(n373), .S0(d5_57__N_1301[38]), .S1(d5_57__N_1301[39]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_40.INIT0 = 16'h5666;
    defparam add_7_40.INIT1 = 16'h5666;
    defparam add_7_40.INJECT1_0 = "NO";
    defparam add_7_40.INJECT1_1 = "NO";
    CCU2D add_7_38 (.A0(d4[36]), .B0(d5[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[37]), .B1(d5[37]), .C1(GND_net), .D1(GND_net), .CIN(n371), 
          .COUT(n372), .S0(d5_57__N_1301[36]), .S1(d5_57__N_1301[37]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_38.INIT0 = 16'h5666;
    defparam add_7_38.INIT1 = 16'h5666;
    defparam add_7_38.INJECT1_0 = "NO";
    defparam add_7_38.INJECT1_1 = "NO";
    CCU2D add_7_36 (.A0(d4[34]), .B0(d5[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[35]), .B1(d5[35]), .C1(GND_net), .D1(GND_net), .CIN(n370), 
          .COUT(n371), .S0(d5_57__N_1301[34]), .S1(d5_57__N_1301[35]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_36.INIT0 = 16'h5666;
    defparam add_7_36.INIT1 = 16'h5666;
    defparam add_7_36.INJECT1_0 = "NO";
    defparam add_7_36.INJECT1_1 = "NO";
    CCU2D add_7_34 (.A0(d4[32]), .B0(d5[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[33]), .B1(d5[33]), .C1(GND_net), .D1(GND_net), .CIN(n369), 
          .COUT(n370), .S0(d5_57__N_1301[32]), .S1(d5_57__N_1301[33]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_34.INIT0 = 16'h5666;
    defparam add_7_34.INIT1 = 16'h5666;
    defparam add_7_34.INJECT1_0 = "NO";
    defparam add_7_34.INJECT1_1 = "NO";
    CCU2D add_7_32 (.A0(d4[30]), .B0(d5[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[31]), .B1(d5[31]), .C1(GND_net), .D1(GND_net), .CIN(n368), 
          .COUT(n369), .S0(d5_57__N_1301[30]), .S1(d5_57__N_1301[31]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_32.INIT0 = 16'h5666;
    defparam add_7_32.INIT1 = 16'h5666;
    defparam add_7_32.INJECT1_0 = "NO";
    defparam add_7_32.INJECT1_1 = "NO";
    CCU2D add_7_30 (.A0(d4[28]), .B0(d5[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[29]), .B1(d5[29]), .C1(GND_net), .D1(GND_net), .CIN(n367), 
          .COUT(n368), .S0(d5_57__N_1301[28]), .S1(d5_57__N_1301[29]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_30.INIT0 = 16'h5666;
    defparam add_7_30.INIT1 = 16'h5666;
    defparam add_7_30.INJECT1_0 = "NO";
    defparam add_7_30.INJECT1_1 = "NO";
    CCU2D add_7_28 (.A0(d4[26]), .B0(d5[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[27]), .B1(d5[27]), .C1(GND_net), .D1(GND_net), .CIN(n366), 
          .COUT(n367), .S0(d5_57__N_1301[26]), .S1(d5_57__N_1301[27]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_28.INIT0 = 16'h5666;
    defparam add_7_28.INIT1 = 16'h5666;
    defparam add_7_28.INJECT1_0 = "NO";
    defparam add_7_28.INJECT1_1 = "NO";
    CCU2D add_7_26 (.A0(d4[24]), .B0(d5[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[25]), .B1(d5[25]), .C1(GND_net), .D1(GND_net), .CIN(n365), 
          .COUT(n366), .S0(d5_57__N_1301[24]), .S1(d5_57__N_1301[25]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_26.INIT0 = 16'h5666;
    defparam add_7_26.INIT1 = 16'h5666;
    defparam add_7_26.INJECT1_0 = "NO";
    defparam add_7_26.INJECT1_1 = "NO";
    CCU2D add_7_24 (.A0(d4[22]), .B0(d5[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[23]), .B1(d5[23]), .C1(GND_net), .D1(GND_net), .CIN(n364), 
          .COUT(n365), .S0(d5_57__N_1301[22]), .S1(d5_57__N_1301[23]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_24.INIT0 = 16'h5666;
    defparam add_7_24.INIT1 = 16'h5666;
    defparam add_7_24.INJECT1_0 = "NO";
    defparam add_7_24.INJECT1_1 = "NO";
    CCU2D add_7_22 (.A0(d4[20]), .B0(d5[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[21]), .B1(d5[21]), .C1(GND_net), .D1(GND_net), .CIN(n363), 
          .COUT(n364), .S0(d5_57__N_1301[20]), .S1(d5_57__N_1301[21]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_22.INIT0 = 16'h5666;
    defparam add_7_22.INIT1 = 16'h5666;
    defparam add_7_22.INJECT1_0 = "NO";
    defparam add_7_22.INJECT1_1 = "NO";
    CCU2D add_7_20 (.A0(d4[18]), .B0(d5[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[19]), .B1(d5[19]), .C1(GND_net), .D1(GND_net), .CIN(n362), 
          .COUT(n363), .S0(d5_57__N_1301[18]), .S1(d5_57__N_1301[19]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_20.INIT0 = 16'h5666;
    defparam add_7_20.INIT1 = 16'h5666;
    defparam add_7_20.INJECT1_0 = "NO";
    defparam add_7_20.INJECT1_1 = "NO";
    CCU2D add_7_18 (.A0(d4[16]), .B0(d5[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[17]), .B1(d5[17]), .C1(GND_net), .D1(GND_net), .CIN(n361), 
          .COUT(n362), .S0(d5_57__N_1301[16]), .S1(d5_57__N_1301[17]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_18.INIT0 = 16'h5666;
    defparam add_7_18.INIT1 = 16'h5666;
    defparam add_7_18.INJECT1_0 = "NO";
    defparam add_7_18.INJECT1_1 = "NO";
    CCU2D add_7_16 (.A0(d4[14]), .B0(d5[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[15]), .B1(d5[15]), .C1(GND_net), .D1(GND_net), .CIN(n360), 
          .COUT(n361), .S0(d5_57__N_1301[14]), .S1(d5_57__N_1301[15]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_16.INIT0 = 16'h5666;
    defparam add_7_16.INIT1 = 16'h5666;
    defparam add_7_16.INJECT1_0 = "NO";
    defparam add_7_16.INJECT1_1 = "NO";
    CCU2D add_7_14 (.A0(d4[12]), .B0(d5[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[13]), .B1(d5[13]), .C1(GND_net), .D1(GND_net), .CIN(n359), 
          .COUT(n360), .S0(d5_57__N_1301[12]), .S1(d5_57__N_1301[13]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_14.INIT0 = 16'h5666;
    defparam add_7_14.INIT1 = 16'h5666;
    defparam add_7_14.INJECT1_0 = "NO";
    defparam add_7_14.INJECT1_1 = "NO";
    CCU2D add_7_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n358), 
          .COUT(n359), .S0(d5_57__N_1301[10]), .S1(d5_57__N_1301[11]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_12.INIT0 = 16'h5666;
    defparam add_7_12.INIT1 = 16'h5666;
    defparam add_7_12.INJECT1_0 = "NO";
    defparam add_7_12.INJECT1_1 = "NO";
    CCU2D add_7_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n357), 
          .COUT(n358), .S0(d5_57__N_1301[8]), .S1(d5_57__N_1301[9]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_10.INIT0 = 16'h5666;
    defparam add_7_10.INIT1 = 16'h5666;
    defparam add_7_10.INJECT1_0 = "NO";
    defparam add_7_10.INJECT1_1 = "NO";
    CCU2D add_7_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n356), 
          .COUT(n357), .S0(d5_57__N_1301[6]), .S1(d5_57__N_1301[7]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_8.INIT0 = 16'h5666;
    defparam add_7_8.INIT1 = 16'h5666;
    defparam add_7_8.INJECT1_0 = "NO";
    defparam add_7_8.INJECT1_1 = "NO";
    CCU2D add_7_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n355), 
          .COUT(n356), .S0(d5_57__N_1301[4]), .S1(d5_57__N_1301[5]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_6.INIT0 = 16'h5666;
    defparam add_7_6.INIT1 = 16'h5666;
    defparam add_7_6.INJECT1_0 = "NO";
    defparam add_7_6.INJECT1_1 = "NO";
    CCU2D add_7_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n354), 
          .COUT(n355), .S0(d5_57__N_1301[2]), .S1(d5_57__N_1301[3]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_4.INIT0 = 16'h5666;
    defparam add_7_4.INIT1 = 16'h5666;
    defparam add_7_4.INJECT1_0 = "NO";
    defparam add_7_4.INJECT1_1 = "NO";
    CCU2D add_7_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n354), 
          .S1(d5_57__N_1301[1]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_2.INIT0 = 16'h7000;
    defparam add_7_2.INIT1 = 16'h5666;
    defparam add_7_2.INJECT1_0 = "NO";
    defparam add_7_2.INJECT1_1 = "NO";
    CCU2D add_6_58 (.A0(d3[56]), .B0(d4[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[57]), .B1(d4[57]), .C1(GND_net), .D1(GND_net), .CIN(n351), 
          .S0(d4_57__N_1243[56]), .S1(d4_57__N_1243[57]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_58.INIT0 = 16'h5666;
    defparam add_6_58.INIT1 = 16'h5666;
    defparam add_6_58.INJECT1_0 = "NO";
    defparam add_6_58.INJECT1_1 = "NO";
    CCU2D add_6_56 (.A0(d3[54]), .B0(d4[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[55]), .B1(d4[55]), .C1(GND_net), .D1(GND_net), .CIN(n350), 
          .COUT(n351), .S0(d4_57__N_1243[54]), .S1(d4_57__N_1243[55]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_56.INIT0 = 16'h5666;
    defparam add_6_56.INIT1 = 16'h5666;
    defparam add_6_56.INJECT1_0 = "NO";
    defparam add_6_56.INJECT1_1 = "NO";
    CCU2D add_6_54 (.A0(d3[52]), .B0(d4[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[53]), .B1(d4[53]), .C1(GND_net), .D1(GND_net), .CIN(n349), 
          .COUT(n350), .S0(d4_57__N_1243[52]), .S1(d4_57__N_1243[53]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_54.INIT0 = 16'h5666;
    defparam add_6_54.INIT1 = 16'h5666;
    defparam add_6_54.INJECT1_0 = "NO";
    defparam add_6_54.INJECT1_1 = "NO";
    CCU2D add_6_52 (.A0(d3[50]), .B0(d4[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[51]), .B1(d4[51]), .C1(GND_net), .D1(GND_net), .CIN(n348), 
          .COUT(n349), .S0(d4_57__N_1243[50]), .S1(d4_57__N_1243[51]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_52.INIT0 = 16'h5666;
    defparam add_6_52.INIT1 = 16'h5666;
    defparam add_6_52.INJECT1_0 = "NO";
    defparam add_6_52.INJECT1_1 = "NO";
    CCU2D add_6_50 (.A0(d3[48]), .B0(d4[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[49]), .B1(d4[49]), .C1(GND_net), .D1(GND_net), .CIN(n347), 
          .COUT(n348), .S0(d4_57__N_1243[48]), .S1(d4_57__N_1243[49]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_50.INIT0 = 16'h5666;
    defparam add_6_50.INIT1 = 16'h5666;
    defparam add_6_50.INJECT1_0 = "NO";
    defparam add_6_50.INJECT1_1 = "NO";
    CCU2D add_6_48 (.A0(d3[46]), .B0(d4[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[47]), .B1(d4[47]), .C1(GND_net), .D1(GND_net), .CIN(n346), 
          .COUT(n347), .S0(d4_57__N_1243[46]), .S1(d4_57__N_1243[47]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_48.INIT0 = 16'h5666;
    defparam add_6_48.INIT1 = 16'h5666;
    defparam add_6_48.INJECT1_0 = "NO";
    defparam add_6_48.INJECT1_1 = "NO";
    CCU2D add_6_46 (.A0(d3[44]), .B0(d4[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[45]), .B1(d4[45]), .C1(GND_net), .D1(GND_net), .CIN(n345), 
          .COUT(n346), .S0(d4_57__N_1243[44]), .S1(d4_57__N_1243[45]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_46.INIT0 = 16'h5666;
    defparam add_6_46.INIT1 = 16'h5666;
    defparam add_6_46.INJECT1_0 = "NO";
    defparam add_6_46.INJECT1_1 = "NO";
    CCU2D add_6_44 (.A0(d3[42]), .B0(d4[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[43]), .B1(d4[43]), .C1(GND_net), .D1(GND_net), .CIN(n344), 
          .COUT(n345), .S0(d4_57__N_1243[42]), .S1(d4_57__N_1243[43]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_44.INIT0 = 16'h5666;
    defparam add_6_44.INIT1 = 16'h5666;
    defparam add_6_44.INJECT1_0 = "NO";
    defparam add_6_44.INJECT1_1 = "NO";
    CCU2D add_6_42 (.A0(d3[40]), .B0(d4[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[41]), .B1(d4[41]), .C1(GND_net), .D1(GND_net), .CIN(n343), 
          .COUT(n344), .S0(d4_57__N_1243[40]), .S1(d4_57__N_1243[41]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_42.INIT0 = 16'h5666;
    defparam add_6_42.INIT1 = 16'h5666;
    defparam add_6_42.INJECT1_0 = "NO";
    defparam add_6_42.INJECT1_1 = "NO";
    CCU2D add_6_40 (.A0(d3[38]), .B0(d4[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[39]), .B1(d4[39]), .C1(GND_net), .D1(GND_net), .CIN(n342), 
          .COUT(n343), .S0(d4_57__N_1243[38]), .S1(d4_57__N_1243[39]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_40.INIT0 = 16'h5666;
    defparam add_6_40.INIT1 = 16'h5666;
    defparam add_6_40.INJECT1_0 = "NO";
    defparam add_6_40.INJECT1_1 = "NO";
    CCU2D add_6_38 (.A0(d3[36]), .B0(d4[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[37]), .B1(d4[37]), .C1(GND_net), .D1(GND_net), .CIN(n341), 
          .COUT(n342), .S0(d4_57__N_1243[36]), .S1(d4_57__N_1243[37]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_38.INIT0 = 16'h5666;
    defparam add_6_38.INIT1 = 16'h5666;
    defparam add_6_38.INJECT1_0 = "NO";
    defparam add_6_38.INJECT1_1 = "NO";
    CCU2D add_6_36 (.A0(d3[34]), .B0(d4[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[35]), .B1(d4[35]), .C1(GND_net), .D1(GND_net), .CIN(n340), 
          .COUT(n341), .S0(d4_57__N_1243[34]), .S1(d4_57__N_1243[35]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_36.INIT0 = 16'h5666;
    defparam add_6_36.INIT1 = 16'h5666;
    defparam add_6_36.INJECT1_0 = "NO";
    defparam add_6_36.INJECT1_1 = "NO";
    CCU2D add_6_34 (.A0(d3[32]), .B0(d4[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[33]), .B1(d4[33]), .C1(GND_net), .D1(GND_net), .CIN(n339), 
          .COUT(n340), .S0(d4_57__N_1243[32]), .S1(d4_57__N_1243[33]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_34.INIT0 = 16'h5666;
    defparam add_6_34.INIT1 = 16'h5666;
    defparam add_6_34.INJECT1_0 = "NO";
    defparam add_6_34.INJECT1_1 = "NO";
    CCU2D add_6_32 (.A0(d3[30]), .B0(d4[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[31]), .B1(d4[31]), .C1(GND_net), .D1(GND_net), .CIN(n338), 
          .COUT(n339), .S0(d4_57__N_1243[30]), .S1(d4_57__N_1243[31]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_32.INIT0 = 16'h5666;
    defparam add_6_32.INIT1 = 16'h5666;
    defparam add_6_32.INJECT1_0 = "NO";
    defparam add_6_32.INJECT1_1 = "NO";
    CCU2D add_6_30 (.A0(d3[28]), .B0(d4[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[29]), .B1(d4[29]), .C1(GND_net), .D1(GND_net), .CIN(n337), 
          .COUT(n338), .S0(d4_57__N_1243[28]), .S1(d4_57__N_1243[29]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_30.INIT0 = 16'h5666;
    defparam add_6_30.INIT1 = 16'h5666;
    defparam add_6_30.INJECT1_0 = "NO";
    defparam add_6_30.INJECT1_1 = "NO";
    CCU2D add_6_28 (.A0(d3[26]), .B0(d4[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[27]), .B1(d4[27]), .C1(GND_net), .D1(GND_net), .CIN(n336), 
          .COUT(n337), .S0(d4_57__N_1243[26]), .S1(d4_57__N_1243[27]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_28.INIT0 = 16'h5666;
    defparam add_6_28.INIT1 = 16'h5666;
    defparam add_6_28.INJECT1_0 = "NO";
    defparam add_6_28.INJECT1_1 = "NO";
    CCU2D add_6_26 (.A0(d3[24]), .B0(d4[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[25]), .B1(d4[25]), .C1(GND_net), .D1(GND_net), .CIN(n335), 
          .COUT(n336), .S0(d4_57__N_1243[24]), .S1(d4_57__N_1243[25]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_26.INIT0 = 16'h5666;
    defparam add_6_26.INIT1 = 16'h5666;
    defparam add_6_26.INJECT1_0 = "NO";
    defparam add_6_26.INJECT1_1 = "NO";
    CCU2D add_6_24 (.A0(d3[22]), .B0(d4[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[23]), .B1(d4[23]), .C1(GND_net), .D1(GND_net), .CIN(n334), 
          .COUT(n335), .S0(d4_57__N_1243[22]), .S1(d4_57__N_1243[23]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_24.INIT0 = 16'h5666;
    defparam add_6_24.INIT1 = 16'h5666;
    defparam add_6_24.INJECT1_0 = "NO";
    defparam add_6_24.INJECT1_1 = "NO";
    CCU2D add_6_22 (.A0(d3[20]), .B0(d4[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[21]), .B1(d4[21]), .C1(GND_net), .D1(GND_net), .CIN(n333), 
          .COUT(n334), .S0(d4_57__N_1243[20]), .S1(d4_57__N_1243[21]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_22.INIT0 = 16'h5666;
    defparam add_6_22.INIT1 = 16'h5666;
    defparam add_6_22.INJECT1_0 = "NO";
    defparam add_6_22.INJECT1_1 = "NO";
    CCU2D add_6_20 (.A0(d3[18]), .B0(d4[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[19]), .B1(d4[19]), .C1(GND_net), .D1(GND_net), .CIN(n332), 
          .COUT(n333), .S0(d4_57__N_1243[18]), .S1(d4_57__N_1243[19]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_20.INIT0 = 16'h5666;
    defparam add_6_20.INIT1 = 16'h5666;
    defparam add_6_20.INJECT1_0 = "NO";
    defparam add_6_20.INJECT1_1 = "NO";
    CCU2D add_6_18 (.A0(d3[16]), .B0(d4[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[17]), .B1(d4[17]), .C1(GND_net), .D1(GND_net), .CIN(n331), 
          .COUT(n332), .S0(d4_57__N_1243[16]), .S1(d4_57__N_1243[17]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_18.INIT0 = 16'h5666;
    defparam add_6_18.INIT1 = 16'h5666;
    defparam add_6_18.INJECT1_0 = "NO";
    defparam add_6_18.INJECT1_1 = "NO";
    CCU2D add_6_16 (.A0(d3[14]), .B0(d4[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[15]), .B1(d4[15]), .C1(GND_net), .D1(GND_net), .CIN(n330), 
          .COUT(n331), .S0(d4_57__N_1243[14]), .S1(d4_57__N_1243[15]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_16.INIT0 = 16'h5666;
    defparam add_6_16.INIT1 = 16'h5666;
    defparam add_6_16.INJECT1_0 = "NO";
    defparam add_6_16.INJECT1_1 = "NO";
    CCU2D add_6_14 (.A0(d3[12]), .B0(d4[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[13]), .B1(d4[13]), .C1(GND_net), .D1(GND_net), .CIN(n329), 
          .COUT(n330), .S0(d4_57__N_1243[12]), .S1(d4_57__N_1243[13]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_14.INIT0 = 16'h5666;
    defparam add_6_14.INIT1 = 16'h5666;
    defparam add_6_14.INJECT1_0 = "NO";
    defparam add_6_14.INJECT1_1 = "NO";
    CCU2D add_6_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n328), 
          .COUT(n329), .S0(d4_57__N_1243[10]), .S1(d4_57__N_1243[11]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_12.INIT0 = 16'h5666;
    defparam add_6_12.INIT1 = 16'h5666;
    defparam add_6_12.INJECT1_0 = "NO";
    defparam add_6_12.INJECT1_1 = "NO";
    CCU2D add_6_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n327), 
          .COUT(n328), .S0(d4_57__N_1243[8]), .S1(d4_57__N_1243[9]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_10.INIT0 = 16'h5666;
    defparam add_6_10.INIT1 = 16'h5666;
    defparam add_6_10.INJECT1_0 = "NO";
    defparam add_6_10.INJECT1_1 = "NO";
    CCU2D add_6_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n326), 
          .COUT(n327), .S0(d4_57__N_1243[6]), .S1(d4_57__N_1243[7]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_8.INIT0 = 16'h5666;
    defparam add_6_8.INIT1 = 16'h5666;
    defparam add_6_8.INJECT1_0 = "NO";
    defparam add_6_8.INJECT1_1 = "NO";
    CCU2D add_6_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n325), 
          .COUT(n326), .S0(d4_57__N_1243[4]), .S1(d4_57__N_1243[5]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_6.INIT0 = 16'h5666;
    defparam add_6_6.INIT1 = 16'h5666;
    defparam add_6_6.INJECT1_0 = "NO";
    defparam add_6_6.INJECT1_1 = "NO";
    CCU2D add_6_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n324), 
          .COUT(n325), .S0(d4_57__N_1243[2]), .S1(d4_57__N_1243[3]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_4.INIT0 = 16'h5666;
    defparam add_6_4.INIT1 = 16'h5666;
    defparam add_6_4.INJECT1_0 = "NO";
    defparam add_6_4.INJECT1_1 = "NO";
    CCU2D add_6_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n324), 
          .S1(d4_57__N_1243[1]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_2.INIT0 = 16'h7000;
    defparam add_6_2.INIT1 = 16'h5666;
    defparam add_6_2.INJECT1_0 = "NO";
    defparam add_6_2.INJECT1_1 = "NO";
    CCU2D add_5_58 (.A0(d2[56]), .B0(d3[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[57]), .B1(d3[57]), .C1(GND_net), .D1(GND_net), .CIN(n321), 
          .S0(d3_57__N_1185[56]), .S1(d3_57__N_1185[57]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_58.INIT0 = 16'h5666;
    defparam add_5_58.INIT1 = 16'h5666;
    defparam add_5_58.INJECT1_0 = "NO";
    defparam add_5_58.INJECT1_1 = "NO";
    CCU2D add_5_56 (.A0(d2[54]), .B0(d3[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[55]), .B1(d3[55]), .C1(GND_net), .D1(GND_net), .CIN(n320), 
          .COUT(n321), .S0(d3_57__N_1185[54]), .S1(d3_57__N_1185[55]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_56.INIT0 = 16'h5666;
    defparam add_5_56.INIT1 = 16'h5666;
    defparam add_5_56.INJECT1_0 = "NO";
    defparam add_5_56.INJECT1_1 = "NO";
    CCU2D add_5_54 (.A0(d2[52]), .B0(d3[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[53]), .B1(d3[53]), .C1(GND_net), .D1(GND_net), .CIN(n319), 
          .COUT(n320), .S0(d3_57__N_1185[52]), .S1(d3_57__N_1185[53]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_54.INIT0 = 16'h5666;
    defparam add_5_54.INIT1 = 16'h5666;
    defparam add_5_54.INJECT1_0 = "NO";
    defparam add_5_54.INJECT1_1 = "NO";
    CCU2D add_5_52 (.A0(d2[50]), .B0(d3[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[51]), .B1(d3[51]), .C1(GND_net), .D1(GND_net), .CIN(n318), 
          .COUT(n319), .S0(d3_57__N_1185[50]), .S1(d3_57__N_1185[51]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_52.INIT0 = 16'h5666;
    defparam add_5_52.INIT1 = 16'h5666;
    defparam add_5_52.INJECT1_0 = "NO";
    defparam add_5_52.INJECT1_1 = "NO";
    CCU2D add_5_50 (.A0(d2[48]), .B0(d3[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[49]), .B1(d3[49]), .C1(GND_net), .D1(GND_net), .CIN(n317), 
          .COUT(n318), .S0(d3_57__N_1185[48]), .S1(d3_57__N_1185[49]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_50.INIT0 = 16'h5666;
    defparam add_5_50.INIT1 = 16'h5666;
    defparam add_5_50.INJECT1_0 = "NO";
    defparam add_5_50.INJECT1_1 = "NO";
    CCU2D add_5_48 (.A0(d2[46]), .B0(d3[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[47]), .B1(d3[47]), .C1(GND_net), .D1(GND_net), .CIN(n316), 
          .COUT(n317), .S0(d3_57__N_1185[46]), .S1(d3_57__N_1185[47]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_48.INIT0 = 16'h5666;
    defparam add_5_48.INIT1 = 16'h5666;
    defparam add_5_48.INJECT1_0 = "NO";
    defparam add_5_48.INJECT1_1 = "NO";
    CCU2D add_5_46 (.A0(d2[44]), .B0(d3[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[45]), .B1(d3[45]), .C1(GND_net), .D1(GND_net), .CIN(n315), 
          .COUT(n316), .S0(d3_57__N_1185[44]), .S1(d3_57__N_1185[45]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_46.INIT0 = 16'h5666;
    defparam add_5_46.INIT1 = 16'h5666;
    defparam add_5_46.INJECT1_0 = "NO";
    defparam add_5_46.INJECT1_1 = "NO";
    CCU2D add_5_44 (.A0(d2[42]), .B0(d3[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[43]), .B1(d3[43]), .C1(GND_net), .D1(GND_net), .CIN(n314), 
          .COUT(n315), .S0(d3_57__N_1185[42]), .S1(d3_57__N_1185[43]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_44.INIT0 = 16'h5666;
    defparam add_5_44.INIT1 = 16'h5666;
    defparam add_5_44.INJECT1_0 = "NO";
    defparam add_5_44.INJECT1_1 = "NO";
    CCU2D add_5_42 (.A0(d2[40]), .B0(d3[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[41]), .B1(d3[41]), .C1(GND_net), .D1(GND_net), .CIN(n313), 
          .COUT(n314), .S0(d3_57__N_1185[40]), .S1(d3_57__N_1185[41]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_42.INIT0 = 16'h5666;
    defparam add_5_42.INIT1 = 16'h5666;
    defparam add_5_42.INJECT1_0 = "NO";
    defparam add_5_42.INJECT1_1 = "NO";
    CCU2D add_5_40 (.A0(d2[38]), .B0(d3[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[39]), .B1(d3[39]), .C1(GND_net), .D1(GND_net), .CIN(n312), 
          .COUT(n313), .S0(d3_57__N_1185[38]), .S1(d3_57__N_1185[39]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_40.INIT0 = 16'h5666;
    defparam add_5_40.INIT1 = 16'h5666;
    defparam add_5_40.INJECT1_0 = "NO";
    defparam add_5_40.INJECT1_1 = "NO";
    CCU2D add_5_38 (.A0(d2[36]), .B0(d3[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[37]), .B1(d3[37]), .C1(GND_net), .D1(GND_net), .CIN(n311), 
          .COUT(n312), .S0(d3_57__N_1185[36]), .S1(d3_57__N_1185[37]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_38.INIT0 = 16'h5666;
    defparam add_5_38.INIT1 = 16'h5666;
    defparam add_5_38.INJECT1_0 = "NO";
    defparam add_5_38.INJECT1_1 = "NO";
    CCU2D add_5_36 (.A0(d2[34]), .B0(d3[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[35]), .B1(d3[35]), .C1(GND_net), .D1(GND_net), .CIN(n310), 
          .COUT(n311), .S0(d3_57__N_1185[34]), .S1(d3_57__N_1185[35]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_36.INIT0 = 16'h5666;
    defparam add_5_36.INIT1 = 16'h5666;
    defparam add_5_36.INJECT1_0 = "NO";
    defparam add_5_36.INJECT1_1 = "NO";
    CCU2D add_5_34 (.A0(d2[32]), .B0(d3[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[33]), .B1(d3[33]), .C1(GND_net), .D1(GND_net), .CIN(n309), 
          .COUT(n310), .S0(d3_57__N_1185[32]), .S1(d3_57__N_1185[33]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_34.INIT0 = 16'h5666;
    defparam add_5_34.INIT1 = 16'h5666;
    defparam add_5_34.INJECT1_0 = "NO";
    defparam add_5_34.INJECT1_1 = "NO";
    CCU2D add_5_32 (.A0(d2[30]), .B0(d3[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[31]), .B1(d3[31]), .C1(GND_net), .D1(GND_net), .CIN(n308), 
          .COUT(n309), .S0(d3_57__N_1185[30]), .S1(d3_57__N_1185[31]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_32.INIT0 = 16'h5666;
    defparam add_5_32.INIT1 = 16'h5666;
    defparam add_5_32.INJECT1_0 = "NO";
    defparam add_5_32.INJECT1_1 = "NO";
    CCU2D add_5_30 (.A0(d2[28]), .B0(d3[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[29]), .B1(d3[29]), .C1(GND_net), .D1(GND_net), .CIN(n307), 
          .COUT(n308), .S0(d3_57__N_1185[28]), .S1(d3_57__N_1185[29]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_30.INIT0 = 16'h5666;
    defparam add_5_30.INIT1 = 16'h5666;
    defparam add_5_30.INJECT1_0 = "NO";
    defparam add_5_30.INJECT1_1 = "NO";
    CCU2D add_5_28 (.A0(d2[26]), .B0(d3[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[27]), .B1(d3[27]), .C1(GND_net), .D1(GND_net), .CIN(n306), 
          .COUT(n307), .S0(d3_57__N_1185[26]), .S1(d3_57__N_1185[27]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_28.INIT0 = 16'h5666;
    defparam add_5_28.INIT1 = 16'h5666;
    defparam add_5_28.INJECT1_0 = "NO";
    defparam add_5_28.INJECT1_1 = "NO";
    CCU2D add_5_26 (.A0(d2[24]), .B0(d3[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[25]), .B1(d3[25]), .C1(GND_net), .D1(GND_net), .CIN(n305), 
          .COUT(n306), .S0(d3_57__N_1185[24]), .S1(d3_57__N_1185[25]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_26.INIT0 = 16'h5666;
    defparam add_5_26.INIT1 = 16'h5666;
    defparam add_5_26.INJECT1_0 = "NO";
    defparam add_5_26.INJECT1_1 = "NO";
    CCU2D add_5_24 (.A0(d2[22]), .B0(d3[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[23]), .B1(d3[23]), .C1(GND_net), .D1(GND_net), .CIN(n304), 
          .COUT(n305), .S0(d3_57__N_1185[22]), .S1(d3_57__N_1185[23]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_24.INIT0 = 16'h5666;
    defparam add_5_24.INIT1 = 16'h5666;
    defparam add_5_24.INJECT1_0 = "NO";
    defparam add_5_24.INJECT1_1 = "NO";
    CCU2D add_5_22 (.A0(d2[20]), .B0(d3[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[21]), .B1(d3[21]), .C1(GND_net), .D1(GND_net), .CIN(n303), 
          .COUT(n304), .S0(d3_57__N_1185[20]), .S1(d3_57__N_1185[21]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_22.INIT0 = 16'h5666;
    defparam add_5_22.INIT1 = 16'h5666;
    defparam add_5_22.INJECT1_0 = "NO";
    defparam add_5_22.INJECT1_1 = "NO";
    CCU2D add_5_20 (.A0(d2[18]), .B0(d3[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[19]), .B1(d3[19]), .C1(GND_net), .D1(GND_net), .CIN(n302), 
          .COUT(n303), .S0(d3_57__N_1185[18]), .S1(d3_57__N_1185[19]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_20.INIT0 = 16'h5666;
    defparam add_5_20.INIT1 = 16'h5666;
    defparam add_5_20.INJECT1_0 = "NO";
    defparam add_5_20.INJECT1_1 = "NO";
    CCU2D add_5_18 (.A0(d2[16]), .B0(d3[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[17]), .B1(d3[17]), .C1(GND_net), .D1(GND_net), .CIN(n301), 
          .COUT(n302), .S0(d3_57__N_1185[16]), .S1(d3_57__N_1185[17]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_18.INIT0 = 16'h5666;
    defparam add_5_18.INIT1 = 16'h5666;
    defparam add_5_18.INJECT1_0 = "NO";
    defparam add_5_18.INJECT1_1 = "NO";
    CCU2D add_5_16 (.A0(d2[14]), .B0(d3[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[15]), .B1(d3[15]), .C1(GND_net), .D1(GND_net), .CIN(n300), 
          .COUT(n301), .S0(d3_57__N_1185[14]), .S1(d3_57__N_1185[15]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_16.INIT0 = 16'h5666;
    defparam add_5_16.INIT1 = 16'h5666;
    defparam add_5_16.INJECT1_0 = "NO";
    defparam add_5_16.INJECT1_1 = "NO";
    CCU2D add_5_14 (.A0(d2[12]), .B0(d3[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[13]), .B1(d3[13]), .C1(GND_net), .D1(GND_net), .CIN(n299), 
          .COUT(n300), .S0(d3_57__N_1185[12]), .S1(d3_57__N_1185[13]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_14.INIT0 = 16'h5666;
    defparam add_5_14.INIT1 = 16'h5666;
    defparam add_5_14.INJECT1_0 = "NO";
    defparam add_5_14.INJECT1_1 = "NO";
    CCU2D add_5_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n298), 
          .COUT(n299), .S0(d3_57__N_1185[10]), .S1(d3_57__N_1185[11]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_12.INIT0 = 16'h5666;
    defparam add_5_12.INIT1 = 16'h5666;
    defparam add_5_12.INJECT1_0 = "NO";
    defparam add_5_12.INJECT1_1 = "NO";
    CCU2D add_5_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n297), 
          .COUT(n298), .S0(d3_57__N_1185[8]), .S1(d3_57__N_1185[9]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_10.INIT0 = 16'h5666;
    defparam add_5_10.INIT1 = 16'h5666;
    defparam add_5_10.INJECT1_0 = "NO";
    defparam add_5_10.INJECT1_1 = "NO";
    CCU2D add_5_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n296), 
          .COUT(n297), .S0(d3_57__N_1185[6]), .S1(d3_57__N_1185[7]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_8.INIT0 = 16'h5666;
    defparam add_5_8.INIT1 = 16'h5666;
    defparam add_5_8.INJECT1_0 = "NO";
    defparam add_5_8.INJECT1_1 = "NO";
    CCU2D add_5_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n295), 
          .COUT(n296), .S0(d3_57__N_1185[4]), .S1(d3_57__N_1185[5]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_6.INIT0 = 16'h5666;
    defparam add_5_6.INIT1 = 16'h5666;
    defparam add_5_6.INJECT1_0 = "NO";
    defparam add_5_6.INJECT1_1 = "NO";
    CCU2D add_5_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n294), 
          .COUT(n295), .S0(d3_57__N_1185[2]), .S1(d3_57__N_1185[3]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_4.INIT0 = 16'h5666;
    defparam add_5_4.INIT1 = 16'h5666;
    defparam add_5_4.INJECT1_0 = "NO";
    defparam add_5_4.INJECT1_1 = "NO";
    CCU2D add_5_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n294), 
          .S1(d3_57__N_1185[1]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_2.INIT0 = 16'h7000;
    defparam add_5_2.INIT1 = 16'h5666;
    defparam add_5_2.INJECT1_0 = "NO";
    defparam add_5_2.INJECT1_1 = "NO";
    CCU2D add_4_58 (.A0(d1[56]), .B0(d2[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[57]), .B1(d2[57]), .C1(GND_net), .D1(GND_net), .CIN(n291), 
          .S0(d2_57__N_1127[56]), .S1(d2_57__N_1127[57]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_58.INIT0 = 16'h5666;
    defparam add_4_58.INIT1 = 16'h5666;
    defparam add_4_58.INJECT1_0 = "NO";
    defparam add_4_58.INJECT1_1 = "NO";
    CCU2D add_4_56 (.A0(d1[54]), .B0(d2[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[55]), .B1(d2[55]), .C1(GND_net), .D1(GND_net), .CIN(n290), 
          .COUT(n291), .S0(d2_57__N_1127[54]), .S1(d2_57__N_1127[55]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_56.INIT0 = 16'h5666;
    defparam add_4_56.INIT1 = 16'h5666;
    defparam add_4_56.INJECT1_0 = "NO";
    defparam add_4_56.INJECT1_1 = "NO";
    CCU2D add_4_54 (.A0(d1[52]), .B0(d2[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[53]), .B1(d2[53]), .C1(GND_net), .D1(GND_net), .CIN(n289), 
          .COUT(n290), .S0(d2_57__N_1127[52]), .S1(d2_57__N_1127[53]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_54.INIT0 = 16'h5666;
    defparam add_4_54.INIT1 = 16'h5666;
    defparam add_4_54.INJECT1_0 = "NO";
    defparam add_4_54.INJECT1_1 = "NO";
    CCU2D add_4_52 (.A0(d1[50]), .B0(d2[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[51]), .B1(d2[51]), .C1(GND_net), .D1(GND_net), .CIN(n288), 
          .COUT(n289), .S0(d2_57__N_1127[50]), .S1(d2_57__N_1127[51]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_52.INIT0 = 16'h5666;
    defparam add_4_52.INIT1 = 16'h5666;
    defparam add_4_52.INJECT1_0 = "NO";
    defparam add_4_52.INJECT1_1 = "NO";
    CCU2D add_4_50 (.A0(d1[48]), .B0(d2[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[49]), .B1(d2[49]), .C1(GND_net), .D1(GND_net), .CIN(n287), 
          .COUT(n288), .S0(d2_57__N_1127[48]), .S1(d2_57__N_1127[49]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_50.INIT0 = 16'h5666;
    defparam add_4_50.INIT1 = 16'h5666;
    defparam add_4_50.INJECT1_0 = "NO";
    defparam add_4_50.INJECT1_1 = "NO";
    CCU2D add_4_48 (.A0(d1[46]), .B0(d2[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[47]), .B1(d2[47]), .C1(GND_net), .D1(GND_net), .CIN(n286), 
          .COUT(n287), .S0(d2_57__N_1127[46]), .S1(d2_57__N_1127[47]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_48.INIT0 = 16'h5666;
    defparam add_4_48.INIT1 = 16'h5666;
    defparam add_4_48.INJECT1_0 = "NO";
    defparam add_4_48.INJECT1_1 = "NO";
    CCU2D add_4_46 (.A0(d1[44]), .B0(d2[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[45]), .B1(d2[45]), .C1(GND_net), .D1(GND_net), .CIN(n285), 
          .COUT(n286), .S0(d2_57__N_1127[44]), .S1(d2_57__N_1127[45]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_46.INIT0 = 16'h5666;
    defparam add_4_46.INIT1 = 16'h5666;
    defparam add_4_46.INJECT1_0 = "NO";
    defparam add_4_46.INJECT1_1 = "NO";
    CCU2D add_4_44 (.A0(d1[42]), .B0(d2[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[43]), .B1(d2[43]), .C1(GND_net), .D1(GND_net), .CIN(n284), 
          .COUT(n285), .S0(d2_57__N_1127[42]), .S1(d2_57__N_1127[43]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_44.INIT0 = 16'h5666;
    defparam add_4_44.INIT1 = 16'h5666;
    defparam add_4_44.INJECT1_0 = "NO";
    defparam add_4_44.INJECT1_1 = "NO";
    CCU2D add_4_42 (.A0(d1[40]), .B0(d2[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[41]), .B1(d2[41]), .C1(GND_net), .D1(GND_net), .CIN(n283), 
          .COUT(n284), .S0(d2_57__N_1127[40]), .S1(d2_57__N_1127[41]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_42.INIT0 = 16'h5666;
    defparam add_4_42.INIT1 = 16'h5666;
    defparam add_4_42.INJECT1_0 = "NO";
    defparam add_4_42.INJECT1_1 = "NO";
    CCU2D add_4_40 (.A0(d1[38]), .B0(d2[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[39]), .B1(d2[39]), .C1(GND_net), .D1(GND_net), .CIN(n282), 
          .COUT(n283), .S0(d2_57__N_1127[38]), .S1(d2_57__N_1127[39]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_40.INIT0 = 16'h5666;
    defparam add_4_40.INIT1 = 16'h5666;
    defparam add_4_40.INJECT1_0 = "NO";
    defparam add_4_40.INJECT1_1 = "NO";
    CCU2D add_4_38 (.A0(d1[36]), .B0(d2[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[37]), .B1(d2[37]), .C1(GND_net), .D1(GND_net), .CIN(n281), 
          .COUT(n282), .S0(d2_57__N_1127[36]), .S1(d2_57__N_1127[37]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_38.INIT0 = 16'h5666;
    defparam add_4_38.INIT1 = 16'h5666;
    defparam add_4_38.INJECT1_0 = "NO";
    defparam add_4_38.INJECT1_1 = "NO";
    CCU2D add_4_36 (.A0(d1[34]), .B0(d2[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[35]), .B1(d2[35]), .C1(GND_net), .D1(GND_net), .CIN(n280), 
          .COUT(n281), .S0(d2_57__N_1127[34]), .S1(d2_57__N_1127[35]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_36.INIT0 = 16'h5666;
    defparam add_4_36.INIT1 = 16'h5666;
    defparam add_4_36.INJECT1_0 = "NO";
    defparam add_4_36.INJECT1_1 = "NO";
    CCU2D add_4_34 (.A0(d1[32]), .B0(d2[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[33]), .B1(d2[33]), .C1(GND_net), .D1(GND_net), .CIN(n279), 
          .COUT(n280), .S0(d2_57__N_1127[32]), .S1(d2_57__N_1127[33]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_34.INIT0 = 16'h5666;
    defparam add_4_34.INIT1 = 16'h5666;
    defparam add_4_34.INJECT1_0 = "NO";
    defparam add_4_34.INJECT1_1 = "NO";
    CCU2D add_4_32 (.A0(d1[30]), .B0(d2[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[31]), .B1(d2[31]), .C1(GND_net), .D1(GND_net), .CIN(n278), 
          .COUT(n279), .S0(d2_57__N_1127[30]), .S1(d2_57__N_1127[31]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_32.INIT0 = 16'h5666;
    defparam add_4_32.INIT1 = 16'h5666;
    defparam add_4_32.INJECT1_0 = "NO";
    defparam add_4_32.INJECT1_1 = "NO";
    CCU2D add_4_30 (.A0(d1[28]), .B0(d2[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[29]), .B1(d2[29]), .C1(GND_net), .D1(GND_net), .CIN(n277), 
          .COUT(n278), .S0(d2_57__N_1127[28]), .S1(d2_57__N_1127[29]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_30.INIT0 = 16'h5666;
    defparam add_4_30.INIT1 = 16'h5666;
    defparam add_4_30.INJECT1_0 = "NO";
    defparam add_4_30.INJECT1_1 = "NO";
    CCU2D add_4_28 (.A0(d1[26]), .B0(d2[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[27]), .B1(d2[27]), .C1(GND_net), .D1(GND_net), .CIN(n276), 
          .COUT(n277), .S0(d2_57__N_1127[26]), .S1(d2_57__N_1127[27]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_28.INIT0 = 16'h5666;
    defparam add_4_28.INIT1 = 16'h5666;
    defparam add_4_28.INJECT1_0 = "NO";
    defparam add_4_28.INJECT1_1 = "NO";
    CCU2D add_4_26 (.A0(d1[24]), .B0(d2[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[25]), .B1(d2[25]), .C1(GND_net), .D1(GND_net), .CIN(n275), 
          .COUT(n276), .S0(d2_57__N_1127[24]), .S1(d2_57__N_1127[25]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_26.INIT0 = 16'h5666;
    defparam add_4_26.INIT1 = 16'h5666;
    defparam add_4_26.INJECT1_0 = "NO";
    defparam add_4_26.INJECT1_1 = "NO";
    CCU2D add_4_24 (.A0(d1[22]), .B0(d2[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[23]), .B1(d2[23]), .C1(GND_net), .D1(GND_net), .CIN(n274), 
          .COUT(n275), .S0(d2_57__N_1127[22]), .S1(d2_57__N_1127[23]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_24.INIT0 = 16'h5666;
    defparam add_4_24.INIT1 = 16'h5666;
    defparam add_4_24.INJECT1_0 = "NO";
    defparam add_4_24.INJECT1_1 = "NO";
    CCU2D add_4_22 (.A0(d1[20]), .B0(d2[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[21]), .B1(d2[21]), .C1(GND_net), .D1(GND_net), .CIN(n273), 
          .COUT(n274), .S0(d2_57__N_1127[20]), .S1(d2_57__N_1127[21]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_22.INIT0 = 16'h5666;
    defparam add_4_22.INIT1 = 16'h5666;
    defparam add_4_22.INJECT1_0 = "NO";
    defparam add_4_22.INJECT1_1 = "NO";
    CCU2D add_4_20 (.A0(d1[18]), .B0(d2[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[19]), .B1(d2[19]), .C1(GND_net), .D1(GND_net), .CIN(n272), 
          .COUT(n273), .S0(d2_57__N_1127[18]), .S1(d2_57__N_1127[19]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_20.INIT0 = 16'h5666;
    defparam add_4_20.INIT1 = 16'h5666;
    defparam add_4_20.INJECT1_0 = "NO";
    defparam add_4_20.INJECT1_1 = "NO";
    CCU2D add_4_18 (.A0(d1[16]), .B0(d2[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[17]), .B1(d2[17]), .C1(GND_net), .D1(GND_net), .CIN(n271), 
          .COUT(n272), .S0(d2_57__N_1127[16]), .S1(d2_57__N_1127[17]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_18.INIT0 = 16'h5666;
    defparam add_4_18.INIT1 = 16'h5666;
    defparam add_4_18.INJECT1_0 = "NO";
    defparam add_4_18.INJECT1_1 = "NO";
    CCU2D add_4_16 (.A0(d1[14]), .B0(d2[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[15]), .B1(d2[15]), .C1(GND_net), .D1(GND_net), .CIN(n270), 
          .COUT(n271), .S0(d2_57__N_1127[14]), .S1(d2_57__N_1127[15]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_16.INIT0 = 16'h5666;
    defparam add_4_16.INIT1 = 16'h5666;
    defparam add_4_16.INJECT1_0 = "NO";
    defparam add_4_16.INJECT1_1 = "NO";
    CCU2D add_4_14 (.A0(d1[12]), .B0(d2[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[13]), .B1(d2[13]), .C1(GND_net), .D1(GND_net), .CIN(n269), 
          .COUT(n270), .S0(d2_57__N_1127[12]), .S1(d2_57__N_1127[13]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_14.INIT0 = 16'h5666;
    defparam add_4_14.INIT1 = 16'h5666;
    defparam add_4_14.INJECT1_0 = "NO";
    defparam add_4_14.INJECT1_1 = "NO";
    CCU2D add_4_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n268), 
          .COUT(n269), .S0(d2_57__N_1127[10]), .S1(d2_57__N_1127[11]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_12.INIT0 = 16'h5666;
    defparam add_4_12.INIT1 = 16'h5666;
    defparam add_4_12.INJECT1_0 = "NO";
    defparam add_4_12.INJECT1_1 = "NO";
    CCU2D add_4_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n267), 
          .COUT(n268), .S0(d2_57__N_1127[8]), .S1(d2_57__N_1127[9]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_10.INIT0 = 16'h5666;
    defparam add_4_10.INIT1 = 16'h5666;
    defparam add_4_10.INJECT1_0 = "NO";
    defparam add_4_10.INJECT1_1 = "NO";
    CCU2D add_4_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n266), 
          .COUT(n267), .S0(d2_57__N_1127[6]), .S1(d2_57__N_1127[7]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_8.INIT0 = 16'h5666;
    defparam add_4_8.INIT1 = 16'h5666;
    defparam add_4_8.INJECT1_0 = "NO";
    defparam add_4_8.INJECT1_1 = "NO";
    CCU2D add_4_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n265), 
          .COUT(n266), .S0(d2_57__N_1127[4]), .S1(d2_57__N_1127[5]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_6.INIT0 = 16'h5666;
    defparam add_4_6.INIT1 = 16'h5666;
    defparam add_4_6.INJECT1_0 = "NO";
    defparam add_4_6.INJECT1_1 = "NO";
    CCU2D add_4_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n264), 
          .COUT(n265), .S0(d2_57__N_1127[2]), .S1(d2_57__N_1127[3]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_4.INIT0 = 16'h5666;
    defparam add_4_4.INIT1 = 16'h5666;
    defparam add_4_4.INJECT1_0 = "NO";
    defparam add_4_4.INJECT1_1 = "NO";
    CCU2D add_4_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n264), 
          .S1(d2_57__N_1127[1]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_2.INIT0 = 16'h7000;
    defparam add_4_2.INIT1 = 16'h5666;
    defparam add_4_2.INJECT1_0 = "NO";
    defparam add_4_2.INJECT1_1 = "NO";
    CCU2D add_3_59 (.A0(\MixerOutCos[7] ), .B0(d1[57]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n262), .S0(d1_57__N_1069[57]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_59.INIT0 = 16'h5666;
    defparam add_3_59.INIT1 = 16'h0000;
    defparam add_3_59.INJECT1_0 = "NO";
    defparam add_3_59.INJECT1_1 = "NO";
    CCU2D add_3_57 (.A0(\MixerOutCos[7] ), .B0(d1[55]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n261), .COUT(n262), .S0(d1_57__N_1069[55]), 
          .S1(d1_57__N_1069[56]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_57.INIT0 = 16'h5666;
    defparam add_3_57.INIT1 = 16'h5666;
    defparam add_3_57.INJECT1_0 = "NO";
    defparam add_3_57.INJECT1_1 = "NO";
    CCU2D add_3_55 (.A0(\MixerOutCos[7] ), .B0(d1[53]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n260), .COUT(n261), .S0(d1_57__N_1069[53]), 
          .S1(d1_57__N_1069[54]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_55.INIT0 = 16'h5666;
    defparam add_3_55.INIT1 = 16'h5666;
    defparam add_3_55.INJECT1_0 = "NO";
    defparam add_3_55.INJECT1_1 = "NO";
    CCU2D add_3_53 (.A0(\MixerOutCos[7] ), .B0(d1[51]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n259), .COUT(n260), .S0(d1_57__N_1069[51]), 
          .S1(d1_57__N_1069[52]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_53.INIT0 = 16'h5666;
    defparam add_3_53.INIT1 = 16'h5666;
    defparam add_3_53.INJECT1_0 = "NO";
    defparam add_3_53.INJECT1_1 = "NO";
    CCU2D add_3_51 (.A0(\MixerOutCos[7] ), .B0(d1[49]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n258), .COUT(n259), .S0(d1_57__N_1069[49]), 
          .S1(d1_57__N_1069[50]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_51.INIT0 = 16'h5666;
    defparam add_3_51.INIT1 = 16'h5666;
    defparam add_3_51.INJECT1_0 = "NO";
    defparam add_3_51.INJECT1_1 = "NO";
    CCU2D add_3_49 (.A0(\MixerOutCos[7] ), .B0(d1[47]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n257), .COUT(n258), .S0(d1_57__N_1069[47]), 
          .S1(d1_57__N_1069[48]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_49.INIT0 = 16'h5666;
    defparam add_3_49.INIT1 = 16'h5666;
    defparam add_3_49.INJECT1_0 = "NO";
    defparam add_3_49.INJECT1_1 = "NO";
    CCU2D add_3_47 (.A0(\MixerOutCos[7] ), .B0(d1[45]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n256), .COUT(n257), .S0(d1_57__N_1069[45]), 
          .S1(d1_57__N_1069[46]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_47.INIT0 = 16'h5666;
    defparam add_3_47.INIT1 = 16'h5666;
    defparam add_3_47.INJECT1_0 = "NO";
    defparam add_3_47.INJECT1_1 = "NO";
    CCU2D add_3_45 (.A0(\MixerOutCos[7] ), .B0(d1[43]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[44]), .C1(GND_net), 
          .D1(GND_net), .CIN(n255), .COUT(n256), .S0(d1_57__N_1069[43]), 
          .S1(d1_57__N_1069[44]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_45.INIT0 = 16'h5666;
    defparam add_3_45.INIT1 = 16'h5666;
    defparam add_3_45.INJECT1_0 = "NO";
    defparam add_3_45.INJECT1_1 = "NO";
    CCU2D add_3_43 (.A0(\MixerOutCos[7] ), .B0(d1[41]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[42]), .C1(GND_net), 
          .D1(GND_net), .CIN(n254), .COUT(n255), .S0(d1_57__N_1069[41]), 
          .S1(d1_57__N_1069[42]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_43.INIT0 = 16'h5666;
    defparam add_3_43.INIT1 = 16'h5666;
    defparam add_3_43.INJECT1_0 = "NO";
    defparam add_3_43.INJECT1_1 = "NO";
    CCU2D add_3_41 (.A0(\MixerOutCos[7] ), .B0(d1[39]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[40]), .C1(GND_net), 
          .D1(GND_net), .CIN(n253), .COUT(n254), .S0(d1_57__N_1069[39]), 
          .S1(d1_57__N_1069[40]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_41.INIT0 = 16'h5666;
    defparam add_3_41.INIT1 = 16'h5666;
    defparam add_3_41.INJECT1_0 = "NO";
    defparam add_3_41.INJECT1_1 = "NO";
    CCU2D add_3_39 (.A0(\MixerOutCos[7] ), .B0(d1[37]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[38]), .C1(GND_net), 
          .D1(GND_net), .CIN(n252), .COUT(n253), .S0(d1_57__N_1069[37]), 
          .S1(d1_57__N_1069[38]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_39.INIT0 = 16'h5666;
    defparam add_3_39.INIT1 = 16'h5666;
    defparam add_3_39.INJECT1_0 = "NO";
    defparam add_3_39.INJECT1_1 = "NO";
    CCU2D add_3_37 (.A0(\MixerOutCos[7] ), .B0(d1[35]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[36]), .C1(GND_net), 
          .D1(GND_net), .CIN(n251), .COUT(n252), .S0(d1_57__N_1069[35]), 
          .S1(d1_57__N_1069[36]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_37.INIT0 = 16'h5666;
    defparam add_3_37.INIT1 = 16'h5666;
    defparam add_3_37.INJECT1_0 = "NO";
    defparam add_3_37.INJECT1_1 = "NO";
    CCU2D add_3_35 (.A0(\MixerOutCos[7] ), .B0(d1[33]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[34]), .C1(GND_net), 
          .D1(GND_net), .CIN(n250), .COUT(n251), .S0(d1_57__N_1069[33]), 
          .S1(d1_57__N_1069[34]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_35.INIT0 = 16'h5666;
    defparam add_3_35.INIT1 = 16'h5666;
    defparam add_3_35.INJECT1_0 = "NO";
    defparam add_3_35.INJECT1_1 = "NO";
    CCU2D add_3_33 (.A0(\MixerOutCos[7] ), .B0(d1[31]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[32]), .C1(GND_net), 
          .D1(GND_net), .CIN(n249), .COUT(n250), .S0(d1_57__N_1069[31]), 
          .S1(d1_57__N_1069[32]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_33.INIT0 = 16'h5666;
    defparam add_3_33.INIT1 = 16'h5666;
    defparam add_3_33.INJECT1_0 = "NO";
    defparam add_3_33.INJECT1_1 = "NO";
    CCU2D add_3_31 (.A0(\MixerOutCos[7] ), .B0(d1[29]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n248), .COUT(n249), .S0(d1_57__N_1069[29]), 
          .S1(d1_57__N_1069[30]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_31.INIT0 = 16'h5666;
    defparam add_3_31.INIT1 = 16'h5666;
    defparam add_3_31.INJECT1_0 = "NO";
    defparam add_3_31.INJECT1_1 = "NO";
    CCU2D add_3_29 (.A0(\MixerOutCos[7] ), .B0(d1[27]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n247), .COUT(n248), .S0(d1_57__N_1069[27]), 
          .S1(d1_57__N_1069[28]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_29.INIT0 = 16'h5666;
    defparam add_3_29.INIT1 = 16'h5666;
    defparam add_3_29.INJECT1_0 = "NO";
    defparam add_3_29.INJECT1_1 = "NO";
    CCU2D add_3_27 (.A0(\MixerOutCos[7] ), .B0(d1[25]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n246), .COUT(n247), .S0(d1_57__N_1069[25]), 
          .S1(d1_57__N_1069[26]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_27.INIT0 = 16'h5666;
    defparam add_3_27.INIT1 = 16'h5666;
    defparam add_3_27.INJECT1_0 = "NO";
    defparam add_3_27.INJECT1_1 = "NO";
    CCU2D add_3_25 (.A0(\MixerOutCos[7] ), .B0(d1[23]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n245), .COUT(n246), .S0(d1_57__N_1069[23]), 
          .S1(d1_57__N_1069[24]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_25.INIT0 = 16'h5666;
    defparam add_3_25.INIT1 = 16'h5666;
    defparam add_3_25.INJECT1_0 = "NO";
    defparam add_3_25.INJECT1_1 = "NO";
    CCU2D add_3_23 (.A0(\MixerOutCos[7] ), .B0(d1[21]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n244), .COUT(n245), .S0(d1_57__N_1069[21]), 
          .S1(d1_57__N_1069[22]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_23.INIT0 = 16'h5666;
    defparam add_3_23.INIT1 = 16'h5666;
    defparam add_3_23.INJECT1_0 = "NO";
    defparam add_3_23.INJECT1_1 = "NO";
    LUT4 i157_2_lut (.A(d2[0]), .B(d3[0]), .Z(d3_57__N_1185[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i157_2_lut.init = 16'h6666;
    CCU2D add_3_5 (.A0(\MixerOutCos[2] ), .B0(d1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n235), .COUT(n236), .S0(d1_57__N_1069[3]), .S1(d1_57__N_1069[4]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_5.INIT0 = 16'h5666;
    defparam add_3_5.INIT1 = 16'h5666;
    defparam add_3_5.INJECT1_0 = "NO";
    defparam add_3_5.INJECT1_1 = "NO";
    CCU2D add_3_11 (.A0(\MixerOutCos[7] ), .B0(d1[9]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[7] ), .B1(d1[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n238), .COUT(n239), .S0(d1_57__N_1069[9]), .S1(d1_57__N_1069[10]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_11.INIT0 = 16'h5666;
    defparam add_3_11.INIT1 = 16'h5666;
    defparam add_3_11.INJECT1_0 = "NO";
    defparam add_3_11.INJECT1_1 = "NO";
    FD1S3AX v_comb_84_rep_16 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_348)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=85, LSE_RLINE=92 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_16.GSR = "ENABLED";
    CCU2D add_3_15 (.A0(\MixerOutCos[7] ), .B0(d1[13]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n240), .COUT(n241), .S0(d1_57__N_1069[13]), 
          .S1(d1_57__N_1069[14]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_15.INIT0 = 16'h5666;
    defparam add_3_15.INIT1 = 16'h5666;
    defparam add_3_15.INJECT1_0 = "NO";
    defparam add_3_15.INJECT1_1 = "NO";
    CCU2D add_3_13 (.A0(\MixerOutCos[7] ), .B0(d1[11]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n239), .COUT(n240), .S0(d1_57__N_1069[11]), 
          .S1(d1_57__N_1069[12]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_13.INIT0 = 16'h5666;
    defparam add_3_13.INIT1 = 16'h5666;
    defparam add_3_13.INJECT1_0 = "NO";
    defparam add_3_13.INJECT1_1 = "NO";
    CCU2D add_3_9 (.A0(\MixerOutCos[7] ), .B0(d1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[7] ), .B1(d1[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n237), .COUT(n238), .S0(d1_57__N_1069[7]), .S1(d1_57__N_1069[8]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_9.INIT0 = 16'h5666;
    defparam add_3_9.INIT1 = 16'h5666;
    defparam add_3_9.INJECT1_0 = "NO";
    defparam add_3_9.INJECT1_1 = "NO";
    CCU2D add_3_21 (.A0(\MixerOutCos[7] ), .B0(d1[19]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n243), .COUT(n244), .S0(d1_57__N_1069[19]), 
          .S1(d1_57__N_1069[20]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_21.INIT0 = 16'h5666;
    defparam add_3_21.INIT1 = 16'h5666;
    defparam add_3_21.INJECT1_0 = "NO";
    defparam add_3_21.INJECT1_1 = "NO";
    CCU2D add_3_19 (.A0(\MixerOutCos[7] ), .B0(d1[17]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n242), .COUT(n243), .S0(d1_57__N_1069[17]), 
          .S1(d1_57__N_1069[18]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_19.INIT0 = 16'h5666;
    defparam add_3_19.INIT1 = 16'h5666;
    defparam add_3_19.INJECT1_0 = "NO";
    defparam add_3_19.INJECT1_1 = "NO";
    FD1S3IX count_66_67__i2 (.D(n45[1]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i2.GSR = "ENABLED";
    CCU2D add_3_7 (.A0(\MixerOutCos[2] ), .B0(d1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n236), .COUT(n237), .S0(d1_57__N_1069[5]), .S1(d1_57__N_1069[6]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_7.INIT0 = 16'h5666;
    defparam add_3_7.INIT1 = 16'h5666;
    defparam add_3_7.INJECT1_0 = "NO";
    defparam add_3_7.INJECT1_1 = "NO";
    CCU2D add_3_3 (.A0(\MixerOutCos[2] ), .B0(d1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n234), .COUT(n235), .S0(d1_57__N_1069[1]), .S1(d1_57__N_1069[2]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_3.INIT0 = 16'h5666;
    defparam add_3_3.INIT1 = 16'h5666;
    defparam add_3_3.INJECT1_0 = "NO";
    defparam add_3_3.INJECT1_1 = "NO";
    CCU2D add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n234), 
          .S1(d1_57__N_1069[0]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_1.INIT0 = 16'hF000;
    defparam add_3_1.INIT1 = 16'h0555;
    defparam add_3_1.INJECT1_0 = "NO";
    defparam add_3_1.INJECT1_1 = "NO";
    CCU2D add_3_17 (.A0(\MixerOutCos[7] ), .B0(d1[15]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n241), .COUT(n242), .S0(d1_57__N_1069[15]), 
          .S1(d1_57__N_1069[16]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_17.INIT0 = 16'h5666;
    defparam add_3_17.INIT1 = 16'h5666;
    defparam add_3_17.INJECT1_0 = "NO";
    defparam add_3_17.INJECT1_1 = "NO";
    FD1S3IX count_66_67__i3 (.D(n45[2]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i3.GSR = "ENABLED";
    FD1S3IX count_66_67__i4 (.D(n45[3]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i4.GSR = "ENABLED";
    FD1S3IX count_66_67__i5 (.D(n45[4]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i5.GSR = "ENABLED";
    FD1S3IX count_66_67__i6 (.D(n45[5]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i6.GSR = "ENABLED";
    FD1S3IX count_66_67__i7 (.D(n45[6]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i7.GSR = "ENABLED";
    FD1S3IX count_66_67__i8 (.D(n45[7]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i8.GSR = "ENABLED";
    FD1S3IX count_66_67__i9 (.D(n45[8]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i9.GSR = "ENABLED";
    FD1S3IX count_66_67__i10 (.D(n45[9]), .CK(osc_clk), .CD(d_clk_tmp_N_2041), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_66_67__i10.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (osc_clk, PWMOut_c, GND_net, CIC_out) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output PWMOut_c;
    input GND_net;
    input [7:0]CIC_out;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[8:15])
    wire [7:0]DataInNoSign;   // c:/users/user/lattice/fpgasdr/pwm.v(9[11:23])
    
    wire osc_clk_enable_555;
    wire [7:0]DataInNoSign_7__N_2060;
    
    wire PWMOut_N_2069;
    wire [7:0]counter;   // c:/users/user/lattice/fpgasdr/pwm.v(7[11:18])
    wire [7:0]n37;
    
    wire n652, n616, n12, n4, n625, n655, n654, n653, n605, 
        n636, n624, n619, n6, n14, n10, n10_adj_2071, n558, 
        n557, n556, n555, n502, n501, n500, n499;
    
    FD1P3AX DataInNoSign_i0_i0 (.D(DataInNoSign_7__N_2060[0]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i0.GSR = "ENABLED";
    FD1S3AX PWMOut_15 (.D(PWMOut_N_2069), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    FD1S3AX counter_68__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i0.GSR = "ENABLED";
    LUT4 i222_1_lut_4_lut_4_lut (.A(n652), .B(n616), .C(n12), .D(n4), 
         .Z(n625)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i222_1_lut_4_lut_4_lut.init = 16'h0b4f;
    LUT4 DataInNoSign_7__I_0_i15_2_lut_rep_4 (.A(DataInNoSign[7]), .B(counter[7]), 
         .Z(n652)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i15_2_lut_rep_4.init = 16'h6666;
    LUT4 i234_4_lut (.A(n655), .B(n654), .C(n653), .D(n605), .Z(n636)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i234_4_lut.init = 16'hefee;
    PFUMX DataInNoSign_7__I_0_i16 (.BLUT(n624), .ALUT(n625), .C0(n619), 
          .Z(PWMOut_N_2069)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;
    LUT4 i235_2_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), .C(n636), 
         .Z(n619)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i235_2_lut_3_lut.init = 16'hf6f6;
    LUT4 DataInNoSign_7__I_0_i6_3_lut_3_lut (.A(DataInNoSign[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i233_4_lut (.A(counter[0]), .B(n14), .C(n10), .D(counter[6]), 
         .Z(osc_clk_enable_555)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i233_4_lut.init = 16'h0001;
    LUT4 DataInNoSign_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInNoSign[1]), 
         .D(DataInNoSign[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 DataInNoSign_7__I_0_i12_3_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), 
         .C(n10_adj_2071), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 DataInNoSign_7__I_0_i9_2_lut_rep_5 (.A(DataInNoSign[4]), .B(counter[4]), 
         .Z(n653)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i9_2_lut_rep_5.init = 16'h6666;
    LUT4 i221_1_lut_3_lut_3_lut (.A(DataInNoSign[4]), .B(counter[4]), .C(n6), 
         .Z(n624)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i221_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 i6_4_lut (.A(counter[3]), .B(counter[1]), .C(counter[5]), .D(counter[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(counter[2]), .B(counter[4]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i2_2_lut.init = 16'heeee;
    CCU2D counter_68_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n558), .S0(n37[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_68_add_4_9.INIT1 = 16'h0000;
    defparam counter_68_add_4_9.INJECT1_0 = "NO";
    defparam counter_68_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_68_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n557), .COUT(n558), .S0(n37[5]), .S1(n37[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_68_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_68_add_4_7.INJECT1_0 = "NO";
    defparam counter_68_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_68_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n556), .COUT(n557), .S0(n37[3]), .S1(n37[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_68_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_68_add_4_5.INJECT1_0 = "NO";
    defparam counter_68_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_68_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n555), .COUT(n556), .S0(n37[1]), .S1(n37[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_68_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_68_add_4_3.INJECT1_0 = "NO";
    defparam counter_68_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_68_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n555), .S1(n37[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68_add_4_1.INIT0 = 16'hF000;
    defparam counter_68_add_4_1.INIT1 = 16'h0555;
    defparam counter_68_add_4_1.INJECT1_0 = "NO";
    defparam counter_68_add_4_1.INJECT1_1 = "NO";
    LUT4 DataInNoSign_7__I_0_i11_2_lut_rep_6 (.A(DataInNoSign[5]), .B(counter[5]), 
         .Z(n654)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i11_2_lut_rep_6.init = 16'h6666;
    FD1P3AX DataInNoSign_i0_i1 (.D(DataInNoSign_7__N_2060[1]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i1.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i2 (.D(DataInNoSign_7__N_2060[2]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i2.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i3 (.D(DataInNoSign_7__N_2060[3]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i3.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i4 (.D(DataInNoSign_7__N_2060[4]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i4.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i5 (.D(DataInNoSign_7__N_2060[5]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i5.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i6 (.D(DataInNoSign_7__N_2060[6]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i6.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i7 (.D(DataInNoSign_7__N_2060[7]), .SP(osc_clk_enable_555), 
            .CK(osc_clk), .Q(DataInNoSign[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i7.GSR = "ENABLED";
    FD1S3AX counter_68__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i1.GSR = "ENABLED";
    CCU2D add_5_9 (.A0(CIC_out[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n502), 
          .S0(DataInNoSign_7__N_2060[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_9.INIT0 = 16'h5aaa;
    defparam add_5_9.INIT1 = 16'h0000;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    CCU2D add_5_7 (.A0(CIC_out[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CIC_out[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n501), .COUT(n502), .S0(DataInNoSign_7__N_2060[5]), .S1(DataInNoSign_7__N_2060[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_7.INIT0 = 16'h5555;
    defparam add_5_7.INIT1 = 16'h5555;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(CIC_out[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CIC_out[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n500), .COUT(n501), .S0(DataInNoSign_7__N_2060[3]), .S1(DataInNoSign_7__N_2060[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_5.INIT0 = 16'h5555;
    defparam add_5_5.INIT1 = 16'h5555;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    CCU2D add_5_3 (.A0(CIC_out[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CIC_out[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n499), .COUT(n500), .S0(DataInNoSign_7__N_2060[1]), .S1(DataInNoSign_7__N_2060[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_3.INIT0 = 16'h5555;
    defparam add_5_3.INIT1 = 16'h5555;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CIC_out[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n499), .S1(DataInNoSign_7__N_2060[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(25[20:37])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'h5555;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    LUT4 DataInNoSign_7__I_0_i13_2_lut_rep_7 (.A(DataInNoSign[6]), .B(counter[6]), 
         .Z(n655)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i13_2_lut_rep_7.init = 16'h6666;
    LUT4 i212_2_lut_3_lut_4_lut (.A(DataInNoSign[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInNoSign[5]), .Z(n616)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i212_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 DataInNoSign_7__I_0_i10_3_lut_3_lut (.A(DataInNoSign[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10_adj_2071)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i201_3_lut_4_lut (.A(DataInNoSign[3]), .B(counter[3]), .C(counter[2]), 
         .D(DataInNoSign[2]), .Z(n605)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i201_3_lut_4_lut.init = 16'h9009;
    FD1S3AX counter_68__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i2.GSR = "ENABLED";
    FD1S3AX counter_68__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i3.GSR = "ENABLED";
    FD1S3AX counter_68__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i4.GSR = "ENABLED";
    FD1S3AX counter_68__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i5.GSR = "ENABLED";
    FD1S3AX counter_68__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i6.GSR = "ENABLED";
    FD1S3AX counter_68__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_68__i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (osc_clk, RFIn_c, DiffOut_c, \MixerOutSin_7__N_83[7] , 
            MYLED_c_7, n138, MixerOutSin_c_7, \MixerOutCos[2] , \MixerOutCos_7__N_75[6] , 
            \MixerOutCos[7] , \MixerOutCos_7__N_75[7] ) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input RFIn_c;
    output DiffOut_c;
    input \MixerOutSin_7__N_83[7] ;
    output MYLED_c_7;
    output n138;
    output MixerOutSin_c_7;
    output \MixerOutCos[2] ;
    input \MixerOutCos_7__N_75[6] ;
    output \MixerOutCos[7] ;
    input \MixerOutCos_7__N_75[7] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[8:15])
    
    wire RFInR1;
    wire [7:0]MixerOutSin_7__N_67;
    
    FD1S3AY RFInR1_20 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=83 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR1_20.GSR = "ENABLED";
    FD1S3AY RFInR_21 (.D(RFInR1), .CK(osc_clk), .Q(DiffOut_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=83 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR_21.GSR = "ENABLED";
    LUT4 i95_2_lut (.A(\MixerOutSin_7__N_83[7] ), .B(DiffOut_c), .Z(MixerOutSin_7__N_67[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[4] 40[34])
    defparam i95_2_lut.init = 16'h6666;
    LUT4 i226_2_lut (.A(\MixerOutSin_7__N_83[7] ), .B(DiffOut_c), .Z(MixerOutSin_7__N_67[7])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[4] 40[34])
    defparam i226_2_lut.init = 16'h9999;
    LUT4 phase_accum_63__I_0_13_1_lut (.A(\MixerOutSin_7__N_83[7] ), .Z(MYLED_c_7)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(35[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    FD1S3AX MixerOutSin_i2 (.D(MixerOutSin_7__N_67[6]), .CK(osc_clk), .Q(n138)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=83 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 52[5])
    defparam MixerOutSin_i2.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[7]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=83 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 52[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    FD1S3AX MixerOutCos_i2 (.D(\MixerOutCos_7__N_75[6] ), .CK(osc_clk), 
            .Q(\MixerOutCos[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=83 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 52[5])
    defparam MixerOutCos_i2.GSR = "ENABLED";
    FD1S3AX MixerOutCos_i7 (.D(\MixerOutCos_7__N_75[7] ), .CK(osc_clk), 
            .Q(\MixerOutCos[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=83 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 52[5])
    defparam MixerOutCos_i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module nco_sig_U0
//

module nco_sig_U0 (\MixerOutSin_7__N_83[7] , DiffOut_c, \MixerOutCos_7__N_75[6] , 
            n651, osc_clk, GND_net, \MixerOutCos_7__N_75[7] ) /* synthesis syn_module_defined=1 */ ;
    output \MixerOutSin_7__N_83[7] ;
    input DiffOut_c;
    output \MixerOutCos_7__N_75[6] ;
    output n651;
    input osc_clk;
    input GND_net;
    output \MixerOutCos_7__N_75[7] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[8:15])
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(32[12:23])
    wire [63:0]phase_accum_63__N_1;
    
    wire n553, n552, n551, n550, n549, n548, n547, n546, n545, 
        n544, n543, n542, n541, n540, n539, n538, n537, n536, 
        n535, n534, n533, n532;
    
    LUT4 i89_2_lut_3_lut (.A(\MixerOutSin_7__N_83[7] ), .B(phase_accum[62]), 
         .C(DiffOut_c), .Z(\MixerOutCos_7__N_75[6] )) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[19:54])
    defparam i89_2_lut_3_lut.init = 16'h9696;
    LUT4 phase_accum_63__I_0_2_lut_rep_3 (.A(\MixerOutSin_7__N_83[7] ), .B(phase_accum[62]), 
         .Z(n651)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[19:54])
    defparam phase_accum_63__I_0_2_lut_rep_3.init = 16'h9999;
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(\MixerOutSin_7__N_83[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(phase_accum[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(phase_accum[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(phase_accum[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(phase_accum[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(phase_accum[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(phase_accum[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(phase_accum[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i21 (.D(phase_accum_63__N_1[21]), .CK(osc_clk), 
            .Q(phase_accum[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i21.GSR = "ENABLED";
    FD1S3AX phase_accum_i20 (.D(phase_accum_63__N_1[20]), .CK(osc_clk), 
            .Q(phase_accum[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i20.GSR = "ENABLED";
    FD1S3AX phase_accum_i19 (.D(phase_accum_63__N_1[19]), .CK(osc_clk), 
            .Q(phase_accum[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=58, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i19.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_45 (.A0(phase_accum[62]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\MixerOutSin_7__N_83[7] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n553), .S0(phase_accum_63__N_1[62]), 
          .S1(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_45.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_45.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[60]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[61]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n552), .COUT(n553), .S0(phase_accum_63__N_1[60]), 
          .S1(phase_accum_63__N_1[61]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[58]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[59]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n551), .COUT(n552), .S0(phase_accum_63__N_1[58]), 
          .S1(phase_accum_63__N_1[59]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[56]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[57]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n550), .COUT(n551), .S0(phase_accum_63__N_1[56]), 
          .S1(phase_accum_63__N_1[57]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[54]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[55]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n549), .COUT(n550), .S0(phase_accum_63__N_1[54]), 
          .S1(phase_accum_63__N_1[55]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[52]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[53]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n548), .COUT(n549), .S0(phase_accum_63__N_1[52]), 
          .S1(phase_accum_63__N_1[53]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[50]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[51]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n547), .COUT(n548), .S0(phase_accum_63__N_1[50]), 
          .S1(phase_accum_63__N_1[51]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[48]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[49]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n546), .COUT(n547), .S0(phase_accum_63__N_1[48]), 
          .S1(phase_accum_63__N_1[49]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[46]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[47]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n545), .COUT(n546), .S0(phase_accum_63__N_1[46]), 
          .S1(phase_accum_63__N_1[47]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[44]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[45]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n544), .COUT(n545), .S0(phase_accum_63__N_1[44]), 
          .S1(phase_accum_63__N_1[45]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[42]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[43]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n543), .COUT(n544), .S0(phase_accum_63__N_1[42]), 
          .S1(phase_accum_63__N_1[43]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[40]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[41]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n542), .COUT(n543), .S0(phase_accum_63__N_1[40]), 
          .S1(phase_accum_63__N_1[41]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[38]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[39]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n541), .COUT(n542), .S0(phase_accum_63__N_1[38]), 
          .S1(phase_accum_63__N_1[39]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[36]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[37]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n540), .COUT(n541), .S0(phase_accum_63__N_1[36]), 
          .S1(phase_accum_63__N_1[37]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[34]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[35]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n539), .COUT(n540), .S0(phase_accum_63__N_1[34]), 
          .S1(phase_accum_63__N_1[35]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[32]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[33]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n538), .COUT(n539), .S0(phase_accum_63__N_1[32]), 
          .S1(phase_accum_63__N_1[33]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[30]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[31]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n537), .COUT(n538), .S0(phase_accum_63__N_1[30]), 
          .S1(phase_accum_63__N_1[31]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[28]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[29]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n536), .COUT(n537), .S0(phase_accum_63__N_1[28]), 
          .S1(phase_accum_63__N_1[29]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[26]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[27]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n535), .COUT(n536), .S0(phase_accum_63__N_1[26]), 
          .S1(phase_accum_63__N_1[27]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[24]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[25]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n534), .COUT(n535), .S0(phase_accum_63__N_1[24]), 
          .S1(phase_accum_63__N_1[25]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[22]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[23]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n533), .COUT(n534), .S0(phase_accum_63__N_1[22]), 
          .S1(phase_accum_63__N_1[23]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[20]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[21]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n532), .COUT(n533), .S0(phase_accum_63__N_1[20]), 
          .S1(phase_accum_63__N_1[21]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n532), .S1(phase_accum_63__N_1[19]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    LUT4 i224_2_lut_3_lut (.A(\MixerOutSin_7__N_83[7] ), .B(phase_accum[62]), 
         .C(DiffOut_c), .Z(\MixerOutCos_7__N_75[7] )) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[19:54])
    defparam i224_2_lut_3_lut.init = 16'h6969;
    
endmodule
