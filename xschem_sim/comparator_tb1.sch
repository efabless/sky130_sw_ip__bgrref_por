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
x2=0.008
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="RST
AVDD
x1.Sel
x1.vo1
"
color="10 6 4 7"
dataset=-1
unitx=1
logx=0
logy=0}
B 2 990 -890 1480 -620 {flags=graph
y1=-0.0054
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.008
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.vo
x1.vd
x1.vt

"
color="10 6 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
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
N -700 -630 -700 -610 {
lab=Iref}
N -520 -910 -520 -880 { lab=avdd}
N -520 -800 -520 -780 { lab=#net1}
N -520 -800 -440 -800 { lab=#net1}
N -440 -850 -440 -800 { lab=#net1}
N -520 -690 -440 -690 { lab=#net2}
N -440 -750 -440 -690 { lab=#net2}
N -520 -910 -410 -910 {
lab=avdd}
N -540 -750 -520 -750 {
lab=avdd}
N -540 -850 -540 -750 {
lab=avdd}
N -540 -910 -520 -910 {
lab=avdd}
N -540 -850 -520 -850 {
lab=avdd}
N -520 -540 -490 -540 {lab=avss}
N -520 -510 -520 -460 {
lab=#net3}
N -700 -910 -700 -880 { lab=avdd}
N -700 -820 -700 -780 { lab=#net4}
N -700 -910 -540 -910 {
lab=avdd}
N -720 -850 -700 -850 {
lab=avdd}
N -660 -850 -660 -810 {
lab=#net1}
N -660 -810 -520 -810 {
lab=#net1}
N -700 -720 -700 -690 {
lab=#net5}
N -590 -540 -560 -540 {
lab=vbg}
N -720 -910 -720 -850 {
lab=avdd}
N -720 -750 -700 -750 {
lab=avdd}
N -720 -850 -720 -750 {
lab=avdd}
N -660 -750 -610 -750 {
lab=#net2}
N -610 -710 -610 -700 {
lab=#net2}
N -520 -690 -520 -660 {
lab=#net2}
N -520 -600 -520 -570 {
lab=#net6}
N -610 -700 -520 -700 {
lab=#net2}
N -830 -790 -830 -710 {
lab=#net2}
N -830 -710 -610 -710 {
lab=#net2}
N -830 -910 -830 -850 {
lab=avdd}
N -720 -910 -700 -910 {
lab=avdd}
N -540 -430 -540 -370 {
lab=avss}
N -440 -850 -410 -850 {
lab=#net1}
N -480 -750 -440 -750 {
lab=#net2}
N -520 -810 -520 -800 { lab=#net1}
N -480 -850 -440 -850 {
lab=#net1}
N -520 -700 -520 -690 {
lab=#net2}
N -540 -910 -540 -850 {
lab=avdd}
N -830 -910 -720 -910 {
lab=avdd}
N -520 -820 -520 -810 { lab=#net1}
N -520 -720 -520 -700 {
lab=#net2}
N -610 -750 -610 -710 {
lab=#net2}
N 210 -680 210 -620 {
lab=avdd}
N 210 -590 240 -590 {
lab=GND}
N 170 -640 210 -640 {
lab=avdd}
N 170 -640 170 -590 {
lab=avdd}
N 190 -290 190 -240 {
lab=GND}
N 190 -240 210 -240 {
lab=GND}
N 210 -260 210 -240 {
lab=GND}
N 210 -500 210 -480 {
lab=#net7}
N 210 -420 210 -400 {
lab=Vinp}
N 210 -340 210 -320 {
lab=Vinn}
N 190 -370 190 -290 {
lab=GND}
N 190 -450 190 -370 {
lab=GND}
N -170 -270 -170 -230 {
lab=vindiff}
C {devices/lab_wire.sym} 520 -350 0 0 {name=p1 lab=Iref}
C {devices/lab_wire.sym} 520 -450 0 0 {name=p2 lab=Vinn}
C {devices/lab_wire.sym} 520 -510 0 0 {name=p3 lab=Vinp}
C {devices/lab_wire.sym} 680 -480 0 1 {name=p4 lab=RST}
C {comparator.sym} 580 -480 0 0 {name=x1}
C {devices/lab_wire.sym} 520 -370 0 0 {name=p10 lab=avss}
C {devices/lab_wire.sym} 520 -410 0 0 {name=p13 lab=avdd}
C {devices/lab_wire.sym} 520 -390 0 0 {name=p5 lab=dvdd}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
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
C {devices/launcher.sym} 150 -800 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb1.raw tran"
}
C {devices/simulator_commands_shown.sym} 710 -640 0 0 {name=COMMANDS1
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
  write comparator_tb1.raw
  set appendwrite
  *dc v3 0 3.3 0.01
  *tran .5u 8m
  tran 1u 8m
  meas tran Ivdd AVG i(V10)
  
  write comparator_tb1.raw
  *quit 0

.endc
"}
C {devices/ammeter.sym} -700 -660 0 1 {name=v2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -500 -750 0 1 {name=M24
L=0.8
W=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -500 -850 0 1 {name=M25
L=0.8
W=16
nf=8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -540 -540 0 0 {name=M26
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
C {devices/ngspice_probe.sym} -520 -500 0 0 {name=r2}
C {devices/lab_pin.sym} -590 -540 2 1 {name=p28 sig_type=std_logic lab=vbg}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -680 -850 0 1 {name=M28
L=0.8
W=8
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
C {devices/lab_pin.sym} -490 -540 0 1 {name=p24 sig_type=std_logic lab=avss
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -680 -750 0 1 {name=M37
L=0.8
W=2
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
C {devices/ammeter.sym} -520 -630 0 1 {name=v4}
C {sky130_fd_pr/cap_mim_m3_2.sym} -410 -880 0 0 {name=C5 model=cap_mim_m3_2 W=16 L=16 MF=2 spiceprefix=X }
C {sky130_fd_pr/cap_mim_m3_2.sym} -830 -820 0 0 {name=C3 model=cap_mim_m3_2 W=8 L=8 MF=2 spiceprefix=X }
C {sky130_fd_pr/res_xhigh_po.sym} -520 -430 0 0 {name=R9
W=1
L=350
model=res_xhigh_po
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} -520 -370 0 0 {name=R6
W=1
L=350
model=res_xhigh_po
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -520 -340 0 0 {name=p75 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -540 -400 0 0 {name=p76 sig_type=std_logic lab=avss}
C {devices/lab_wire.sym} -700 -610 0 0 {name=p8 lab=Iref}
C {devices/lab_wire.sym} -820 -910 0 0 {name=p12 lab=avdd}
C {devices/ngspice_get_value.sym} 280 -620 0 1 {name=r5 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[w])
descr="W="}
C {devices/ngspice_get_value.sym} 280 -670 0 1 {name=r7 node=@m.xm1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {devices/gnd.sym} 240 -590 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 210 -240 0 0 {name=l12 lab=GND}
C {devices/ammeter.sym} 210 -530 0 0 {name=Vr2}
C {devices/ngspice_probe.sym} 210 -490 0 0 {name=r8}
C {devices/ngspice_probe.sym} 210 -410 0 0 {name=r13}
C {devices/ngspice_probe.sym} 210 -330 0 0 {name=r16}
C {devices/lab_wire.sym} 210 -400 0 1 {name=p17 lab=Vinp}
C {devices/lab_wire.sym} 210 -320 0 1 {name=p21 lab=Vinn}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 210 -290 0 0 {name=R17
L=235
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 210 -370 0 0 {name=R18
L=10.4
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 210 -450 0 0 {name=R19
L=120
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 190 -590 0 0 {name=M2
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
C {devices/lab_wire.sym} 210 -680 0 0 {name=p6 lab=avdd}
C {devices/code.sym} 490 -230 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=false}
C {devices/vcvs.sym} -170 -200 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} -210 -220 0 0 {name=p7 lab=Vinp}
C {devices/lab_wire.sym} -210 -180 0 0 {name=p9 lab=Vinn}
C {devices/gnd.sym} -170 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -170 -270 0 1 {name=p11 lab=vindiff}
