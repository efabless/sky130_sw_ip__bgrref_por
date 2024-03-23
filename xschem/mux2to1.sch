v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -390 700 -390 {
lab=Z}
N 620 -260 700 -260 {
lab=Z}
N 700 -390 700 -260 {
lab=Z}
N 510 -390 540 -390 {
lab=A0}
N 510 -260 540 -260 {
lab=A1}
N 700 -330 760 -330 {
lab=Z}
N 580 -440 580 -420 {
lab=S}
N 560 -440 580 -440 {
lab=S}
N 580 -360 580 -290 {
lab=SB}
N 580 -230 580 -200 {
lab=S}
N 560 -200 580 -200 {
lab=S}
N 250 -410 280 -410 {lab=VSS}
N 250 -380 250 -320 {
lab=VSS}
N 250 -460 250 -440 {
lab=SB}
N 250 -590 280 -590 {lab=VCC}
N 250 -650 250 -620 {lab=VCC}
N 250 -500 250 -460 {
lab=SB}
N 210 -590 210 -410 {
lab=S}
N 250 -480 310 -480 {
lab=SB}
N 280 -630 280 -590 {
lab=VCC}
N 250 -630 280 -630 {
lab=VCC}
N 280 -410 280 -360 {
lab=VSS}
N 250 -360 280 -360 {
lab=VSS}
N 180 -480 210 -480 {
lab=S}
N 500 -330 580 -330 {
lab=SB}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stephen Wu"}
C {devices/ipin.sym} 200 -260 0 0 {name=p2 lab=VCC}
C {devices/ipin.sym} 200 -230 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 510 -390 0 0 {name=p6 lab=A0}
C {devices/ipin.sym} 510 -260 0 0 {name=p7 lab=A1
}
C {devices/iopin.sym} 760 -330 0 0 {name=p5 lab=Z}
C {devices/ipin.sym} 200 -190 0 0 {name=p1 lab=S}
C {devices/lab_pin.sym} 180 -480 0 0 {name=p3 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 560 -440 0 0 {name=p8 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 560 -200 0 0 {name=p9 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 500 -330 0 0 {name=p10 sig_type=std_logic lab=SB}
C {passgate_3p3.sym} 580 -390 0 0 {name=x2 W_N=1 L_N=0.2 W_P=1 L_P=0.2 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {passgate_3p3.sym} 580 -260 0 0 {name=x1 W_N=1 L_N=0.2 W_P=1 L_P=0.2 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 230 -410 0 0 {name=M12
W=1
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
C {devices/ammeter.sym} 250 -530 0 0 {name=v9}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 230 -590 0 0 {name=M13
W=2
L=0.5
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
C {devices/lab_pin.sym} 310 -480 2 0 {name=p11 sig_type=std_logic lab=SB}
C {devices/lab_pin.sym} 250 -650 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 250 -320 0 0 {name=p13 sig_type=std_logic lab=VSS}
