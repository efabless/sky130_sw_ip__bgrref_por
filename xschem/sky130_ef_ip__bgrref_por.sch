v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {VA-VB=62.8mV} 70 -590 0 0 0.4 0.4 {}
N 280 -870 280 -810 {
lab=AVDD}
N 280 -780 310 -780 {
lab=AVSS}
N 240 -830 280 -830 {
lab=AVDD}
N 240 -830 240 -780 {
lab=AVDD}
N 260 -480 260 -430 {
lab=AVSS}
N 260 -430 280 -430 {
lab=AVSS}
N 280 -450 280 -430 {
lab=AVSS}
N 280 -690 280 -670 {
lab=#net1}
N 280 -610 280 -590 {
lab=Vinp}
N 280 -530 280 -510 {
lab=Vinn}
N 260 -560 260 -480 {
lab=AVSS}
N 260 -640 260 -560 {
lab=AVSS}
N 430 -590 510 -590 {
lab=Vinp}
N 280 -590 430 -590 {
lab=Vinp}
N 460 -530 510 -530 {
lab=Vinn}
N 280 -530 460 -530 {
lab=Vinn}
N 510 -810 510 -770 {
lab=vindiff}
N 620 -240 620 -230 {
lab=AVSS}
N 670 -560 790 -560 {
lab=RST}
N 510 -410 510 -290 {
lab=Sel}
N 510 -290 560 -290 {
lab=Sel}
N 680 -290 720 -290 {
lab=RST}
N 720 -560 720 -290 {
lab=RST}
N 930 -480 930 -460 {
lab=Iref}
C {devices/lab_wire.sym} 510 -430 0 0 {name=p1 lab=Iref}
C {devices/lab_wire.sym} 510 -530 0 0 {name=p2 lab=Vinn}
C {devices/lab_wire.sym} 510 -590 0 0 {name=p3 lab=Vinp}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/ngspice_get_value.sym} 350 -810 0 1 {name=r2 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[w])
descr="W="}
C {devices/ngspice_get_value.sym} 350 -860 0 1 {name=r3 node=@m.xm1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {sky130_fd_pr/nfet_05v0_nvt_nf.sym} 260 -780 0 0 {name=M1
W=1
L=0.9
nf=2
mult=2
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {devices/ammeter.sym} 280 -720 0 0 {name=Vr1}
C {devices/ngspice_probe.sym} 280 -680 0 0 {name=r11}
C {devices/ngspice_probe.sym} 280 -600 0 0 {name=r14}
C {devices/ngspice_probe.sym} 280 -520 0 0 {name=r15}
C {devices/lab_wire.sym} 280 -590 0 1 {name=p11 lab=Vinp}
C {devices/lab_wire.sym} 280 -510 0 1 {name=p12 lab=Vinn}
C {devices/lab_wire.sym} 670 -560 0 1 {name=p4 lab=RST}
C {devices/vcvs.sym} 510 -740 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} 470 -760 0 0 {name=p6 lab=Vinp}
C {devices/lab_wire.sym} 470 -720 0 0 {name=p7 lab=Vinn}
C {devices/gnd.sym} 510 -710 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 510 -810 0 1 {name=p8 lab=vindiff}
C {comparator.sym} 570 -560 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 280 -480 0 0 {name=R1
L=235
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 280 -560 0 0 {name=R10
L=10
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 280 -640 0 0 {name=R12
L=120
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {levelShifter.sym} 620 -290 0 1 {name=x3}
C {devices/lab_wire.sym} 560 -290 0 0 {name=p22 lab=Sel}
C {delayPulse.sym} 850 -530 0 0 {name=x2}
C {devices/lab_wire.sym} 790 -480 0 0 {name=p15 lab=DVDD}
C {devices/lab_wire.sym} 790 -460 0 0 {name=p16 lab=DVSS}
C {devices/lab_wire.sym} 790 -440 0 0 {name=p17 lab=Vbg}
C {devices/lab_wire.sym} 510 -450 0 0 {name=p10 lab=AVSS}
C {devices/lab_wire.sym} 510 -490 0 0 {name=p13 lab=AVDD}
C {devices/lab_wire.sym} 280 -870 0 0 {name=p9 lab=AVDD}
C {devices/lab_wire.sym} 790 -420 0 0 {name=p20 lab=AVDD}
C {devices/iopin.sym} 110 -250 0 0 {name=p24 lab=AVDD}
C {devices/opin.sym} 260 -200 0 0 {name=p25 lab=por}
C {devices/iopin.sym} 110 -220 0 0 {name=p26 lab=AVSS}
C {devices/iopin.sym} 110 -280 0 0 {name=p30 lab=DVDD}
C {devices/lab_wire.sym} 510 -470 0 0 {name=p5 lab=DVDD}
C {devices/opin.sym} 260 -170 0 0 {name=p31 lab=porb}
C {devices/lab_wire.sym} 640 -340 0 1 {name=p23 lab=DVDD}
C {devices/lab_wire.sym} 600 -340 0 0 {name=p34 lab=AVDD}
C {devices/ipin.sym} 130 -160 0 0 {name=p21 lab=Vbg}
C {devices/lab_wire.sym} 990 -570 0 1 {name=p14 lab=por}
C {devices/lab_wire.sym} 990 -550 0 1 {name=p35 lab=porb}
C {devices/lab_wire.sym} 990 -530 0 1 {name=p36 lab=porb_h}
C {devices/opin.sym} 260 -140 0 0 {name=p27 lab=porb_h}
C {devices/iopin.sym} 110 -190 0 0 {name=p28 lab=DVSS}
C {devices/lab_wire.sym} 620 -230 0 0 {name=p29 lab=AVSS}
C {devices/lab_wire.sym} 260 -430 0 0 {name=p32 lab=AVSS}
C {devices/lab_wire.sym} 310 -780 0 1 {name=p18 lab=AVSS}
C {devices/lab_wire.sym} 930 -470 0 0 {name=p33 lab=Iref}
