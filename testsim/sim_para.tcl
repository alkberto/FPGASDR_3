lappend auto_path "C:/lscc/diamond/3.10_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {testsim}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/user/lattice/FPGASDR}
set ::bali::simulation::Para(FILELIST) {"C:/Users/user/lattice/FPGASDR/impl1/source/TestUart.v" "C:/Users/user/lattice/FPGASDR/PLL.v" "C:/Users/user/lattice/FPGASDR/PWM.v" "C:/Users/user/lattice/FPGASDR/Multiplier.v" "C:/Users/user/lattice/FPGASDR/HP_IIR.v" "C:/Users/user/lattice/FPGASDR/CIC.v" "C:/Users/user/lattice/FPGASDR/Mixer.v" "C:/Users/user/lattice/FPGASDR/SinCos.v" "C:/Users/user/lattice/FPGASDR/NCO.v" "C:/Users/user/lattice/FPGASDR/impl1/source/top.v" "C:/Users/user/lattice/FPGASDR/impl1/source/UartRX.v" "C:/Users/user/lattice/FPGASDR/impl1/source/UartTX.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {top}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
