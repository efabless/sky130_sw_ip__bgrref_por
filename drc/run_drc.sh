#! /bin/bash
project=sky130_sw_ip__bgrref_por
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/sky130A.magicrc << EOF
load ../mag/${project}
select top cell
expand
drc style drc(full)
drc on
drc check
drc catchup
drc count total
set tk_version 8.5
source \${CAD_ROOT}/magic/tcl/drcmgr.tcl
#feedback save drc.log
magic::drc_save_report ${project}  drc.log
EOF
exit 0

