v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -1030 840 -630 {flags=graph,unlocked

y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0122
x2=0.1342
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


hilight_wave=2
y1=-0.0037


color="4 9 6 5 8"
node="avdd
xdut.x2.td_sd
xdut.x2.porbpre
por0
xdut.x2.td_lb"}
N 115 -290 115 -270 { lab=GND}
N 115 -380 115 -350 { lab=dvdd}
N 115 -140 115 -120 { lab=GND}
N 115 -230 115 -200 { lab=vbg}
N 115 -460 115 -440 { lab=GND}
N 115 -550 115 -520 { lab=dvss}
N 425 -460 425 -440 { lab=GND}
N 425 -550 425 -520 { lab=avdd}
N 615 -280 645 -280 {
lab=por}
N 615 -260 645 -260 {
lab=porb}
N 265 -460 265 -440 { lab=GND}
N 265 -550 265 -520 { lab=avss}
N 615 -240 645 -240 {
lab=porb_h[1:0]}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/gnd.sym} 115 -270 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 115 -120 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 115 -490 0 1 {name=Vdvss value="DC 0"}
C {devices/gnd.sym} 115 -440 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 115 -550 0 0 {name=p7 lab=dvss}
C {devices/gnd.sym} 425 -440 0 0 {name=l7 lab=GND}
C {devices/opin.sym} 645 -280 0 0 {name=p5 lab=por}
C {devices/opin.sym} 645 -260 0 0 {name=p6 lab=porb}
C {devices/lab_wire.sym} 455 -220 0 0 {name=p8 lab=vbg}
C {devices/lab_wire.sym} 455 -300 0 0 {name=p9 lab=avdd}
C {devices/lab_wire.sym} 455 -280 0 0 {name=p10 lab=dvdd}
C {devices/lab_wire.sym} 425 -550 0 0 {name=p11 lab=avdd}
C {devices/lab_wire.sym} 115 -380 0 0 {name=p12 lab=dvdd
}
C {devices/lab_wire.sym} 115 -230 0 0 {name=p17 lab=vbg}
C {devices/vsource.sym} 425 -490 0 0 {name=Vavdd value="PULSE 0 3.3 1.5m 1m 1m 60m 100m"}
C {devices/lab_wire.sym} 455 -260 0 0 {name=p20 lab=avss}
C {devices/lab_wire.sym} 455 -240 0 0 {name=p21 lab=dvss}
C {devices/vsource.sym} 265 -490 0 1 {name=Vavss value="DC 0"}
C {devices/gnd.sym} 265 -440 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 265 -550 0 0 {name=p22 lab=avss}
C {devices/opin.sym} 645 -240 0 0 {name=p25 lab=porb_h[1:0]}
C {devices/vsource.sym} 115 -320 0 0 {name=Vdvdd value="PULSE 0 1.8 10n 1m 1m 0.5 1"}
C {devices/vsource.sym} 115 -170 0 0 {name=Vvbg value="PULSE 0 1.2 1.5m '0.33*1m' '0.33*1m' 0.5 1"}
C {devices/code_shown.sym} 895 -430 0 0 {name=CONTROL only_toplevel=false value="
*.include /home/efabless/analog_ip/cheetah_v3_analog/dependencies/sky130_sw_ip__bgrref_por/netlist/rcx/sky130_sw_ip__bgrref_por.spice
.options savecurrents
.control
save all
let Tsimend = 120m + 2*1m
tran 1u $&Tsimend
let dvdd_half = 0.5*1.8
let meas_window = 0.001 + 3.5m
meas tran V_thp FIND v(avdd) When v(xdut.rst)=dvdd_half FROM=0 TO=meas_window RISE=LAST
meas tran V_thn FIND v(avdd) WHEN V(xdut.rst)=dvdd_half TD=meas_window FALL=LAST
let hyst='V_thp-V_thn'
write sky130_sw_ip__bgrref_por_tb1.raw
print hyst
*quit
.endc
"}
C {sky130_sw_ip__bgrref_por.sym} 535 -260 0 0 {name=xdut}
C {devices/capa.sym} 830 -130 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 830 -160 0 1 {name=p1 lab=por}
C {devices/capa.sym} 730 -130 0 0 {name=C2
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 730 -160 0 1 {name=p19 lab=porb}
C {devices/gnd.sym} 730 -100 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 830 -100 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 620 -130 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 620 -160 0 1 {name=p13 lab=porb_h[0]}
C {devices/gnd.sym} 620 -100 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 520 -130 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 520 -160 0 1 {name=p14 lab=porb_h[1]}
C {devices/gnd.sym} 520 -100 0 0 {name=l9 lab=GND}
C {launcher.sym} 600 -590 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sky130_sw_ip__bgrref_por_tb1.raw tran"
}
C {devices/code.sym} 1020 -750 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_ls/spice/sky130_fd_sc_ls.spice

"
spice_ignore=false}
