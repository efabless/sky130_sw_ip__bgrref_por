v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N 750 -590 750 -560 {lab=VSS}
N 750 -760 750 -730 {lab=VCC}
N 700 -760 720 -760 { lab=A0}
N 700 -700 700 -560 { lab=A0}
N 700 -560 720 -560 { lab=A0}
N 780 -560 800 -560 { lab=Z}
N 800 -700 800 -560 { lab=Z}
N 780 -760 800 -760 { lab=Z}
N 640 -630 700 -630 { lab=A0}
N 800 -630 860 -630 { lab=Z}
N 750 -840 750 -800 { lab=S}
N 710 -840 750 -840 { lab=S}
N 750 -520 750 -480 { lab=SB}
N 710 -480 750 -480 { lab=SB}
N 700 -760 700 -700 {
lab=A0}
N 800 -760 800 -700 {
lab=Z}
N 790 -230 790 -200 {lab=#net1}
N 790 -400 790 -370 {lab=VCC}
N 740 -400 760 -400 { lab=A1}
N 740 -340 740 -200 { lab=A1}
N 740 -200 760 -200 { lab=A1}
N 820 -200 840 -200 { lab=Z}
N 840 -340 840 -200 { lab=Z}
N 820 -400 840 -400 { lab=Z}
N 680 -270 740 -270 { lab=A1}
N 840 -270 900 -270 { lab=Z}
N 790 -480 790 -440 { lab=SB}
N 750 -480 790 -480 { lab=SB}
N 790 -160 790 -120 { lab=S}
N 750 -120 790 -120 { lab=S}
N 740 -400 740 -340 {
lab=A1}
N 840 -400 840 -340 {
lab=Z}
N 860 -630 900 -630 {
lab=Z}
N 900 -630 900 -270 {
lab=Z}
N 900 -450 920 -450 {
lab=Z}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stephen Wu"}
C {devices/ipin.sym} 200 -260 0 0 {name=p2 lab=VCC}
C {devices/ipin.sym} 200 -230 0 0 {name=p4 lab=VSS}
C {devices/ipin.sym} 640 -630 0 0 {name=p6 lab=A0}
C {devices/ipin.sym} 680 -270 0 0 {name=p7 lab=A1
}
C {devices/iopin.sym} 920 -450 0 0 {name=p5 lab=Z}
C {devices/ipin.sym} 200 -190 0 0 {name=p1 lab=S}
C {devices/lab_pin.sym} 180 -480 0 0 {name=p3 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 710 -840 0 0 {name=p8 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 750 -120 0 0 {name=p9 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 710 -480 0 0 {name=p10 sig_type=std_logic lab=SB}
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 750 -780 3 1 {name=M3
L=0.5
W=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 750 -540 1 1 {name=M4
L=0.5
W=1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 790 -420 3 1 {name=M1
L=0.5
W=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 790 -180 1 1 {name=M2
L=0.5
W=1
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
C {devices/lab_pin.sym} 750 -730 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 750 -590 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 -370 0 0 {name=p16 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 790 -230 0 0 {name=p17 sig_type=std_logic lab=VSS}
