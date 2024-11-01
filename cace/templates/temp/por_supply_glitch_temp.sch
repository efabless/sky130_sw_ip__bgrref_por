v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 850 -1040 1650 -640 {flags=graph,unlocked

y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0018969128
x2=0.0018982108
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


hilight_wave=2
y1=-5e-05
color="4 5 12 9"
node="avdd
por
xdut.x2.td_lb
xdut.x2.td_sd"}
B 2 0 -1040 800 -640 {flags=graph,unlocked
y1=7.4e-07
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="18 8"
node="dvdd
por"
hilight_wave=0}
N 550 -260 580 -260 {
lab=por}
N 550 -240 580 -240 {
lab=porb}
N 550 -220 580 -220 {
lab=porb_h[1:0]}
N 735 -350 735 -330 { lab=#net1}
N 735 -440 735 -410 { lab=avdd}
N 735 -270 735 -250 { lab=GND}
N 105 -270 105 -250 { lab=GND}
N 105 -360 105 -330 { lab=dvdd}
N 105 -120 105 -100 { lab=GND}
N 105 -210 105 -180 { lab=vbg}
N 105 -440 105 -420 { lab=GND}
N 105 -530 105 -500 { lab=dvss}
N 255 -440 255 -420 { lab=GND}
N 255 -530 255 -500 { lab=avss}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Stephen Wu"}
C {devices/opin.sym} 580 -260 0 0 {name=p1 lab=por}
C {devices/opin.sym} 580 -240 0 0 {name=p2 lab=porb}
C {devices/lab_wire.sym} 390 -200 0 0 {name=p3 lab=vbg}
C {devices/lab_wire.sym} 390 -280 0 0 {name=p5 lab=avdd}
C {devices/lab_wire.sym} 390 -260 0 0 {name=p6 lab=dvdd}
C {devices/lab_wire.sym} 390 -240 0 0 {name=p4 lab=avss}
C {devices/lab_wire.sym} 390 -220 0 0 {name=p15 lab=dvss}
C {devices/opin.sym} 580 -220 0 0 {name=p11 lab=porb_h[1:0]}
C {devices/code.sym} 460 -560 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/../combined/sky130.lib.spice tt

.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include $::SKYWATER_STDCELLS/../../sky130_fd_sc_ls/spice/sky130_fd_sc_ls.spice

"
spice_ignore=false}
C {devices/code.sym} 570 -580 0 0 {name=ngspice 
only_toplevel=false 
spice_ignore=true
value="
*.include /home/efabless/analog_ip/cheetah_v3_analog/dependencies/sky130_sw_ip__bgrref_por/netlist/rcx/sky130_sw_ip__bgrref_por.spice
.options savecurrents
.param Vglitch = 3.3
.param Vglitch_dur = 200u
.control
tran 5u 10m
write sky130_sw_ip__bgrref_por_tb1.raw
.endc
"}
C {sky130_sw_ip__bgrref_por.sym} 470 -240 0 0 {name=XDUT}
C {launcher.sym} 1180 -570 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sky130_sw_ip__bgrref_por_tb1.raw tran"
}
C {devices/capa.sym} 740 -130 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 740 -160 0 1 {name=p12 lab=por}
C {devices/capa.sym} 640 -130 0 0 {name=C2
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 640 -160 0 1 {name=p19 lab=porb}
C {devices/gnd.sym} 640 -100 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 740 -100 0 0 {name=l7 lab=GND}
C {devices/capa.sym} 540 -130 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 540 -160 0 1 {name=p13 lab=porb_h[0]
}
C {devices/gnd.sym} 540 -100 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 450 -120 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 450 -150 0 1 {name=p14 lab=porb_h[1]
}
C {devices/gnd.sym} 450 -90 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 735 -250 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 735 -440 0 0 {name=p16 lab=avdd}
C {devices/vsource.sym} 735 -380 2 0 {name=Vavdd1 value="PULSE 0 \{Vglitch\} 1m 0.5m 0.5m \{Vglitch_dur\} 1"}
C {devices/vsource.sym} 735 -300 0 0 {name=Vavdd2 value="DC 3.3"}
C {devices/gnd.sym} 105 -250 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 105 -100 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 105 -470 0 1 {name=Vdvss1 value="DC 0"}
C {devices/gnd.sym} 105 -420 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 105 -530 0 0 {name=p8 lab=dvss}
C {devices/lab_wire.sym} 105 -360 0 0 {name=p18 lab=dvdd
}
C {devices/lab_wire.sym} 105 -210 0 0 {name=p20 lab=vbg}
C {devices/vsource.sym} 255 -470 0 1 {name=Vavss1 value="DC 0"}
C {devices/gnd.sym} 255 -420 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 255 -530 0 0 {name=p22 lab=avss}
C {devices/vsource.sym} 105 -300 0 0 {name=Vdvdd1 value="DC 1.8"}
C {devices/vsource.sym} 105 -150 0 0 {name=Vvbg1 value="DC 1.2"}
C {devices/code.sym} 690 -590 0 0 {name=narrow_tall_glitch
only_toplevel=false 
spice_ignore=false
value=".param Vglitch = 3.3
.param Vglitch_dur = 4m

.tran 0.1u 4m 

.control
let dvdd_half = 0.5*1.8
* glitch duration sweep loop
let stop_dur = 200u
let delta_dur = 5u
let dur_act = 10u
let stop_amp = 3.3
let delta_amp = 100m
let amp_act = 3.1
while dur_act le stop_dur
 alterparam Vglitch_dur = $&dur_act
 reset
 run
 meas tran por_val FIND v(por) AT = 4m
 if por_val > dvdd_half
   echo $&dur_act  > ~/POR.data
   let dur_act = dur_act + stop_dur
   * glitch amplitude sweep loop
   while amp_act le stop_amp
     alterparam Vglitch = $&amp_act
     reset
     run
     meas tran por_val FIND v(por) AT = 4m
     if por_val > dvdd_half
       echo $&amp_act  >> ~/POR.data
       let amp_act = amp_act + stop_amp
     else 
       let amp_act = amp_act + delta_amp
     end
   end
 else 
   let dur_act = dur_act + delta_dur
 end
end


*quit

write sky130_sw_ip__bgrref_por_tb1.raw
* *wrdata  ~/POR_tran_array.data v(avdd) v(por)
 .endc
"}
C {devices/code.sym} 950 -440 0 0 {name=wide_short_glitch
only_toplevel=false 
spice_ignore=true
value=".param Vglitch = 3.3
.param Vglitch_dur = 4m

.tran 2u 8m 

.control
let dvdd_half = 0.5*1.8
* glitch duration sweep loop
let stop_dur = 4m
let delta_dur = 5u
let dur_act = 400u
let stop_amp = 3.3
let delta_amp = 100m
let amp_act = 2.7
* glitch amplitude sweep loop
while amp_act le stop_amp
  alterparam Vglitch = $&amp_act
  reset
  run
  meas tran por_val FIND v(por) AT = 8m
  if por_val > dvdd_half
    echo $&amp_act  > ~/POR.data
    let amp_act = amp_act + stop_amp
    while dur_act le stop_dur
     alterparam Vglitch_dur = $&dur_act
     reset
     run
     meas tran por_val FIND v(por) AT = 8m
     if por_val > dvdd_half
       echo $&dur_act  >> ~/POR.data
       let dur_act = dur_act + stop_dur
     else 
       let dur_act = dur_act + delta_dur
     end
    end
  else 
    let amp_act = amp_act + delta_amp
  end
end



*quit

write sky130_sw_ip__bgrref_por_tb1.raw
* *wrdata  ~/POR_tran_array.data v(avdd) v(por)
 .endc
"}
