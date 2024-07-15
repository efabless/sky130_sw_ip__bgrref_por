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
lab=#net1}
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
N -950 -670 -950 -650 {
lab=Iref}
N -770 -950 -770 -920 { lab=avdd}
N -770 -860 -770 -820 { lab=#net2}
N -770 -840 -690 -840 { lab=#net2}
N -690 -890 -690 -840 { lab=#net2}
N -770 -730 -690 -730 { lab=#net3}
N -690 -790 -690 -730 { lab=#net3}
N -770 -950 -760 -950 {
lab=avdd}
N -790 -790 -770 -790 {
lab=avdd}
N -790 -950 -790 -790 {
lab=avdd}
N -790 -950 -770 -950 {
lab=avdd}
N -790 -890 -770 -890 {
lab=avdd}
N -770 -580 -740 -580 {lab=avss}
N -820 -580 -810 -580 {
lab=vbg}
N -770 -550 -770 -520 {
lab=#net4}
N -950 -950 -950 -920 { lab=avdd}
N -950 -860 -950 -820 { lab=#net5}
N -950 -950 -940 -950 {
lab=avdd}
N -970 -950 -950 -950 {
lab=avdd}
N -970 -890 -950 -890 {
lab=avdd}
N -910 -890 -910 -850 {
lab=#net2}
N -910 -850 -770 -850 {
lab=#net2}
N -940 -950 -790 -950 {
lab=avdd}
N -950 -760 -950 -730 {
lab=#net6}
N -840 -580 -820 -580 {
lab=vbg}
N -970 -950 -970 -890 {
lab=avdd}
N -970 -790 -950 -790 {
lab=avdd}
N -970 -890 -970 -790 {
lab=avdd}
N -910 -790 -860 -790 {
lab=#net3}
N -860 -790 -860 -740 {
lab=#net3}
N -770 -760 -770 -700 {
lab=#net3}
N -770 -640 -770 -610 {
lab=#net7}
N -860 -740 -770 -740 {
lab=#net3}
N -1080 -830 -1080 -750 {
lab=#net3}
N -1080 -750 -860 -750 {
lab=#net3}
N -1080 -950 -1080 -890 {
lab=avdd}
N -1080 -950 -960 -950 {
lab=avdd}
N -790 -470 -790 -410 {
lab=avss}
N -770 -520 -770 -500 {
lab=#net4}
N -760 -950 -670 -950 {
lab=avdd}
N -670 -950 -660 -950 {
lab=avdd}
N -730 -890 -660 -890 {
lab=#net2}
N -730 -790 -690 -790 {
lab=#net3}
C {devices/lab_wire.sym} 520 -450 0 0 {name=p2 lab=Vinn}
C {devices/lab_wire.sym} 520 -510 0 0 {name=p3 lab=Vinp}
C {devices/lab_wire.sym} 680 -480 0 1 {name=p4 lab=RST}
C {comparator_v2.sym} 580 -480 0 0 {name=x1}
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
C {devices/ammeter.sym} -950 -700 0 1 {name=v2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -750 -790 0 1 {name=M24
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -750 -890 0 1 {name=M25
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -790 -580 0 0 {name=M26
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
C {devices/ngspice_probe.sym} -770 -540 0 0 {name=r2}
C {devices/lab_pin.sym} -840 -580 2 1 {name=p28 sig_type=std_logic lab=vbg}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -930 -890 0 1 {name=M28
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
C {devices/lab_pin.sym} -740 -580 2 0 {name=p24 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -930 -790 0 1 {name=M37
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
C {devices/ammeter.sym} -770 -670 0 1 {name=v4}
C {sky130_fd_pr/cap_mim_m3_2.sym} -660 -920 0 0 {name=C5 model=cap_mim_m3_2 W=16 L=16 MF=2 spiceprefix=X }
C {sky130_fd_pr/cap_mim_m3_2.sym} -1080 -860 0 0 {name=C3 model=cap_mim_m3_2 W=8 L=8 MF=2 spiceprefix=X }
C {sky130_fd_pr/res_xhigh_po.sym} -770 -470 0 0 {name=R9
W=1
L=350
model=res_xhigh_po
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} -770 -410 0 0 {name=R6
W=1
L=350
model=res_xhigh_po
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -770 -380 0 0 {name=p75 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -790 -440 0 0 {name=p76 sig_type=std_logic lab=avss}
C {devices/lab_wire.sym} -830 -950 0 0 {name=p1 lab=avdd}
C {devices/lab_pin.sym} -950 -650 2 1 {name=p8 sig_type=std_logic lab=Iref
}
C {devices/lab_pin.sym} 520 -350 2 1 {name=p12 sig_type=std_logic lab=Iref
}
