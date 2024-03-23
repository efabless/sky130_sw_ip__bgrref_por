v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 490 -560 520 -560 {lab=VDD}
N 520 -620 520 -590 {lab=VDD}
N 490 -600 490 -560 {
lab=VDD}
N 490 -600 520 -600 {
lab=VDD}
N 520 -290 550 -290 {lab=VSS}
N 560 -560 560 -510 {
lab=#net1}
N 520 -510 560 -510 {
lab=#net1}
N 520 -350 520 -320 {
lab=#net2}
N 210 -650 210 -620 {
lab=GND}
N 210 -740 210 -710 {
lab=VDD}
N 130 -650 130 -620 {
lab=GND}
N 130 -740 130 -710 {
lab=VSS}
N 210 -400 210 -370 {
lab=GND}
N 210 -490 210 -460 {
lab=Vbg}
N 490 -390 520 -390 {lab=VDD}
N 520 -450 520 -420 {lab=#net3}
N 520 -360 560 -360 {
lab=#net2}
N 520 -530 520 -510 {
lab=#net1}
N 560 -390 560 -360 {
lab=#net2}
N 520 -360 520 -350 {
lab=#net2}
N 490 -560 490 -390 {
lab=VDD}
N 420 -330 420 -290 {
lab=Vbg}
N 470 -290 480 -290 {
lab=Vbg}
N 420 -290 470 -290 {
lab=Vbg}
N 520 -260 520 -240 {
lab=#net4}
C {devices/ammeter.sym} 520 -480 0 0 {name=v4}
C {devices/ngspice_probe.sym} 520 -330 0 0 {name=r1}
C {devices/lab_pin.sym} 550 -290 2 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/gnd.sym} 210 -620 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 210 -740 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 130 -680 0 0 {name=V1 value=0}
C {devices/gnd.sym} 130 -620 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 130 -740 0 0 {name=p19 lab=VSS}
C {devices/vsource.sym} 210 -680 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} 520 -620 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 540 -560 0 1 {name=M1
L=0.15
W=1
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/simulator_commands_shown.sym} 810 -790 0 0 {name=COMMANDS1
simulator=ngspice
*spice_ignore=true
spice_ignore=false
only_toplevel=false 
value="
* ngspice commands
*.param W=1

*.dc v3 0 3.3 0.01
.control 
  
  save all


  op
  write biascurrent.raw


  quit 0

.endc
"}
C {sky130_fd_pr/corner.sym} 850 -400 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/launcher.sym} 130 -150 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 210 -430 0 0 {name=V3 value=1.2
}
C {devices/gnd.sym} 210 -370 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 210 -490 0 0 {name=p1 sig_type=std_logic lab=Vbg}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -290 0 0 {name=M2
L=1
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 540 -390 0 1 {name=M3
L=10
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 520 -180 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -330 0 1 {name=p4 sig_type=std_logic lab=Vbg}
C {devices/res.sym} 520 -210 0 1 {name=R3
value=2000e3
footprint=1206
device=resistor
m=1}
C {devices/ngspice_probe.sym} 520 -250 0 0 {name=r2}
