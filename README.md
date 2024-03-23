# sky130_ef_ip__bgrref_por
Chipalooza challenge - bandgap-referenced Power-on-Reset (PoR)

Analog IP: Low-power Power-on-Reset(PoR) in sky130 process

Requires the CACE system to run testbenches: https://github.com/efabless/cace

Schematic for this PoR are done in xschem and can be found in the xschem directory.

---
The CACE specification is in /cace/sky130_ef_ip__bgrref_por.txt. Testbench schematics are in the cace/ directory. Note the testbenches are editable in xschem, and netlists can be generated but netlists contain variables that must be substituted by CACE and cannot simulate prior to variable subsitution by CACE. 

To run cace in GUI mode:

	/path/to/cace_gui.py cace/sky130_ef_ip__bgrref_por.txt

CACE can also be run from the command line as:

	/path/to/cace.py cace/sky130_ef_ip__bgrref_por.txt \
	cace/sky130_ef_ip__bgreref_por.txt \
	  -source=schematic \
	  -param=<parameter_name> -summary"

---
Prerequisite design tools:

	xschem:  https://github.com/stefanschippers/xschem
	ngspice: git://git.code.sf.net/p/ngspice/ngspice
	magic:	 https://github.com/RTimothyEdwards/magic
	CACE:	 https://github.com/efabless/cace

