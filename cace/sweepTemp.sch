v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -270 50 -250 { lab=GND}
N 50 -360 50 -330 { lab=DVDD}
N 50 -120 50 -100 { lab=GND}
N 50 -210 50 -180 { lab=Vbg}
N 50 -440 50 -420 { lab=GND}
N 50 -530 50 -500 { lab=DVSS}
N 200 -440 200 -420 { lab=GND}
N 200 -530 200 -500 { lab=AVDD}
N 550 -260 580 -260 {
lab=por}
N 550 -240 580 -240 {
lab=porb}
N 120 -440 120 -420 { lab=GND}
N 120 -530 120 -500 { lab=AVSS}
N 550 -220 580 -220 {
lab=porb_h}
C {sky130_ef_ip__bgrref_por.sym} 450 -240 0 0 {name=x1 W_N=1 L_N=0.2 W_P=1 L_P=0.2 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/gnd.sym} 50 -250 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 50 -100 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 50 -470 0 1 {name=V3 value="0"}
C {devices/gnd.sym} 50 -420 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 50 -530 0 0 {name=p7 lab=DVSS}
C {devices/gnd.sym} 200 -420 0 0 {name=l6 lab=GND}
C {devices/opin.sym} 580 -260 0 0 {name=p1 lab=por}
C {devices/opin.sym} 580 -240 0 0 {name=p2 lab=porb}
C {devices/lab_wire.sym} 390 -200 0 0 {name=p3 lab=Vbg}
C {devices/lab_wire.sym} 390 -280 0 0 {name=p5 lab=AVDD}
C {devices/lab_wire.sym} 390 -260 0 0 {name=p6 lab=DVDD}
C {devices/lab_wire.sym} 200 -530 0 0 {name=p8 lab=AVDD}
C {devices/lab_wire.sym} 50 -360 0 0 {name=p9 lab=DVDD}
C {devices/lab_wire.sym} 50 -210 0 0 {name=p10 lab=Vbg}
C {devices/vsource.sym} 200 -470 0 0 {name=Vavdd value="PULSE 0 3.3 10n 1m 1m 100m 200m"}
C {devices/lab_wire.sym} 390 -240 0 0 {name=p4 lab=AVSS}
C {devices/lab_wire.sym} 390 -220 0 0 {name=p15 lab=DVSS}
C {devices/vsource.sym} 120 -470 0 1 {name=V5 value="0"}
C {devices/gnd.sym} 120 -420 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 120 -530 0 0 {name=p17 lab=AVSS}
C {devices/opin.sym} 580 -220 0 0 {name=p11 lab=porb_h}
C {devices/vsource.sym} 50 -300 0 0 {name=V6 value="PULSE 0 1.8 10n 1.1m 1m 200mm 400m"}
C {devices/vsource.sym} 50 -150 0 0 {name=V7 value="PULSE 0 1.2 10n 0.5m 1m 200mm 400m"}
C {devices/code.sym} 820 -620 0 0 {name=TT_MODELS1
only_toplevel=true
spice_ignore=false
format="tcleval( @value )"
value="
.include \{DUT_path\}
.include \{PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include \{PDK_ROOT\}/\{PDK\}/libs.tech/combined/sky130.lib.spice \{corner\}
.include \{PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.option TEMP=\{temperature\}
"
spice_ignore=false}
C {devices/code.sym} 820 -430 0 0 {name=ngspice1 only_toplevel=false value="
.options savecurrents
.control
save all
tran .5u 55m
plot AVDD por porb+6.8 porb_h+3.4
write \{simpath\}/\{filename\}.raw
*quit 0
.endc
"}
