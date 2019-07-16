#!/bin/bash 
declare -a LSST=("lsst" "lsst90" "lsst_mono" "lsst_mono90")
declare -a NUMS=(3 17 21)

pre=" https://github.com/bpJedisim/jout_z1.5_000_099/blob/master/"
lst="lsst/lsst_z1.5_003.fits"

for l in "${LSST[@]}"
do
    for num in "${NUMS[@]}"
    do 
        n=$(printf "%03d" $num)
        name="${pre}""${l}/""${l}_z1.5_""${n}".fits
        # Note: Do not use "$name" for wget, it gives error then.
        # -nc is no clobber
        wget -nc ${name}
    done
done
