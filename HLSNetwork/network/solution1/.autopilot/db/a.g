#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/leo/Nextcloud/Fachhochschule/Praktikum/ml_nlc/HLSNetwork/network/solution1/.autopilot/db/a.g.bc ${1+"$@"}
