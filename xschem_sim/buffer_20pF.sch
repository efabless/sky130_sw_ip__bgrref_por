v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 620 -930 1110 -660 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout
"
color="10 12 6 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N 240 -310 240 -290 { lab=GND}
N 240 -400 240 -370 { lab=VCCL}
N 240 -480 240 -460 { lab=GND}
N 240 -570 240 -540 { lab=VSS}
N 610 -400 640 -400 {lab=VSS}
N 610 -450 610 -430 {
lab=#net1}
N 610 -520 640 -520 {lab=VCCL}
N 610 -490 610 -450 {
lab=#net1}
N 640 -560 640 -520 {
lab=VCCL}
N 610 -370 610 -350 {
lab=VSS}
N 610 -560 610 -550 {
lab=VCCL}
N 610 -560 640 -560 {
lab=VCCL}
N 610 -470 650 -470 {
lab=#net1}
N 640 -400 640 -350 {
lab=VSS}
N 610 -350 640 -350 {
lab=VSS}
N 570 -520 570 -400 {
lab=vin}
N 740 -400 770 -400 {lab=VSS}
N 740 -450 740 -430 {
lab=#net2}
N 740 -520 770 -520 {lab=VCCL}
N 740 -490 740 -450 {
lab=#net2}
N 770 -560 770 -520 {
lab=VCCL}
N 740 -370 740 -350 {
lab=VSS}
N 740 -560 740 -550 {
lab=VCCL}
N 740 -560 770 -560 {
lab=VCCL}
N 740 -470 780 -470 {
lab=#net2}
N 770 -400 770 -350 {
lab=VSS}
N 740 -350 770 -350 {
lab=VSS}
N 650 -470 700 -470 {
lab=#net1}
N 700 -520 700 -400 {
lab=#net1}
N 540 -470 570 -470 {
lab=vin}
N 440 -320 440 -300 { lab=GND}
N 440 -410 440 -380 { lab=vin}
N 440 -470 440 -410 {
lab=vin}
N 440 -470 540 -470 {
lab=vin}
N 1120 -460 1120 -450 {
lab=vout}
N 860 -400 890 -400 {lab=VSS}
N 860 -450 860 -430 {
lab=#net3}
N 860 -520 890 -520 {lab=VCCL}
N 860 -490 860 -450 {
lab=#net3}
N 890 -560 890 -520 {
lab=VCCL}
N 860 -370 860 -350 {
lab=VSS}
N 860 -560 860 -550 {
lab=VCCL}
N 860 -560 890 -560 {
lab=VCCL}
N 890 -400 890 -350 {
lab=VSS}
N 860 -350 890 -350 {
lab=VSS}
N 820 -520 820 -400 {
lab=#net2}
N 980 -400 1010 -400 {lab=VSS}
N 980 -450 980 -430 {
lab=vout}
N 980 -520 1010 -520 {lab=VCCL}
N 980 -490 980 -450 {
lab=vout}
N 1010 -560 1010 -520 {
lab=VCCL}
N 980 -370 980 -350 {
lab=VSS}
N 980 -560 980 -550 {
lab=VCCL}
N 980 -560 1010 -560 {
lab=VCCL}
N 1010 -400 1010 -350 {
lab=VSS}
N 980 -350 1010 -350 {
lab=VSS}
N 940 -520 940 -400 {
lab=#net3}
N 980 -460 1120 -460 {
lab=vout}
N 780 -470 820 -470 {
lab=#net2}
N 860 -470 940 -470 {
lab=#net3}
C {devices/gnd.sym} 240 -290 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 240 -510 0 1 {name=Vdvss value="DC 0"}
C {devices/gnd.sym} 240 -460 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 590 -400 0 0 {name=M27
L=0.15
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 590 -520 0 0 {name=M29
L=0.15
W=1.4
nf=2
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
C {devices/lab_pin.sym} 630 -350 2 0 {name=p55 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 -560 3 1 {name=p56 sig_type=std_logic lab=VCCL}
C {sky130_fd_pr/nfet_01v8.sym} 720 -400 0 0 {name=M30
L=0.15
W=0.5
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 720 -520 0 0 {name=M31
L=0.15
W=1.4
nf=2
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 760 -350 2 0 {name=p57 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -560 3 1 {name=p58 sig_type=std_logic lab=VCCL}
C {devices/lab_pin.sym} 240 -400 2 0 {name=p1 sig_type=std_logic lab=VCCL}
C {devices/vsource.sym} 240 -340 0 1 {name=Vdvdd value="DC 1.8"}
C {devices/lab_pin.sym} 240 -570 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 440 -300 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 440 -350 0 0 {name=Vavdd value="PULSE 0 1.8 10e-9 10e-12 10e-12 200e-9 400e-9"}
C {devices/lab_pin.sym} 470 -470 2 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/capa.sym} 1120 -420 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1120 -390 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 840 -400 0 0 {name=M1
L=0.15
W=0.5
nf=1 
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 840 -520 0 0 {name=M2
L=0.15
W=1.4
nf=2
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 880 -350 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 860 -560 3 1 {name=p6 sig_type=std_logic lab=VCCL}
C {sky130_fd_pr/nfet_01v8.sym} 960 -400 0 0 {name=M3
L=0.15
W=0.5
nf=1 
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 960 -520 0 0 {name=M4
L=0.15
W=1.4
nf=2
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
C {devices/lab_pin.sym} 1000 -350 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 980 -560 3 1 {name=p8 sig_type=std_logic lab=VCCL}
C {devices/code.sym} 260 -800 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=false}
C {devices/simulator_commands_shown.sym} 1220 -640 0 0 {name=COMMANDS1
simulator=ngspice
*spice_ignore=true
spice_ignore=false
only_toplevel=false 
value="
* ngspice commands

.options savecurrents
.control 
  set temp=27
  save all
  op
  write buffer_20pF.raw
  set appendwrite
  tran 1n 2u
  meas tran Iavg AVG i(Vdvdd)
  meas tran tdiff TRIG v(vin) val=0.9 RISE=1 TARG v(vout) val=0.9 RISE=1
   write buffer_20pF.raw
  *quit 0

.endc
"}
C {devices/lab_pin.sym} 1040 -460 2 0 {name=p9 sig_type=std_logic lab=vout}
C {devices/launcher.sym} 440 -640 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/buffer_20pF.raw tran"
}
