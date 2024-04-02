v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1190 -690 1680 -420 {flags=graph
y1=0
y2=2e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
node="
i(vr2)
i(vr1)
*i(@m.xm1.msky130_fd_pr__nfet_05v0_nvt[id])


"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
hilight_wave=0}
B 2 1190 -390 1680 -120 {flags=graph
y1=0
y2=3.3
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
node="Vout
Vinp
vinn
VDD
\\x1.vo1"
color="10 12 6 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2}
B 2 650 -390 1140 -120 {flags=graph
y1=0
y2=0.1
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
node="vindiff

"
color="10 12 6 4"
dataset=-1
unitx=1
logx=0
logy=0}
B 2 1720 -390 2210 -120 {flags=graph
y1=0
y2=4
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
node="por
porb
x2.td_sd
"
color="10 6 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1}
B 2 1690 -980 2180 -710 {flags=graph
y1=0
y2=3.4
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
x1.vbn
x1.vo
x1.vbp
x1.vd
x1.vt
"
color="10 6 7 8 11"
dataset=-1
unitx=1
logx=0
logy=0}
T {VA-VB=62.8mV} 500 -610 0 0 0.4 0.4 {}
N 460 -330 460 -300 {
lab=GND}
N 460 -420 460 -390 {
lab=VDD}
N 280 -340 280 -310 {
lab=#net1}
N 710 -890 710 -830 {
lab=VDD}
N 710 -800 740 -800 {
lab=GND}
N 670 -850 710 -850 {
lab=VDD}
N 670 -850 670 -800 {
lab=VDD}
N 690 -500 690 -450 {
lab=GND}
N 690 -450 710 -450 {
lab=GND}
N 710 -470 710 -450 {
lab=GND}
N 710 -710 710 -690 {
lab=#net2}
N 710 -630 710 -610 {
lab=Vinp1}
N 710 -550 710 -530 {
lab=Vinn1}
N 690 -580 690 -500 {
lab=GND}
N 690 -660 690 -580 {
lab=GND}
N 860 -610 940 -610 {
lab=Vinp1}
N 890 -550 940 -550 {
lab=Vinn1}
N 870 -650 870 -510 {
lab=VDD}
N 870 -510 940 -510 {
lab=VDD}
N 870 -470 940 -470 {
lab=GND}
N 870 -470 870 -430 {
lab=GND}
N 910 -890 910 -850 {
lab=vindiff}
N 350 -600 350 -570 {
lab=VCCL}
N 1720 -420 1790 -420 {
lab=VDD}
N 1790 -460 1790 -420 {
lab=VDD}
N 480 -600 480 -570 {
lab=Vbg}
N 350 -510 350 -480 {
lab=GND}
N 480 -510 480 -480 {
lab=GND}
N 380 -330 380 -300 {
lab=GND}
N 380 -420 380 -390 {
lab=VSS}
N 1930 -520 1930 -500 {
lab=#net3}
N 1060 -890 1060 -850 {
lab=Vinn}
N 1170 -890 1170 -850 {
lab=Vinp}
C {devices/lab_wire.sym} 940 -450 0 0 {name=p1 lab=Iref}
C {devices/lab_wire.sym} 940 -550 0 0 {name=p2 lab=Vinn1}
C {devices/lab_wire.sym} 940 -610 0 0 {name=p3 lab=Vinp1}
C {devices/vsource.sym} 460 -360 0 0 {name=V3 value="PULSE 0 3.3 10n 1m 1m 100m 200m"}
C {devices/gnd.sym} 460 -300 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 460 -420 0 0 {name=l6 lab=VDD}
C {devices/launcher.sym} 280 -180 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/isource.sym} 280 -370 0 1 {name=I0 value=100n}
C {devices/ngspice_get_value.sym} 780 -830 0 1 {name=r2 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[w])
descr="W="}
C {devices/ngspice_get_value.sym} 780 -880 0 1 {name=r3 node=@m.xm1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {devices/gnd.sym} 740 -800 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/nfet_05v0_nvt_nf.sym} 690 -800 0 0 {name=M1
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
C {devices/vdd.sym} 710 -890 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 710 -450 0 0 {name=l12 lab=GND}
C {devices/ammeter.sym} 710 -740 0 0 {name=Vr1}
C {devices/ngspice_probe.sym} 710 -700 0 0 {name=r11}
C {devices/ngspice_probe.sym} 710 -620 0 0 {name=r14}
C {devices/ngspice_probe.sym} 710 -540 0 0 {name=r15}
C {devices/lab_wire.sym} 710 -610 0 1 {name=p11 lab=Vinp1}
C {devices/lab_wire.sym} 710 -530 0 1 {name=p12 lab=Vinn1}
C {devices/simulator_commands_shown.sym} 20 -870 0 0 {name=COMMANDS1
simulator=ngspice
*spice_ignore=true
spice_ignore=false
only_toplevel=false 
value="
* ngspice commands
*.param W=1
.options savecurrents
*.dc v3 0 3.3 0.01
.control 
  set temp=85
  save all
  save @m.xm1.msky130_fd_pr__nfet_05v0_nvt[gm]
  save @m.xm1.msky130_fd_pr__nfet_05v0_nvt[id]
  op
  write top_por_v2.raw
  set appendwrite
  *dc v3 0 3.3 0.01
  tran .1u 2m
  write top_por_v2.raw
  quit 0

.endc
"}
C {devices/vdd.sym} 870 -650 0 0 {name=l8 lab=VDD}
C {devices/launcher.sym} 1250 -750 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/top_por_v2.raw tran"
}
C {devices/gnd.sym} 870 -430 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1100 -580 0 1 {name=p4 lab=Vout}
C {devices/vcvs.sym} 910 -820 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} 870 -840 0 0 {name=p6 lab=Vinp}
C {devices/lab_wire.sym} 870 -800 0 0 {name=p7 lab=Vinn}
C {devices/gnd.sym} 910 -790 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 910 -890 0 1 {name=p8 lab=vindiff}
C {comparator.sym} 1000 -580 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 710 -500 0 0 {name=R1
L=235
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 710 -580 0 0 {name=R10
L=10.4
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 710 -660 0 0 {name=R12
L=120
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_wire.sym} 350 -600 0 0 {name=p10 lab=VCCL}
C {delayPulse.sym} 1850 -570 0 0 {name=x2}
C {devices/lab_wire.sym} 1990 -570 0 1 {name=p14 lab=porb_h}
C {devices/lab_wire.sym} 1790 -520 0 0 {name=p15 lab=VCCL}
C {devices/lab_wire.sym} 1790 -500 0 0 {name=p16 lab=VSS}
C {devices/lab_wire.sym} 1790 -480 0 0 {name=p17 lab=Vbg}
C {devices/vdd.sym} 1720 -420 0 0 {name=l16 lab=VDD}
C {devices/lab_wire.sym} 480 -600 0 0 {name=p18 lab=Vbg}
C {devices/vsource.sym} 350 -540 0 0 {name=V1 value="PULSE 0 1.8 10n 1.1m 1m 200mm 400m"}
C {devices/gnd.sym} 350 -480 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 480 -480 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 480 -540 0 0 {name=V2 value="PULSE 0 1.2 10n 0.5m 1m 200mm 400m"}
C {devices/lab_wire.sym} 1790 -600 0 0 {name=p13 lab=Vout}
C {devices/vsource.sym} 380 -360 0 0 {name=V4 value=0}
C {devices/gnd.sym} 380 -300 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 380 -420 0 0 {name=p19 lab=VSS}
C {devices/lab_wire.sym} 940 -490 0 0 {name=p5 lab=VCCL}
C {devices/lab_wire.sym} 1990 -590 0 1 {name=p9 lab=porb}
C {devices/lab_wire.sym} 1990 -610 0 1 {name=p21 lab=por}
C {devices/code.sym} 40 -450 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=false}
C {devices/vdd.sym} 280 -400 0 0 {name=l7 lab=VDD}
C {devices/lab_wire.sym} 1930 -440 0 0 {name=p20 lab=Iref}
C {devices/vcvs.sym} 1060 -820 0 0 {name=E2 value=1}
C {devices/lab_wire.sym} 1020 -840 0 0 {name=p22 lab=Vinn1}
C {devices/gnd.sym} 1060 -790 0 0 {name=l3 lab=GND}
C {devices/vcvs.sym} 1170 -820 0 0 {name=E3 value=1}
C {devices/lab_wire.sym} 1130 -840 0 0 {name=p24 lab=Vinp1}
C {devices/gnd.sym} 1170 -790 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 1020 -800 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 1130 -800 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 1170 -890 0 0 {name=p23 lab=Vinp}
C {devices/lab_wire.sym} 1060 -890 0 0 {name=p25 lab=Vinn}
C {devices/ammeter.sym} 1930 -470 0 0 {name=Vr2}
