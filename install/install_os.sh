#!/bin/bash
echo NOTE: copying main libraries takes a few minutes

set -e
export XC_IP=${XC_IP:=ssp.local}
export XC_ROOT=${XC_ROOT:="`realpath $BASEDIR/..`"}
export XC_USER=${XC_USER:=linaro}
export XC_SSH=${XC_USER}@${XC_IP}


cd "$XC_ROOT"

# rsync -rzLR --safe-links \
#       $XC_SSH:/usr/lib/arm-linux-gnueabihf \
#       $XC_SSH:/usr/lib/gcc/arm-linux-gnueabihf \
#       $XC_SSH:/usr/include \
#       $XC_SSH:/lib/arm-linux-gnueabihf \
#       sysroot/ 

unzip sysroot.zip

