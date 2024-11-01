v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -440 50 -420 { lab=GND}
N 50 -530 50 -500 { lab=dvss}
N 550 -260 580 -260 {
lab=por}
N 550 -240 580 -240 {
lab=porb}
N 200 -440 200 -420 { lab=GND}
N 200 -530 200 -500 { lab=avss}
N 550 -220 580 -220 {
lab=porb_h[1:0]}
N 640 -310 640 -280 {
lab=porb_h[1]}
N 740 -310 740 -280 {
lab=porb_h[0]}
N 640 -410 640 -370 {
lab=porb_h1}
N 740 -410 740 -370 {
lab=porb_h0}
N 50 -90 50 -70 { lab=GND}
N 50 -180 50 -150 { lab=vbg}
N 40 -270 40 -250 { lab=GND}
N 40 -360 40 -330 { lab=dvdd}
N 310 -440 310 -420 { lab=GND}
N 310 -530 310 -500 { lab=avdd}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/vsource.sym} 50 -470 0 1 {name=Vdvss value="DC CACE\{Vdvss\}"}
C {devices/gnd.sym} 50 -420 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 50 -530 0 0 {name=p7 lab=dvss}
C {devices/opin.sym} 580 -260 0 0 {name=p1 lab=por}
C {devices/opin.sym} 580 -240 0 0 {name=p2 lab=porb}
C {devices/lab_wire.sym} 390 -200 0 0 {name=p3 lab=vbg}
C {devices/lab_wire.sym} 390 -280 0 0 {name=p5 lab=avdd}
C {devices/lab_wire.sym} 390 -260 0 0 {name=p6 lab=dvdd}
C {devices/lab_wire.sym} 390 -240 0 0 {name=p4 lab=avss}
C {devices/lab_wire.sym} 390 -220 0 0 {name=p15 lab=dvss}
C {devices/vsource.sym} 200 -470 0 1 {name=Vavss value="DC CACE\{Vavss\}"}
C {devices/gnd.sym} 200 -420 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 200 -530 0 0 {name=p17 lab=avss}
C {devices/opin.sym} 580 -220 0 0 {name=p11 lab=porb_h[1:0]}
C {devices/code_shown.sym} 820 -750 0 0 {name=SETUP only_toplevel=false value="
* CACE gensim simulation file CACE\{filename\}
* Generated by CACE gensim, Efabless Corporation (c) 2024
* Find the powerup simulation of POR

.include CACE\{DUT_path\}
.include CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.ref/sky130_fd_sc_ls/spice/sky130_fd_sc_ls.spice

.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/combined/sky130.lib.spice CACE\{corner\}
*.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/sky130.lib.spice CACE\{corner\}

.option TEMP=CACE\{temperature\}
* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {devices/code_shown.sym} 830 -410 0 0 {name=CONTROL only_toplevel=false value="
*.options savecurrents
.control
*save all

tran CACE\{Tstep\} CACE\{Tsim\}
set wr_singlescale
wrdata CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data V(avdd) V(dvdd) V(vbg) V(por) V(porb) V(porb_h0)
.endc
"}
C {sky130_sw_ip__bgrref_por.sym} 470 -240 0 0 {name=XDUT}
C {devices/capa.sym} 870 -110 0 0 {name=C1
m=1
value=CACE\{CLb\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 870 -140 0 1 {name=p12 lab=por}
C {devices/capa.sym} 770 -110 0 0 {name=C2
m=1
value=CACE\{CLb\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 770 -140 0 1 {name=p19 lab=porb}
C {devices/gnd.sym} 770 -80 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 870 -80 0 0 {name=l7 lab=GND}
C {devices/capa.sym} 660 -110 0 0 {name=C3
m=1
value=CACE\{CLw\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 660 -140 0 1 {name=p13 lab=porb_h[0]}
C {devices/gnd.sym} 660 -80 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 560 -110 0 0 {name=C4
m=1
value=CACE\{CLw\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 560 -140 0 1 {name=p14 lab=porb_h[1]}
C {devices/gnd.sym} 560 -80 0 0 {name=l9 lab=GND}
C {res.sym} 640 -340 0 0 {name=R1
value=0
footprint=1206
device=resistor
m=1}
C {res.sym} 740 -340 0 0 {name=R2
value=0
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 640 -280 0 1 {name=p16 lab=porb_h[1]
}
C {devices/lab_wire.sym} 740 -280 0 1 {name=p18 lab=porb_h[0]
}
C {devices/lab_wire.sym} 640 -410 0 1 {name=p20 lab=porb_h1
}
C {devices/lab_wire.sym} 740 -410 0 1 {name=p21 lab=porb_h0
}
C {devices/gnd.sym} 50 -70 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 50 -180 0 0 {name=p22 lab=vbg}
C {devices/vsource.sym} 50 -120 0 0 {name=Vvbg1 value="PULSE 0 CACE\{Vvbg\} 1.5m '0.33*CACE\{travdd\}' '0.33*CACE\{travdd\}' 0.5 1"}
C {devices/gnd.sym} 40 -250 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 40 -360 0 0 {name=p10 lab=dvdd
}
C {devices/vsource.sym} 40 -300 0 0 {name=Vdvdd1 value="PULSE 0 CACE\{Vdvdd\} 10n CACE\{trdvdd\} CACE\{trdvdd\} 0.5 1"}
C {devices/gnd.sym} 310 -420 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 310 -530 0 0 {name=p9 lab=avdd}
C {devices/vsource.sym} 310 -470 0 0 {name=Vavdd1 value="PULSE 0 CACE\{Vavdd\} 1.5m CACE\{travdd\} CACE\{travdd\} 0.5 1"}
