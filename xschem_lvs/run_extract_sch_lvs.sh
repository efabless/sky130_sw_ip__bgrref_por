#! /bin/bash

xschem -n -s -r -x -q --tcl "set lvs_netlist 1" --rcfile $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc -o ../netlist/schematic -N sky130_sw_ip__bgrref_por_lvs.spice sky130_sw_ip__bgrref_por_lvs.sch
