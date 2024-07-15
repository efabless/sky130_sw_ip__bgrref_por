v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -300 440 -300 {lab=VSS}
N 410 -350 410 -330 {
lab=#net1}
N 520 -450 550 -450 {lab=VCC}
N 550 -490 550 -450 {
lab=VCC}
N 410 -270 410 -250 {
lab=VSS}
N 440 -300 440 -250 {
lab=VSS}
N 410 -250 440 -250 {
lab=VSS}
N 520 -510 520 -480 {
lab=VCC}
N 520 -510 590 -510 {
lab=VCC}
N 550 -510 550 -490 {
lab=VCC}
N 370 -350 370 -300 {
lab=#net1}
N 370 -350 410 -350 {
lab=#net1}
N 410 -450 410 -350 {
lab=#net1}
N 410 -450 480 -450 {
lab=#net1}
N 520 -360 520 -330 {
lab=TieH}
N 520 -330 600 -330 {
lab=TieH}
N 520 -420 520 -360 {}
C {sky130_fd_pr/nfet_01v8.sym} 390 -300 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 500 -450 0 0 {name=M5
L=0.15
W=1
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
C {devices/lab_pin.sym} 440 -250 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/lab_pin.sym} 590 -510 2 0 {name=p2 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 600 -330 2 0 {name=p3 sig_type=std_logic lab=TieH}
C {devices/ipin.sym} 130 -290 0 0 {name=p6 lab=VCC}
C {devices/ipin.sym} 130 -260 0 0 {name=p12 lab=VSS}
C {devices/iopin.sym} 120 -220 0 0 {name=p4 lab=TieH}
