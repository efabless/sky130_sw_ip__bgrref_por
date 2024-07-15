v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -410 250 -390 { lab=GND}
N 250 -500 250 -470 { lab=VCCL}
N 340 -410 340 -390 { lab=GND}
N 340 -500 340 -470 { lab=Vbg}
N 140 -180 140 -160 { lab=GND}
N 140 -270 140 -240 { lab=vin}
N 450 -410 450 -390 { lab=GND}
N 450 -500 450 -470 { lab=VSS}
N 540 -410 540 -390 { lab=GND}
N 540 -500 540 -470 { lab=VCCH}
C {delayPulse.sym} 370 -230 0 0 {name=x1}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/code_shown.sym} 590 -410 0 0 {name=s1 only_toplevel=false 
value="
.options savecurrents
.control
save all

op
write delayPulse_tb.raw
set appendwrite

tran 1u 55m
plot vin por x1.Td_L+1 x1.Td_S+2 x1.x-1
write delayPulse_tb.raw
*quit 0
.endc
"}
C {devices/vsource.sym} 250 -440 0 1 {name=V5 value="1.8"}
C {devices/gnd.sym} 250 -390 0 0 {name=l22 lab=GND}
C {devices/lab_wire.sym} 250 -500 0 0 {name=l23 sig_type=std_logic lab=VCCL}
C {devices/code.sym} 20 -490 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/lab_wire.sym} 310 -260 0 0 {name=p1 lab=vin}
C {devices/lab_wire.sym} 480 -250 0 1 {name=p2 lab=por}
C {devices/lab_wire.sym} 310 -180 0 0 {name=p3 lab=VCCL}
C {devices/lab_wire.sym} 310 -160 0 0 {name=p4 lab=VSS}
C {devices/lab_wire.sym} 310 -140 0 0 {name=p5 lab=Vbg}
C {devices/vsource.sym} 340 -440 0 1 {name=V1 value="1.2"}
C {devices/gnd.sym} 340 -390 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 340 -500 0 0 {name=l3 sig_type=std_logic lab=Vbg}
C {devices/vsource.sym} 140 -210 0 1 {name=V2 value="PULSE 0 1.8 10n 10p 10p 60m 200m"}
C {devices/gnd.sym} 140 -160 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 140 -270 0 0 {name=p6 lab=vin}
C {devices/vsource.sym} 450 -440 0 1 {name=V3 value="0"}
C {devices/gnd.sym} 450 -390 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 450 -500 0 0 {name=p7 lab=VSS}
C {devices/ipin.sym} 70 -340 0 0 {name=p14 lab=vin}
C {devices/ipin.sym} 70 -310 0 0 {name=p15 lab=Vbg}
C {devices/launcher.sym} 640 -480 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 310 -120 0 0 {name=p8 lab=VCCH}
C {devices/vsource.sym} 540 -440 0 1 {name=V4 value="3.3"}
C {devices/gnd.sym} 540 -390 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 540 -500 0 0 {name=l7 sig_type=std_logic lab=VCCH}
