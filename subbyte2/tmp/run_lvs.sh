#!/bin/sh
source /home/shanmugam/OpenRAM/miniconda/bin/activate
export OPENRAM_TECH="/home/shanmugam/OpenRAM/technology:/home/shanmugam/.local/lib/python3.10/site-packages/openram/technology"
echo "$(date): Starting LVS using Netgen /home/shanmugam/OpenRAM/miniconda/bin/netgen"
/home/shanmugam/OpenRAM/miniconda/bin/netgen -noconsole << EOF
lvs {subbyte2.spice subbyte2} {subbyte2.sp subbyte2} setup.tcl subbyte2.lvs.report -full -json
quit
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) LVS using Netgen /home/shanmugam/OpenRAM/miniconda/bin/netgen"
exit $magic_retcode
conda deactivate
