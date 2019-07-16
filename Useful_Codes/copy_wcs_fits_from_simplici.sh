#!/usr/bin/env sh

######################################################################
# @author      : poudel (poudel@$HOSTNAME)
# @file        : copy_from_simplici
# @created     : Thursday Jun 13, 2019 15:24:04 EDT
#
# @description : Copy given list of fitsfiles from simplici 
######################################################################
z=1.5
declare -a LSSTS=("lsst" "lsst90" "lsst_mono" "lsst_mono90")
declare -a NUMS=(3 17 21)

remote="poudel@simplici.phy.ohio.edu"
path="~/Rsh_out/z$z/wcs_star_jout_z"$z""
date="2019_05_15_17_00_ngals_10k"

# scp -r poudel@simplici.phy.ohio.edu:~/Rsh_out/z1.5/wcs_star_jout_z1.5_2019_05_15_17_00_ngals_10k/lsst/lsst_z1.5_001.fits .

#lsst='lsst'
#n=001
#scp -r "$remote":"$path"_"$date"/"$lsst"/"$lsst"_z"$z"_"$n".fits .


for lsst in "${LSSTS[@]}"
do 
    for num in "${NUMS[@]}"
    do
        n=$(printf "%03d" $num)
    
        scp -r "$remote":"$path"_"$date"/"$lsst"/"$lsst"_z"$z"_"$n".fits .
    done
done
