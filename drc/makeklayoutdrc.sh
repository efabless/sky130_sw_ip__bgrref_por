#!/bin/bash
# usage: add the reponame, project name and cellname to the script then: 
# usage: makeklayoutdrc <reponame> <magname> <topcellname>

REPO_NAME=sky130_sw_ip__bgrref_por
PROJECT=sky130_sw_ip__bgrref_por
TOP_CELL=sky130_sw_ip__bgrref_por

echo "Current working directory:"
echo $PWD

mkdir reports
chmod 777 reports
mkdir reports/$TOP_CELL
chmod 777 reports/$TOP_CELL
touch ../drc/reports/$TOP_CELL/klayout_feol_check.xml
touch ../drc/reports/$TOP_CELL/klayout_beol_check.xml
touch ../drc/reports/$TOP_CELL/klayout_offgrid_check.xml

mkdir ../gds
chmod 777 ../gds

#cp ../../sky130_be_ip__lsxo/drc/run_drc_k.sh ./
#cp ../../sky130_be_ip__lsxo/drc/run_drc_klayout_script ./




