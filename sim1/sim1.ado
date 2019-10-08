setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/sim1.adf"]} { 
	design create sim1 "C:/Users/Rinaldi-i3/lattice/FPGASDR_3"
  set newDesign 1
}
design open "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1"
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
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/Multiplier.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/AMDemodulator.v"
addfile "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/AMDemod_tb.v"
vlib "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/Multiplier.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/AMDemodulator.v"
vlog -dbg -work work "C:/Users/Rinaldi-i3/lattice/FPGASDR_3/sim1/AMDemod_tb.v"
module AMDemod_tb
vsim  +access +r AMDemod_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
