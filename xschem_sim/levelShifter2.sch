v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 700 -310 730 -310 {lab=VSS}
N 700 -280 700 -220 {
lab=VSS}
N 870 -510 900 -510 {lab=VCCH}
N 870 -570 870 -540 {lab=VCCH}
N 900 -550 900 -510 {
lab=VCCH}
N 870 -550 900 -550 {
lab=VCCH}
N 730 -310 730 -260 {
lab=VSS}
N 700 -260 730 -260 {
lab=VSS}
N 280 -460 310 -460 {lab=VSS}
N 280 -510 280 -490 {
lab=S1}
N 280 -640 310 -640 {lab=VCCL}
N 280 -550 280 -510 {
lab=S1}
N 240 -640 240 -460 {
lab=ain}
N 310 -680 310 -640 {
lab=VCCL}
N 280 -430 280 -410 {
lab=VSS}
N 280 -680 280 -670 {
lab=VCCL}
N 280 -680 310 -680 {
lab=VCCL}
N 670 -510 700 -510 {lab=VCCH}
N 700 -570 700 -540 {lab=VCCH}
N 670 -550 670 -510 {
lab=VCCH}
N 670 -550 700 -550 {
lab=VCCH}
N 840 -310 870 -310 {lab=VSS}
N 870 -280 870 -220 {
lab=VSS}
N 840 -310 840 -260 {
lab=VSS}
N 840 -260 870 -260 {
lab=VSS}
N 700 -420 700 -340 {
lab=#net1}
N 870 -420 870 -340 {
lab=#net2}
N 700 -220 870 -220 {
lab=VSS}
N 620 -310 660 -310 {
lab=S1}
N 420 -460 450 -460 {lab=VSS}
N 420 -510 420 -490 {
lab=S1B}
N 420 -640 450 -640 {lab=VCCL}
N 420 -550 420 -510 {
lab=S1B}
N 380 -640 380 -460 {
lab=S1}
N 450 -680 450 -640 {
lab=VCCL}
N 420 -430 420 -410 {
lab=VSS}
N 420 -680 420 -670 {
lab=VCCL}
N 420 -680 450 -680 {
lab=VCCL}
N 280 -530 380 -530 {
lab=S1}
N 420 -530 460 -530 {
lab=S1B}
N 200 -530 240 -530 {
lab=ain}
N 910 -310 950 -310 {
lab=S1B}
N 700 -570 870 -570 {
lab=VCCH}
N 740 -510 770 -510 {
lab=#net2}
N 770 -510 840 -390 {
lab=#net2}
N 840 -390 870 -390 {
lab=#net2}
N 800 -510 830 -510 {
lab=#net1}
N 720 -390 800 -510 {
lab=#net1}
N 700 -390 720 -390 {
lab=#net1}
N 870 -380 950 -380 {
lab=#net2}
N 310 -460 310 -410 {
lab=VSS}
N 280 -410 310 -410 {
lab=VSS}
N 450 -460 450 -410 {
lab=VSS}
N 420 -410 450 -410 {
lab=VSS}
N 1060 -390 1060 -360 {
lab=aout}
N 1020 -420 1020 -330 {
lab=#net2}
N 1060 -380 1080 -380 {
lab=aout}
N 1060 -330 1060 -300 {
lab=VSS}
N 1060 -300 1060 -280 {
lab=VSS}
N 1060 -450 1060 -420 {
lab=VCCH}
N 1060 -470 1060 -450 {
lab=VCCH}
N 1010 -380 1020 -380 {
lab=#net2}
N 950 -380 1010 -380 {
lab=#net2}
N 1060 -560 1060 -470 {
lab=VCCH}
N 870 -570 1060 -570 {
lab=VCCH}
N 1060 -570 1060 -560 {
lab=VCCH}
N 870 -220 1060 -220 {
lab=VSS}
N 1060 -280 1060 -220 {
lab=VSS}
C {devices/ipin.sym} 100 -240 0 0 {name=p6 lab=VCCL}
C {devices/ipin.sym} 100 -210 0 0 {name=p12 lab=VSS}
C {devices/ipin.sym} 100 -170 0 0 {name=p14 lab=ain}
C {devices/opin.sym} 160 -200 0 0 {name=p16 lab=aout}
C {devices/ammeter.sym} 870 -450 0 0 {name=v6}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -310 0 0 {name=M12
W=3.6
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 850 -510 0 0 {name=M13
W=5.8
L=0.5
nf=2
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
C {devices/ammeter.sym} 280 -580 0 0 {name=v5}
C {sky130_fd_pr/nfet_01v8.sym} 260 -460 0 0 {name=M6
L=0.15
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 260 -640 0 0 {name=M1
L=0.15
W=1.4
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 280 -410 2 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -680 3 1 {name=p37 sig_type=std_logic lab=VCCL}
C {devices/ammeter.sym} 700 -450 0 1 {name=v1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 720 -510 0 1 {name=M2
W=5.8
L=0.5
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 890 -310 0 1 {name=M3
W=3.6
L=0.5
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
C {devices/ammeter.sym} 420 -580 0 0 {name=v2}
C {sky130_fd_pr/nfet_01v8.sym} 400 -460 0 0 {name=M4
L=0.15
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 400 -640 0 0 {name=M5
L=0.15
W=1.4
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 420 -410 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -680 3 1 {name=p2 sig_type=std_logic lab=VCCL}
C {devices/lab_pin.sym} 790 -220 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 200 -530 0 0 {name=p4 lab=ain}
C {devices/lab_wire.sym} 1080 -380 2 0 {name=p5 lab=aout
}
C {devices/lab_wire.sym} 330 -530 0 0 {name=p7 lab=S1}
C {devices/lab_wire.sym} 460 -530 0 0 {name=p8 lab=S1B}
C {devices/lab_wire.sym} 620 -310 0 0 {name=p9 lab=S1}
C {devices/lab_wire.sym} 950 -310 0 1 {name=p11 lab=S1B}
C {devices/lab_pin.sym} 780 -570 3 1 {name=p15 sig_type=std_logic lab=VCCH}
C {devices/ipin.sym} 100 -270 0 0 {name=p13 lab=VCCH}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1040 -330 0 0 {name=M7
W=1.8
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1040 -420 0 0 {name=M8
W=5.8
L=0.5
nf=2
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
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
