// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Tue Oct 15 21:43:58 2019
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
    
    wire GND_net, VCC_net, PWMOut_c;
    
    VHI i2 (.Z(VCC_net));
    PWM PWM1 (.GND_net(GND_net), .PWMOut_c(PWMOut_c), .osc_clk(osc_clk)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(102[5] 107[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB o_Rx_DV_pad (.I(GND_net), .O(o_Rx_DV));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(8[13:20])
    OB o_Tx_Serial_pad (.I(GND_net), .O(o_Tx_Serial));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(7[11:22])
    OB o_Rx_Byte_pad_7 (.I(GND_net), .O(o_Rx_Byte[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_6 (.I(GND_net), .O(o_Rx_Byte[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_5 (.I(GND_net), .O(o_Rx_Byte[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_4 (.I(GND_net), .O(o_Rx_Byte[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_3 (.I(GND_net), .O(o_Rx_Byte[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_2 (.I(GND_net), .O(o_Rx_Byte[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_1 (.I(GND_net), .O(o_Rx_Byte[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_0 (.I(GND_net), .O(o_Rx_Byte[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
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
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(109[5] 111[2])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (GND_net, PWMOut_c, osc_clk) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output PWMOut_c;
    input osc_clk;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(22[8:15])
    wire [7:0]counter;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(7[11:18])
    wire [7:0]n37;
    
    wire n373, PWMOut_N_112, n376, n375, n374, n394, n400;
    
    CCU2D counter_64_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n373), .S1(n37[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64_add_4_1.INIT0 = 16'hF000;
    defparam counter_64_add_4_1.INIT1 = 16'h0555;
    defparam counter_64_add_4_1.INJECT1_0 = "NO";
    defparam counter_64_add_4_1.INJECT1_1 = "NO";
    FD1S3AX PWMOut_15 (.D(PWMOut_N_112), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=107 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    FD1S3AX counter_64__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i1.GSR = "ENABLED";
    CCU2D counter_64_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n376), .S0(n37[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_64_add_4_9.INIT1 = 16'h0000;
    defparam counter_64_add_4_9.INJECT1_0 = "NO";
    defparam counter_64_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_64_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n375), .COUT(n376), .S0(n37[5]), .S1(n37[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_64_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_64_add_4_7.INJECT1_0 = "NO";
    defparam counter_64_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_64_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n374), .COUT(n375), .S0(n37[3]), .S1(n37[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_64_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_64_add_4_5.INJECT1_0 = "NO";
    defparam counter_64_add_4_5.INJECT1_1 = "NO";
    FD1S3AX counter_64__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(counter[5]), .B(counter[1]), .Z(n394)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i166_4_lut (.A(n400), .B(counter[7]), .C(n394), .D(counter[3]), 
         .Z(PWMOut_N_112)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(32[4:20])
    defparam i166_4_lut.init = 16'h3337;
    LUT4 i1_4_lut (.A(counter[2]), .B(counter[6]), .C(counter[4]), .D(counter[0]), 
         .Z(n400)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    FD1S3AX counter_64__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i2.GSR = "ENABLED";
    FD1S3AX counter_64__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i3.GSR = "ENABLED";
    FD1S3AX counter_64__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i4.GSR = "ENABLED";
    FD1S3AX counter_64__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i5.GSR = "ENABLED";
    FD1S3AX counter_64__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i6.GSR = "ENABLED";
    FD1S3AX counter_64__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64__i7.GSR = "ENABLED";
    CCU2D counter_64_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n373), .COUT(n374), .S0(n37[1]), .S1(n37[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_64_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_64_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_64_add_4_3.INJECT1_0 = "NO";
    defparam counter_64_add_4_3.INJECT1_1 = "NO";
    
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
