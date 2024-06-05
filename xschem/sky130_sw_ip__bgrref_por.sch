v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -840 290 -780 {
lab=avdd}
N 290 -750 320 -750 {
lab=avss}
N 250 -800 290 -800 {
lab=avdd}
N 250 -800 250 -750 {
lab=avdd}
N 270 -450 270 -400 {
lab=avss}
N 270 -400 290 -400 {
lab=avss}
N 290 -420 290 -400 {
lab=avss}
N 290 -660 290 -640 {
lab=#net1}
N 290 -580 290 -560 {
lab=Vinp}
N 290 -500 290 -480 {
lab=Vinn}
N 270 -530 270 -450 {
lab=avss}
N 270 -610 270 -530 {
lab=avss}
N 440 -560 520 -560 {
lab=Vinp}
N 470 -500 520 -500 {
lab=Vinn}
N 450 -460 520 -460 {
lab=avdd}
N 490 -840 490 -800 {
lab=vindiff}
N 680 -530 750 -530 {
lab=Vout}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/iopin.sym} 110 -250 0 0 {name=p24 lab=avdd}
C {devices/opin.sym} 260 -200 0 0 {name=p25 lab=por}
C {devices/iopin.sym} 110 -220 0 0 {name=p26 lab=avss}
C {devices/iopin.sym} 110 -280 0 0 {name=p30 lab=dvdd}
C {devices/opin.sym} 260 -170 0 0 {name=p31 lab=porb}
C {devices/ipin.sym} 130 -160 0 0 {name=p21 lab=vbg}
C {devices/opin.sym} 260 -140 0 0 {name=p27 lab=porb_h}
C {devices/iopin.sym} 110 -190 0 0 {name=p28 lab=dvss}
C {devices/lab_wire.sym} 520 -500 0 0 {name=p2 lab=Vinn}
C {devices/lab_wire.sym} 520 -560 0 0 {name=p3 lab=Vinp}
C {devices/ngspice_get_value.sym} 360 -780 0 1 {name=r2 node=v(@m.xm1.msky130_fd_pr__nfet_01v8[w])
descr="W="}
C {devices/ngspice_get_value.sym} 360 -830 0 1 {name=r3 node=@m.xm1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {devices/ammeter.sym} 290 -690 0 0 {name=Vr1}
C {devices/ngspice_probe.sym} 290 -650 0 0 {name=r11}
C {devices/ngspice_probe.sym} 290 -570 0 0 {name=r14}
C {devices/ngspice_probe.sym} 290 -490 0 0 {name=r15}
C {devices/lab_wire.sym} 290 -560 0 1 {name=p11 lab=Vinp}
C {devices/lab_wire.sym} 290 -480 0 1 {name=p12 lab=Vinn}
C {devices/lab_wire.sym} 680 -530 0 1 {name=p4 lab=RST}
C {devices/vcvs.sym} 490 -770 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} 450 -790 0 0 {name=p6 lab=Vinp}
C {devices/lab_wire.sym} 450 -750 0 0 {name=p7 lab=Vinn}
C {devices/gnd.sym} 490 -740 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 490 -840 0 1 {name=p8 lab=vindiff}
C {comparator_final.sym} 580 -530 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 290 -450 0 0 {name=R1
L=250
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 290 -530 0 0 {name=R10
L=9
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 290 -610 0 0 {name=R12
L=150
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {delayPulse_final.sym} 810 -500 0 0 {name=x2}
C {devices/lab_wire.sym} 950 -500 0 1 {name=p14 lab=porb_h}
C {devices/lab_wire.sym} 950 -520 0 1 {name=p9 lab=porb}
C {devices/lab_wire.sym} 950 -540 0 1 {name=p1 lab=por}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 270 -750 0 0 {name=M2
L=0.9
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {devices/lab_wire.sym} 500 -460 0 0 {name=p5 lab=avdd}
C {devices/lab_wire.sym} 520 -440 0 0 {name=p15 lab=dvdd
}
C {devices/lab_wire.sym} 750 -390 0 0 {name=p20 lab=avdd}
C {devices/lab_wire.sym} 750 -410 0 0 {name=p10 lab=vbg}
C {devices/lab_wire.sym} 750 -450 0 0 {name=p13 lab=dvdd
}
C {devices/lab_wire.sym} 290 -840 0 0 {name=p16 lab=avdd}
C {devices/lab_wire.sym} 520 -420 0 0 {name=p17 lab=avss}
C {devices/lab_wire.sym} 750 -430 0 0 {name=p18 lab=dvss}
C {devices/lab_wire.sym} 280 -400 0 0 {name=p19 lab=avss}
C {devices/lab_wire.sym} 320 -750 0 1 {name=p22 lab=avss}
