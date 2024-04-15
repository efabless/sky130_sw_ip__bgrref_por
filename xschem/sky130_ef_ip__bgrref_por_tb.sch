v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -270 50 -250 { lab=GND}
N 50 -360 50 -330 { lab=dvdd}
N 50 -120 50 -100 { lab=GND}
N 50 -210 50 -180 { lab=vbg}
N 50 -440 50 -420 { lab=GND}
N 50 -530 50 -500 { lab=dvss}
N 200 -440 200 -420 { lab=GND}
N 200 -530 200 -500 { lab=avdd}
N 550 -260 580 -260 {
lab=por}
N 550 -240 580 -240 {
lab=porb}
N 120 -440 120 -420 { lab=GND}
N 120 -530 120 -500 { lab=avss}
N 550 -220 580 -220 {
lab=porb_h}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/code.sym} 830 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=false}
C {devices/gnd.sym} 50 -250 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 50 -100 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 50 -470 0 1 {name=Vdvss value="0"}
C {devices/gnd.sym} 50 -420 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 50 -530 0 0 {name=p7 lab=dvss}
C {devices/gnd.sym} 200 -420 0 0 {name=l6 lab=GND}
C {devices/code.sym} 830 -250 0 0 {name=ngspice only_toplevel=false 
spice_ignore=true
value="
.options savecurrents
.control
set temp=-40
save all
tran 1u 2m
 *tran 1u 55m
plot AVDD por porb+6.8 porb_h+3.4
meas tran Ivdd AVG i(Vavdd)
meas tran porPulse TRIG v(por) VAL=0.9 RISE=1 TARG v(por) VAL=0.9 FALL=1
write sky130_ef_ip__bgrref_por_tb.raw
*quit 0
.endc
"}
C {devices/opin.sym} 580 -260 0 0 {name=p1 lab=por}
C {devices/opin.sym} 580 -240 0 0 {name=p2 lab=porb}
C {devices/lab_wire.sym} 200 -530 0 0 {name=p8 lab=avdd}
C {devices/lab_wire.sym} 50 -360 0 0 {name=p9 lab=dvdd
}
C {devices/lab_wire.sym} 50 -210 0 0 {name=p10 lab=vbg}
C {devices/vsource.sym} 200 -470 0 0 {name=Vavdd value="PULSE 0 3.3 10n 1m 1m 100m 400m"}
C {devices/vsource.sym} 120 -470 0 1 {name=Vavss value="0"}
C {devices/gnd.sym} 120 -420 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 120 -530 0 0 {name=p17 lab=avss}
C {devices/opin.sym} 580 -220 0 0 {name=p11 lab=porb_h}
C {devices/vsource.sym} 50 -300 0 0 {name=Vdvdd value="PULSE 0 1.8 10n 1.1m 1m 100m 400m"}
C {devices/vsource.sym} 50 -150 0 0 {name=Vvbg value="PULSE 0 1.2 10n 0.55m 0.5m 200m 400m"}
C {sky130_ef_ip__bgrref_por.sym} 470 -240 0 0 {name=XDUT}
C {devices/lab_wire.sym} 390 -200 0 0 {name=p3 lab=vbg}
C {devices/lab_wire.sym} 390 -280 0 0 {name=p5 lab=avdd}
C {devices/lab_wire.sym} 390 -260 0 0 {name=p6 lab=dvdd}
C {devices/lab_wire.sym} 390 -240 0 0 {name=p4 lab=avss}
C {devices/lab_wire.sym} 390 -220 0 0 {name=p15 lab=dvss}
C {devices/simulator_commands_shown.sym} 1000 -630 0 0 {name=COMMANDS1
simulator=ngspice
*spice_ignore=true
spice_ignore=false
only_toplevel=false 
value="
* ngspice commands

.options savecurrents
.control 
  set temp=-40
  save all
  op
  write sky130_ef_ip__bgrref_por_tb.raw
  set appendwrite
  tran 1u 2m
  *tran 1u 100m
  meas tran Ivdd AVG i(Vavdd)
  meas tran yAvdd FIND v(avdd) WHEN v(por)=0.9 RISE=1
  meas tran porPulse TRIG v(por) VAL=0.9 RISE=1 TARG v(por) VAL=0.9 FALL=1
  write sky130_ef_ip__bgrref_por_tb.raw
  *quit 0

.endc
"}
C {devices/capa.sym} 660 -430 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 660 -460 0 1 {name=p12 lab=por}
C {devices/capa.sym} 560 -430 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 560 -460 0 1 {name=p19 lab=porb}
C {devices/gnd.sym} 560 -400 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 660 -400 0 0 {name=l7 lab=GND}
