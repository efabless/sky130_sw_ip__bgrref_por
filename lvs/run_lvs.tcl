# Tcl script to run LVS on the project

set project sky130_sw_ip__bgrref_por

if {[catch {set PDK_ROOT $::env(PDK_ROOT)}]} {set PDK_ROOT /usr/local/share/pdk}
if {[catch {set PDK $::env(PDK)}]} {set PDK sky130A}

set pdklib ${PDK_ROOT}/${PDK}
set techlibs ${pdklib}/libs.tech
set reflibs ${pdklib}/libs.ref

set setupfile ${techlibs}/netgen/sky130A_setup.tcl
set hvlib ${reflibs}/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
# set hdlib ${reflibs}/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
set lslib ${reflibs}/sky130_fd_sc_ls/spice/sky130_fd_sc_ls.spice

set circuit1 [readnet spice ../netlist/layout/${project}.spice]
set circuit2 [readnet spice $hvlib]
# set circuit2 [readnet spice $hdlib]
readnet spice $lslib $circuit2
readnet spice ../netlist/schematic/${project}.spice $circuit2
lvs "$circuit1 $project" "$circuit2 ${project}" \
	$setupfile ${project}_comp.out
