v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -840 290 -780 {
lab=avdd}
N 270 -450 270 -400 {
lab=avss}
N 270 -400 290 -400 {
lab=avss}
N 290 -420 290 -400 {
lab=avss}
N 290 -580 290 -560 {
lab=Vinp}
N 290 -500 290 -480 {
lab=#net1}
N 270 -530 270 -450 {
lab=avss}
N 270 -610 270 -530 {
lab=avss}
N 470 -500 520 -500 {
lab=vbg}
N 450 -460 520 -460 {
lab=avdd}
N 680 -530 750 -530 {
lab=RST}
N 470 -560 520 -560 {
lab=Vinp}
N 290 -780 290 -640 {
lab=avdd}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/iopin.sym} 110 -250 0 0 {name=p24 lab=avdd}
C {devices/opin.sym} 260 -200 0 0 {name=p25 lab=por}
C {devices/iopin.sym} 110 -220 0 0 {name=p26 lab=avss}
C {devices/iopin.sym} 110 -280 0 0 {name=p30 lab=dvdd}
C {devices/opin.sym} 260 -170 0 0 {name=p31 lab=porb}
C {devices/ipin.sym} 130 -160 0 0 {name=p21 lab=vbg}
C {devices/opin.sym} 260 -140 0 0 {name=p27 lab=porb_h[1:0]}
C {devices/iopin.sym} 110 -190 0 0 {name=p28 lab=dvss}
C {devices/lab_wire.sym} 520 -560 0 0 {name=p3 lab=Vinp}
C {devices/ngspice_probe.sym} 290 -570 0 0 {name=r14}
C {devices/ngspice_probe.sym} 290 -490 0 0 {name=r15}
C {devices/lab_wire.sym} 290 -560 0 1 {name=p11 lab=Vinp}
C {devices/lab_wire.sym} 680 -530 0 1 {name=p4 lab=RST}
C {comparator_final.sym} 580 -530 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 290 -450 0 0 {name=R1
L=250
model=res_xhigh_po_0p35
spiceprefix=X
 mult=10}
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
C {devices/lab_wire.sym} 950 -500 0 1 {name=p14 lab=porb_h[1:0]}
C {devices/lab_wire.sym} 950 -520 0 1 {name=p9 lab=porb}
C {devices/lab_wire.sym} 950 -540 0 1 {name=p1 lab=por}
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
C {devices/lab_wire.sym} 490 -500 0 0 {name=p2 lab=vbg}
