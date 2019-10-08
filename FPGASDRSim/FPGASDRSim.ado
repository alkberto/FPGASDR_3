setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/FPGASDRSim/FPGASDRSim.adf"]} { 
	design create FPGASDRSim "C:/Users/Rinaldi-i3/lattice/FPGASDR_3"
  set newDesign 1
}
design open "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/FPGASDRSim"
cd "C:/Users/Rinaldi-i3/lattice/FPGASDR_3"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/UartTX.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/UartRX.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/PLL.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/PWM.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/Multiplier.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/AMDemodulator.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/impl1/source/top.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/TestUart.v"
vlib "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/FPGASDRSim/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/UartTX.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/UartRX.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/PLL.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/PWM.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/Multiplier.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/AMDemodulator.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/impl1/source/top.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/TestUart.v"
module top
vsim  +access +r top   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
