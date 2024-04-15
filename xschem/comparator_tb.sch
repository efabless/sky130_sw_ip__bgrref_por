v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 390 -1000 880 -730 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0002
x2=0.008
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="RST
AVDD

"
color="10 12 6 4"
dataset=-1
unitx=1
logx=0
logy=0}
N 470 -450 520 -450 {
lab=Vinn}
N 470 -510 520 -510 {
lab=Vinp}
N -270 -500 -270 -480 { lab=GND}
N -270 -590 -270 -560 { lab=dvdd}
N -270 -350 -270 -330 { lab=GND}
N -270 -440 -270 -410 { lab=vbg}
N -270 -670 -270 -650 { lab=GND}
N -270 -760 -270 -730 { lab=dvss}
N -120 -670 -120 -650 { lab=GND}
N -120 -760 -120 -730 { lab=avdd}
N -200 -670 -200 -650 { lab=GND}
N -200 -760 -200 -730 { lab=avss}
N 270 -720 270 -660 {
lab=VDD}
N 270 -630 300 -630 {
lab=GND}
N 230 -680 270 -680 {
lab=VDD}
N 230 -680 230 -630 {
lab=VDD}
N 250 -330 250 -280 {
lab=GND}
N 250 -280 270 -280 {
lab=GND}
N 270 -300 270 -280 {
lab=GND}
N 270 -540 270 -520 {
lab=#net1}
N 270 -460 270 -440 {
lab=Vinp}
N 270 -380 270 -360 {
lab=Vinn}
N 250 -410 250 -330 {
lab=GND}
N 250 -490 250 -410 {
lab=GND}
N 120 -310 120 -280 {
lab=Iref}
N 1230 -410 1230 -380 {
lab=#net2}
N 1130 -440 1190 -440 {
lab=#net3}
N 1090 -550 1090 -470 {
lab=#net3}
N 1230 -550 1230 -470 {
lab=#net4}
N 1090 -410 1090 -260 {
lab=GND}
N 1090 -260 1230 -260 {
lab=GND}
N 1090 -700 1090 -680 {
lab=avdd}
N 1090 -700 1230 -700 {
lab=avdd}
N 1230 -700 1230 -680 {
lab=avdd}
N 1230 -620 1230 -610 {
lab=#net5}
N 1090 -620 1090 -610 {
lab=#net6}
N 1130 -580 1190 -580 {
lab=#net4}
N 1170 -580 1170 -540 {
lab=#net4}
N 1170 -540 1230 -540 {
lab=#net4}
N 1090 -490 1140 -490 {
lab=#net3}
N 1140 -490 1140 -440 {
lab=#net3}
N 1230 -380 1230 -320 {
lab=#net2}
N 1070 -580 1090 -580 {
lab=avdd}
N 1230 -580 1240 -580 {
lab=avdd}
N 1070 -440 1090 -440 {
lab=avss}
N 1230 -440 1250 -440 {
lab=avss}
N 1070 -700 1070 -580 {
lab=avdd}
N 1070 -700 1090 -700 {
lab=avdd}
N 1240 -580 1250 -580 {
lab=avdd}
N 1250 -700 1250 -580 {
lab=avdd}
N 1230 -700 1250 -700 {
lab=avdd}
C {devices/lab_wire.sym} 520 -350 0 0 {name=p1 lab=Iref}
C {devices/lab_wire.sym} 520 -450 0 0 {name=p2 lab=Vinn}
C {devices/lab_wire.sym} 520 -510 0 0 {name=p3 lab=Vinp}
C {devices/lab_wire.sym} 680 -480 0 1 {name=p4 lab=RST}
C {comparator_v2.sym} 580 -480 0 0 {name=x1}
C {devices/lab_wire.sym} 520 -370 0 0 {name=p10 lab=avss}
C {devices/lab_wire.sym} 520 -410 0 0 {name=p13 lab=avdd}
C {devices/lab_wire.sym} 520 -390 0 0 {name=p5 lab=dvdd}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/code.sym} 770 -600 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=false}
C {devices/code.sym} 770 -410 0 0 {name=ngspice only_toplevel=false 
value="
*.option method=gear
.options savecurrents
.control
set temp=27
save all
tran 1u 8m
plot AVDD RST
meas tran Ivdd AVG i(V10)
write comparator_tb.raw
*quit 0
.endc
"}
C {devices/ammeter.sym} 1230 -650 0 1 {name=v8}
C {devices/gnd.sym} -270 -480 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -270 -330 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -270 -700 0 1 {name=V9 value="0"}
C {devices/gnd.sym} -270 -650 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -270 -760 0 0 {name=p15 lab=dvss}
C {devices/gnd.sym} -120 -650 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} -120 -760 0 0 {name=p16 lab=avdd}
C {devices/lab_wire.sym} -270 -590 0 0 {name=p18 lab=dvdd}
C {devices/lab_wire.sym} -270 -440 0 0 {name=p19 lab=vbg}
C {devices/vsource.sym} -120 -700 0 0 {name=V10 value="PULSE 0 3.3 10n 1m 1m 1m 4m"}
C {devices/vsource.sym} -200 -700 0 1 {name=V11 value="0"}
C {devices/gnd.sym} -200 -650 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -200 -760 0 0 {name=p20 lab=avss}
C {devices/vsource.sym} -270 -530 0 0 {name=V12 value="PULSE 0 1.8 10n 1.1m 1m 0.9m 4m"}
C {devices/vsource.sym} -270 -380 0 0 {name=V13 value="PULSE 0 1.2 10n 0.5m 0.5m 2m 4m"}
C {devices/ngspice_get_value.sym} 340 -660 0 1 {name=r1 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[w])
descr="W="}
C {devices/ngspice_get_value.sym} 340 -710 0 1 {name=r3 node=@m.xm1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {devices/gnd.sym} 300 -630 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_05v0_nvt_nf.sym} 250 -630 0 0 {name=M1
W=1
L=0.9
nf=2
mult=2
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {devices/vdd.sym} 270 -720 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 270 -280 0 0 {name=l12 lab=GND}
C {devices/ammeter.sym} 270 -570 0 0 {name=Vr1}
C {devices/ngspice_probe.sym} 270 -530 0 0 {name=r11}
C {devices/ngspice_probe.sym} 270 -450 0 0 {name=r14}
C {devices/ngspice_probe.sym} 270 -370 0 0 {name=r15}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 270 -330 0 0 {name=R4
L=235
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 270 -410 0 0 {name=R10
L=10.4
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 270 -490 0 0 {name=R12
L=120
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 270 -440 0 0 {name=p6 lab=Vinp}
C {devices/lab_wire.sym} 270 -360 0 0 {name=p7 lab=Vinn}
C {devices/launcher.sym} 150 -800 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {devices/isource.sym} 120 -340 0 1 {name=I0 value=0.25e-6}
C {devices/vdd.sym} 120 -370 0 0 {name=l13 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1110 -580 0 1 {name=M2
L=1
W=1.5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1110 -440 0 1 {name=M3
L=2
W=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1210 -440 0 0 {name=M4
L=2
W=4
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
C {sky130_fd_pr/res_xhigh_po.sym} 1230 -290 0 0 {name=R7
W=1
L=97
model=res_xhigh_po
spiceprefix=X
 mult=1}
C {devices/gnd.sym} 1230 -260 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 1210 -290 1 0 {name=l15 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1210 -580 0 0 {name=M5
L=1
W=1.5
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
C {devices/ammeter.sym} 1090 -650 0 1 {name=v1}
C {devices/lab_wire.sym} 1140 -700 0 0 {name=p9 lab=avdd}
C {devices/lab_wire.sym} 1070 -440 0 0 {name=p11 lab=avss}
C {devices/lab_wire.sym} 1250 -440 0 1 {name=p12 lab=avss}
C {devices/lab_wire.sym} 120 -280 0 0 {name=p8 lab=Iref}
