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
C {devices/gnd.sym} 50 -250 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 50 -100 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 50 -470 0 1 {name=Vdvss value="DC \{Vdvss\}"}
C {devices/gnd.sym} 50 -420 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 50 -530 0 0 {name=p7 lab=dvss}
C {devices/gnd.sym} 200 -420 0 0 {name=l6 lab=GND}
C {devices/opin.sym} 580 -260 0 0 {name=p1 lab=por}
C {devices/opin.sym} 580 -240 0 0 {name=p2 lab=porb}
C {devices/lab_wire.sym} 390 -200 0 0 {name=p3 lab=vbg}
C {devices/lab_wire.sym} 390 -280 0 0 {name=p5 lab=avdd}
C {devices/lab_wire.sym} 390 -260 0 0 {name=p6 lab=dvdd}
C {devices/lab_wire.sym} 200 -530 0 0 {name=p8 lab=avdd}
C {devices/lab_wire.sym} 50 -360 0 0 {name=p9 lab=dvdd
}
C {devices/lab_wire.sym} 50 -210 0 0 {name=p10 lab=vbg}
C {devices/vsource.sym} 200 -470 0 0 {name=Vavdd value="PULSE 0 \{Vavdd\} 10e-9 1e-3 1e-3 100e-3 200e-3"}
C {devices/lab_wire.sym} 390 -240 0 0 {name=p4 lab=avss}
C {devices/lab_wire.sym} 390 -220 0 0 {name=p15 lab=dvss}
C {devices/vsource.sym} 120 -470 0 1 {name=Vavss value="DC \{Vavss\}"}
C {devices/gnd.sym} 120 -420 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 120 -530 0 0 {name=p17 lab=avss}
C {devices/opin.sym} 580 -220 0 0 {name=p11 lab=porb_h}
C {devices/vsource.sym} 50 -300 0 0 {name=Vdvdd value="PULSE 0 \{Vdvdd\} 10e-9 1.1e-3 1e-3 200e-3 400e-3"}
C {devices/vsource.sym} 50 -150 0 0 {name=Vvbg value="PULSE 0 \{Vvbg\} 10e-9 0.5e-3 1e-3 200e-3 400e-3"}
C {devices/code.sym} 460 -560 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice

"
spice_ignore=true}
C {devices/code.sym} 590 -560 0 0 {name=ngspice 
only_toplevel=false 
spice_ignore=true
value="

.options savecurrents
.control
save all
set temp=27
tran .1u 2m
plot AVDD por porb+6.8 porb_h+3.4
write sky130_sw_ip__bgrref_por_tb1.raw

set appendwrite
set temp=27
tran .1u 2m 
write sky130_sw_ip__bgrref_por_tb1.raw

set appendwrite
set temp=85
tran .1u 2m
write sky130_sw_ip__bgrref_por_tb1.raw

*quit 0
.endc
"}
C {devices/code_shown.sym} 830 -610 0 0 {name=SETUP only_toplevel=false value="
* CACE gensim simulation file \{filename\}
* Generated by CACE gensim, Efabless Corporation (c) 2024
* Find the powerup simulation of POR

.include \{DUT_path\}
.include \{PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include \{PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

*.lib \{PDK_ROOT\}/\{PDK\}/libs.tech/combined/sky130.lib.spice \{corner\}
.lib \{PDK_ROOT\}/\{PDK\}/libs.tech/ngspice/sky130.lib.spice \{corner\}

.option TEMP=\{temperature\}
* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {devices/code_shown.sym} 830 -280 0 0 {name=CONTROL only_toplevel=false value="
.control
.options savecurrents
save all

tran 1u \{Tsim\}
meas tran yAvdd FIND v(avdd) WHEN v(por)=0.9 RISE=1
  meas tran Ivdd AVG i(Vavdd)
  *meas tran yAvdd FIND v(avdd) WHEN v(por)=0.9 RISE=1
  meas tran porPulse TRIG v(por) VAL=0.9 RISE=1 TARG v(por) VAL=0.9 FALL=1
wrdata \{simpath\}/\{filename\}_\{N\}.data porPulse

quit
.endc
"}
C {sky130_sw_ip__bgrref_por.sym} 470 -240 0 0 {name=XDUT}
C {devices/capa.sym} 740 -120 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 740 -150 0 1 {name=p12 lab=por}
C {devices/capa.sym} 640 -120 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 640 -150 0 1 {name=p19 lab=porb}
C {devices/gnd.sym} 640 -90 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 740 -90 0 0 {name=l7 lab=GND}
