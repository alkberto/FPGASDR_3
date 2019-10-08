setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/simwiz1.adf"]} { 
	design create simwiz1 "C:/Users/Rinaldi-i3/lattice/FPGASDR_3"
  set newDesign 1
}
design open "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1"
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
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/UartTX.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/UartRX.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/PLL.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/PWM.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/Multiplier.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/AMDemodulator.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/top.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/TestUart.v"
vlib "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/UartTX.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/UartRX.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/PLL.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/PWM.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/Multiplier.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/AMDemodulator.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/top.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/simwiz1/TestUart.v"
module top
vsim  +access +r top   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
