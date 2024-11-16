v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Testbench for Cheetah v3 power-up
This is a basic test for default conditions
See cace/ directory for tests over corners and conditions} -290 -320 0 0 0.4 0.4 {}
N 30 -110 30 30 {
lab=vss}
N 70 -130 70 -30 {
lab=vccd0}
N 30 30 350 30 {
lab=vss}
N -220 -110 -190 -110 {
lab=por}
N -220 -90 -190 -90 {
lab=porb}
N -130 -10 -100 -10 {
lab=porb_h_0}
N 350 -170 350 -140 {
lab=vddio}
N 350 -80 350 30 {
lab=vss}
N -130 10 -100 10 {
lab=porb_h_1}
N -50 -110 30 -110 {
lab=vss}
N -50 -130 70 -130 {
lab=vccd0}
N -50 -170 350 -170 {
lab=vddio}
N -440 -130 -380 -130 {
lab=vddio}
N -440 -110 -380 -110 {
lab=vccd0}
N -440 -90 -380 -90 {
lab=vss}
N -440 -70 -380 -70 {
lab=vss}
N -220 -70 -190 -70 {
lab=porb_h_1,porb_h_0}
C {devices/vsource.sym} 350 -110 0 0 {name=VVDDIO value="DC 3.3 PWL(0 0 1u 0 1m \{vvddio\})" savecurrent=false}
C {devices/vsource.sym} 70 0 0 0 {name=VVCCD value="DC 1.8 PWL(0 0 1100u 0 1200u \{vvccd\})" savecurrent=false}
C {devices/opin.sym} -190 -110 0 0 {name=p1 lab=por}
C {devices/opin.sym} -190 -90 0 0 {name=p2 lab=porb}
C {devices/opin.sym} -100 -10 0 0 {name=p3 lab=porb_h_0}
C {devices/gnd.sym} 30 90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 30 60 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/lab_wire.sym} -50 -110 0 1 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -50 -130 0 1 {name=p9 sig_type=std_logic lab=vccd0}
C {devices/lab_wire.sym} -50 -170 0 1 {name=p11 sig_type=std_logic lab=vddio}
C {devices/code_shown.sym} -330 150 0 0 {name=s1 only_toplevel=false value="* Cheetah v3 power-up test
.lib /usr/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_ls/spice/sky130_fd_sc_ls.spice
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
* low-typ-high = -40 27 100
.option temp=27
* low-typ-high = 2.97 3.3 3.63
.param vvddio=3.3
* low-typ-high = 1.62 1.8 1.98
.param vvccd=1.8"}
C {devices/code_shown.sym} -330 400 0 0 {name=s2 only_toplevel=false value="* Run transient startup
.control
   save all
   tran 100n 70m
   plot V(vddio) V(vccd0) x5.RST
   plot V(por) V(porb) V(porb_h_0)
.endc
.end"}
C {devices/opin.sym} -100 10 0 0 {name=p20 lab=porb_h_1}
C {sky130_sw_ip__por.sym} -300 -90 0 0 {name=x5}
C {lab_pin.sym} -190 -70 0 1 {name=p4 sig_type=std_logic lab=porb_h_1,porb_h_0}
C {devices/lab_wire.sym} -440 -130 0 0 {name=p5 sig_type=std_logic lab=vddio}
C {devices/lab_wire.sym} -440 -110 0 0 {name=p6 sig_type=std_logic lab=vccd0}
C {devices/lab_wire.sym} -440 -90 0 0 {name=p7 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -440 -70 0 0 {name=p10 sig_type=std_logic lab=vss}
