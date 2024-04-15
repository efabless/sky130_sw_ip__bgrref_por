v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 390 -1000 880 -730 {flags=graph
y1=-0.756
y2=3.5

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="
vbn
vbg
avdd
"
color="10 6 4 7"
dataset=-1
unitx=1
logx=0
logy=0}
B 2 950 -1000 1440 -730 {flags=graph
y1=0
y2=1e-6

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="
i(vr1)
i(vr2)
"
color="10 6 4 7"
dataset=-1
unitx=1
logx=0
logy=0}
N 1420 -530 1450 -530 {lab=avdd}
N 920 -530 1060 -530 {
lab=#net1}
N 920 -270 940 -270 {
lab=vbn}
N 940 -310 940 -270 {
lab=vbn}
N 940 -270 960 -270 {
lab=vbn}
N 880 -620 880 -560 {
lab=avdd}
N 750 -620 960 -620 {
lab=avdd}
N 1410 -620 1420 -620 {
lab=avdd}
N 1420 -620 1420 -560 {
lab=avdd}
N 1450 -620 1450 -530 {
lab=avdd}
N 1420 -620 1450 -620 {
lab=avdd}
N 820 -620 820 -530 {
lab=avdd}
N 720 -620 750 -620 {
lab=avdd}
N 880 -500 880 -490 {
lab=vbn}
N 1420 -270 1450 -270 {lab=avss}
N 1360 -270 1380 -270 {
lab=vbn}
N 1020 -270 1040 -270 {
lab=vbn}
N 1420 -500 1420 -490 {
lab=#net1}
N 960 -270 1020 -270 {
lab=vbn}
N 750 -90 970 -90 {
lab=avss}
N 610 -210 640 -210 {lab=avss}
N 680 -210 700 -210 {
lab=vbn}
N 700 -210 720 -210 {
lab=vbn}
N 880 -150 880 -90 {
lab=avss}
N 1420 -180 1420 -160 {
lab=#net2}
N 640 -250 640 -240 {
lab=#net3}
N -130 -690 -130 -670 { lab=GND}
N -130 -780 -130 -750 { lab=avdd}
N -210 -690 -210 -670 { lab=GND}
N -210 -780 -210 -750 { lab=avss}
N 1420 -100 1420 -90 {
lab=avss}
N 1400 -130 1400 -90 {
lab=avss}
N 880 -180 880 -150 {
lab=avss}
N 880 -310 880 -300 {
lab=vbn}
N 960 -620 1410 -620 {
lab=avdd}
N 1330 -530 1330 -460 {
lab=#net1}
N 1330 -460 1420 -460 {
lab=#net1}
N 970 -90 1420 -90 {
lab=avss}
N 880 -310 940 -310 {
lab=vbn}
N 640 -180 640 -150 {
lab=avss}
N 710 -470 710 -420 {
lab=#net1}
N 650 -390 670 -390 {
lab=#net4}
N 710 -390 720 -390 {
lab=avss}
N 870 -270 880 -270 {
lab=avss}
N -220 -400 -220 -380 { lab=GND}
N -220 -490 -220 -460 { lab=vbg}
N 1060 -530 1380 -530 {
lab=#net1}
N 1420 -490 1420 -460 {
lab=#net1}
N 880 -490 880 -460 {
lab=vbn}
N 880 -350 880 -310 {
lab=vbn}
N 880 -460 880 -410 {
lab=vbn}
N 1040 -270 1360 -270 {
lab=vbn}
N -90 -210 -90 -200 {
lab=GND}
N -110 -240 -110 -200 {
lab=GND}
N -110 -200 -90 -200 {
lab=GND}
N 710 -360 710 -310 {
lab=vbn}
N 710 -310 880 -310 {
lab=vbn}
N 1420 -460 1420 -300 {
lab=#net1}
N 880 -410 880 -350 {
lab=vbn}
N 820 -530 880 -530 {
lab=avdd}
N 710 -470 960 -470 {
lab=#net1}
N 960 -530 960 -470 {
lab=#net1}
N 640 -150 640 -90 {
lab=avss}
N 640 -90 750 -90 {
lab=avss}
N 640 -390 640 -310 {
lab=#net4}
N 640 -420 640 -390 {
lab=#net4}
N 640 -620 640 -480 {
lab=avdd}
N 640 -620 720 -620 {
lab=avdd}
N 640 -390 650 -390 {
lab=#net4}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/launcher.sym} 150 -800 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/bmr_tb.raw tran"
}
C {devices/simulator_commands_shown.sym} 100 -690 0 0 {name=COMMANDS1
simulator=ngspice
*spice_ignore=true
spice_ignore=false
only_toplevel=false 
value="
* ngspice commands
.options savecurrents
*.dc v3 0 3.3 0.01
.control 
  set temp=27
  save all
  op
  write bmr_tb.raw
  set appendwrite
  *dc v3 0 3.3 0.01
  *tran .5u 8m
  tran 0.5u 2m
  *meas tran Ivdd AVG i(V10)
  
  write bmr_tb.raw
  *quit 0

.endc
"}
C {devices/code.sym} 130 -240 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=false}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1400 -530 0 0 {name=M18
W=1
L=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 900 -530 0 1 {name=M20
W=1
L=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1420 -130 0 0 {name=R12
L=24
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 860 -90 3 0 {name=l28 lab=avss}
C {devices/lab_pin.sym} 1000 -620 1 0 {name=l29 lab=avdd
}
C {devices/lab_pin.sym} 940 -310 0 1 {name=l34 lab=vbn}
C {devices/lab_pin.sym} 610 -210 1 1 {name=l1 lab=avss}
C {devices/lab_pin.sym} 870 -270 3 0 {name=l3 lab=avss}
C {devices/lab_pin.sym} 1450 -270 3 0 {name=l4 lab=avss}
C {devices/ammeter.sym} 880 -210 0 0 {name=vr1}
C {devices/ammeter.sym} 1420 -210 0 0 {name=vr2}
C {devices/ngspice_probe.sym} 980 -530 0 0 {name=r4}
C {devices/ammeter.sym} 640 -280 0 1 {name=vr3}
C {devices/gnd.sym} -130 -670 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} -130 -780 0 0 {name=p2 lab=avdd}
C {devices/vsource.sym} -130 -720 0 0 {name=V10 value="PULSE 0 1.2 10n 1m 1m 1m 4m"}
C {devices/vsource.sym} -210 -720 0 1 {name=V6 value="0"}
C {devices/gnd.sym} -210 -670 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} -210 -780 0 0 {name=p5 lab=avss}
C {devices/lab_pin.sym} 720 -210 0 1 {name=l7 lab=vbn}
C {devices/ngspice_probe.sym} 1020 -270 0 0 {name=r3}
C {devices/ngspice_probe.sym} 1420 -170 0 0 {name=r1}
C {devices/ngspice_probe.sym} 880 -300 0 0 {name=r2}
C {devices/gnd.sym} -220 -380 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -220 -490 0 0 {name=p19 lab=vbg}
C {devices/vsource.sym} -220 -430 0 0 {name=V13 value="PULSE 0 1.2 10n 0.5m 0.5m 2m 4m"}
C {devices/ngspice_probe.sym} 640 -320 0 1 {name=r5}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -90 -240 0 0 {name=R6
L=18
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {devices/gnd.sym} -110 -200 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 900 -270 0 1 {name=M7
W=1
L=1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1400 -270 0 0 {name=M10
W=2
L=1
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
C {devices/capa.sym} 640 -450 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 690 -390 0 0 {name=M2
W=4
L=0.5
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
C {devices/lab_pin.sym} 720 -390 3 0 {name=l5 lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 660 -210 0 1 {name=M1
L=0.3
W=4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
