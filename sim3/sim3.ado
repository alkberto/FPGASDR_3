setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/user/lattice/FPGASDR/sim3/sim3.adf"]} { 
	design create sim3 "C:/Users/user/lattice/FPGASDR"
  set newDesign 1
}
design open "C:/Users/user/lattice/FPGASDR/sim3"
cd "C:/Users/user/lattice/FPGASDR"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/user/lattice/FPGASDR/sim2/source/Mixer.v"
addfile "C:/Users/user/lattice/FPGASDR/MixerSim.v"
vlib "C:/Users/user/lattice/FPGASDR/sim3/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/user/lattice/FPGASDR/sim2/source/Mixer.v"
vlog -dbg -work work "C:/Users/user/lattice/FPGASDR/MixerSim.v"
module MixerSim
vsim  +access +r MixerSim   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
