#!/usr/bin/env sh

######################################################################
# @author      : poudel (poudel@$HOSTNAME)
# @file        : copy_from_simplici
# @created     : Thursday Jun 13, 2019 15:24:04 EDT
#
# @description : Copy files from simplici 
######################################################################
z=1.5
n=001


lsst='lsst'
scp -r poudel@simplici.phy.ohio.edu:~/Rsh_out/z$z/wcs_star_jout_z"$z"_2019_05_15_17_00_ngals_10k/"$lsst"/dmstack_output/dm_out_z"$z"_"$lsst"/txt_"$lsst"_z"$z"/src_"$lsst"_z"$z"_"$n".csv .

lsst='lsst90'
scp -r poudel@simplici.phy.ohio.edu:~/Rsh_out/z$z/wcs_star_jout_z"$z"_2019_05_15_17_00_ngals_10k/"$lsst"/dmstack_output/dm_out_z"$z"_"$lsst"/txt_"$lsst"_z"$z"/src_"$lsst"_z"$z"_"$n".csv .

lsst='lsst_mono'
scp -r poudel@simplici.phy.ohio.edu:~/Rsh_out/z$z/wcs_star_jout_z"$z"_2019_05_15_17_00_ngals_10k/"$lsst"/dmstack_output/dm_out_z"$z"_"$lsst"/txt_"$lsst"_z"$z"/src_"$lsst"_z"$z"_"$n".csv .

lsst='lsst_mono90'
scp -r poudel@simplici.phy.ohio.edu:~/Rsh_out/z$z/wcs_star_jout_z"$z"_2019_05_15_17_00_ngals_10k/"$lsst"/dmstack_output/dm_out_z"$z"_"$lsst"/txt_"$lsst"_z"$z"/src_"$lsst"_z"$z"_"$n".csv .

