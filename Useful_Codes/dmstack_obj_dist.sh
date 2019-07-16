# command: bash dmstack_obj_dist.sh 5
#                                   5 is the output number 5 for lsst/90/mono/90.
#
# Needs: 1. Dmstack output csv files in given folder.
#        2. python script remove_nans_dmstack.py
#
# Outputs: 1. .csv files are copied from dmstack outputs.
#          2. .txt are NaNs removed and comma to tab converted file from .csv.
#          3. pdf files are the final outputs.
#          4. There is also combined pdf of all the output pdf files.
#

# copy .csv files 
N=$(printf "%03d" $1)

cp ~/Research/a05_shear_imcat/a01_shear_analysis_dmstack/wcs_star_100_100000_jout_z0.7_0_19/lsst/dmstack_output/dm_out_z0.7_lsst/txt_lsst_z0.7/src_lsst_z0.7_$N.csv l.csv
cp ~/Research/a05_shear_imcat/a01_shear_analysis_dmstack/wcs_star_100_100000_jout_z0.7_0_19/lsst_mono/dmstack_output/dm_out_z0.7_lsst_mono/txt_lsst_mono_z0.7/src_lsst_mono_z0.7_$N.csv m.csv

cp ~/Research/a05_shear_imcat/a01_shear_analysis_dmstack/wcs_star_100_100000_jout_z0.7_0_19/lsst90/dmstack_output/dm_out_z0.7_lsst90/txt_lsst90_z0.7/src_lsst90_z0.7_$N.csv l9.csv
cp ~/Research/a05_shear_imcat/a01_shear_analysis_dmstack/wcs_star_100_100000_jout_z0.7_0_19/lsst_mono90/dmstack_output/dm_out_z0.7_lsst_mono90/txt_lsst_mono90_z0.7/src_lsst_mono90_z0.7_$N.csv m9.csv

# convert .csv to .txt (remove nans and change delimiter comma to tab)
for i in *.csv; do python remove_nans_dmstack.py $i; done;

# create .cat files from .txt files
cat l.txt | lc -C -N '1 2 x' -N '1 2 e' > l.cat
cat l9.txt | lc -C -N '1 2 x' -N '1 2 e' > l9.cat

cat m.txt | lc -C -N '1 2 x' -N '1 2 e' > m.cat
cat m9.txt | lc -C -N '1 2 x' -N '1 2 e' > m9.cat

# create merged catalog
mergecats 5 l.cat l9.cat m.cat m9.cat > merge.cat

# plotcat
lc 'x = %x[0][0] %x[0][1] 2 vector' 'dx = %x[1][0] %x[0][0] - %x[1][1] %x[0][1] - 2 vector' < merge.cat | plotcat x -V 'd = %dx 100 vscale' -d "file_$N.ps/ps"
ps2pdf file_$N.ps file_$N.pdf
rm file_$N.ps

# combine all pdf
if [ -f "file_019.pdf" ]; then
    convert -density 150 *.pdf output.pdf
    echo "All 20 output files are combined in output.pdf"
fi

# print output file name
echo "Output file created: file_$N.pdf"
