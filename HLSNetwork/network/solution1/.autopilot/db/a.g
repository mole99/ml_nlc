#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/leo/Nextcloud/Fachhochschule/Praktikum/ml_nlc/HLSNetwork(parameter)/network/solution1/.autopilot/db/a.g.bc ${1+"$@"}
