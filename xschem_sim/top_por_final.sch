v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1720 -390 2210 -120 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00021096131
x2=0.0019561844
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="por
porb
avdd
"
color="10 6 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
T {VA-VB=62.8mV} 500 -610 0 0 0.4 0.4 {}
N 710 -890 710 -830 {
lab=avdd}
N 710 -800 740 -800 {
lab=GND}
N 670 -850 710 -850 {
lab=avdd}
N 670 -850 670 -800 {
lab=avdd}
N 690 -500 690 -450 {
lab=GND}
N 690 -450 710 -450 {
lab=GND}
N 710 -470 710 -450 {
lab=GND}
N 710 -710 710 -690 {
lab=#net1}
N 710 -630 710 -610 {
lab=Vinp}
N 710 -550 710 -530 {
lab=Vinn}
N 690 -580 690 -500 {
lab=GND}
N 690 -660 690 -580 {
lab=GND}
N 860 -610 940 -610 {
lab=Vinp}
N 890 -550 940 -550 {
lab=Vinn}
N 870 -510 940 -510 {
lab=avdd}
N 910 -890 910 -850 {
lab=vindiff}
N 1100 -580 1170 -580 {
lab=Vout}
N 320 -800 320 -780 { lab=GND}
N 320 -890 320 -860 { lab=avdd}
N 220 -690 220 -660 {
lab=dvdd}
N 430 -760 430 -730 {
lab=vbg}
N 220 -600 220 -570 {
lab=GND}
N 430 -670 430 -640 {
lab=GND}
N 320 -430 320 -400 {
lab=GND}
N 320 -520 320 -490 {
lab=vss}
C {devices/lab_wire.sym} 940 -550 0 0 {name=p2 lab=Vinn}
C {devices/lab_wire.sym} 940 -610 0 0 {name=p3 lab=Vinp}
C {devices/launcher.sym} 280 -180 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/ngspice_get_value.sym} 780 -830 0 1 {name=r2 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[w])
descr="W="}
C {devices/ngspice_get_value.sym} 780 -880 0 1 {name=r3 node=@m.xm1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {devices/gnd.sym} 740 -800 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 710 -450 0 0 {name=l12 lab=GND}
C {devices/ammeter.sym} 710 -740 0 0 {name=Vr1}
C {devices/ngspice_probe.sym} 710 -700 0 0 {name=r11}
C {devices/ngspice_probe.sym} 710 -620 0 0 {name=r14}
C {devices/ngspice_probe.sym} 710 -540 0 0 {name=r15}
C {devices/lab_wire.sym} 710 -610 0 1 {name=p11 lab=Vinp}
C {devices/lab_wire.sym} 710 -530 0 1 {name=p12 lab=Vinn}
C {devices/launcher.sym} 1770 -70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/top_por_final.raw tran"
}
C {devices/lab_wire.sym} 1100 -580 0 1 {name=p4 lab=Vout}
C {devices/vcvs.sym} 910 -820 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} 870 -840 0 0 {name=p6 lab=Vinp}
C {devices/lab_wire.sym} 870 -800 0 0 {name=p7 lab=Vinn}
C {devices/gnd.sym} 910 -790 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 910 -890 0 1 {name=p8 lab=vindiff}
C {comparator_final.sym} 1000 -580 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 710 -500 0 0 {name=R1
L=250
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 710 -580 0 0 {name=R10
L=9
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 710 -660 0 0 {name=R12
L=150
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {delayPulse_final.sym} 1230 -550 0 0 {name=x2}
C {devices/lab_wire.sym} 1370 -550 0 1 {name=p14 lab=porb_h}
C {devices/lab_wire.sym} 1370 -570 0 1 {name=p9 lab=porb}
C {devices/lab_wire.sym} 1370 -590 0 1 {name=p21 lab=por}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 690 -800 0 0 {name=M2
L=0.9
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {devices/gnd.sym} 320 -780 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 320 -890 0 0 {name=p10 lab=avdd}
C {devices/lab_wire.sym} 920 -510 0 0 {name=p5 lab=avdd}
C {devices/lab_wire.sym} 940 -490 0 0 {name=p15 lab=dvdd
}
C {devices/lab_wire.sym} 1170 -440 0 0 {name=p20 lab=avdd}
C {devices/lab_wire.sym} 1170 -460 0 0 {name=p26 lab=vbg}
C {devices/lab_wire.sym} 1170 -500 0 0 {name=p27 lab=dvdd
}
C {devices/lab_wire.sym} 710 -890 0 0 {name=p28 lab=avdd}
C {devices/vsource.sym} 220 -630 0 0 {name=Vdvdd value="PULSE 0 1.8 10n 1.1m 1m 200m 400m"}
C {devices/gnd.sym} 220 -570 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 430 -640 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 430 -700 0 0 {name=Vvbg value="PULSE 0 1.2 10n 0.5m 1m 200m 400m"}
C {devices/vsource.sym} 320 -460 0 0 {name=Vvss value=0}
C {devices/gnd.sym} 320 -400 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 320 -520 0 0 {name=p31 lab=vss}
C {devices/lab_wire.sym} 220 -690 0 0 {name=p29 lab=dvdd
}
C {devices/lab_wire.sym} 430 -760 0 0 {name=p30 lab=vbg}
C {devices/vsource.sym} 320 -830 0 0 {name=Vavdd value="PULSE 0 3.3 10n 1m 1m 100m 200m"}
C {devices/lab_wire.sym} 940 -470 0 0 {name=p1 lab=vss}
C {devices/lab_wire.sym} 1170 -480 0 0 {name=p13 lab=vss}
C {devices/code.sym} 1520 -250 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=false}
C {devices/simulator_commands_shown.sym} 1490 -930 0 0 {name=COMMANDS1
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
  save @m.xm1.msky130_fd_pr__nfet_05v0_nvt[gm]
  save @m.xm1.msky130_fd_pr__nfet_05v0_nvt[id]
  op
  write top_por_final.raw
  set appendwrite
  tran 1u 55m
  *tran 1u 2m
  *tran 1u 100m
  meas tran Ivdd AVG i(Vavdd)
  meas tran yAvdd FIND v(avdd) WHEN v(por)=0.9 RISE=1
  meas tran porPulse TRIG v(por) VAL=0.9 RISE=1 TARG v(por) VAL=0.9 FALL=1
  write top_por_final.raw
  *quit 0

.endc
"}
C {devices/capa.sym} 1290 -310 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1290 -340 0 1 {name=p17 lab=por}
C {devices/capa.sym} 1190 -310 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1190 -340 0 1 {name=p19 lab=porb}
C {devices/gnd.sym} 1190 -280 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1290 -280 0 0 {name=l3 lab=GND}
